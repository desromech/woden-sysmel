Extension { #name : #WBTModuleTarget }

{ #category : #'*WodenSysmel-BuildScripts' }
WBTModuleTarget >> addResource: rawAbsolutePath withRelativePath: rawRelativePath convertedWithWodenTextureTool: textureTool [
	| targetPath sourceFileTarget convertedTarget flags basename |
	sourceFileTarget := self buildEnvironment makeFileTargetFor:rawAbsolutePath asFileReference asAbsolute canonicalize.
	targetPath := self buildEnvironment validBuildResourcesDirectory resolve: (rawRelativePath asFileReference withExtension: 'stx').
	flags := #().
	basename := rawAbsolutePath asFileReference basename.
	(basename includesSubstring: 'norm' caseSensitive: false) ifTrue: [
		flags := flags , #('-normal')
	] ifFalse: [
		(basename includesSubstring: 'rma' caseSensitive: false) ifTrue: [ 
			flags := flags , #('-non-color')
		].
	].
	
	convertedTarget := self buildEnvironment
		generateTargetFile: targetPath inputFiles: {sourceFileTarget}
		withCommand: '$(TEXTURE_TOOL) $(WODEN_TEXTURE_TARGET_PROFILE) $(WODEN_TEXTURE_CONVERSION_FLAGS) $(FLAGS) -i $(WBT_INPUT_FILES) -o $(WBT_OUTPUT_FILE)' variables: {
		#TEXTURE_TOOL . textureTool.
		#FLAGS . flags
	}.
	package addElement: convertedTarget.
	
	self addResource: convertedTarget
]

{ #category : #'*WodenSysmel-BuildScripts' }
WBTModuleTarget >> addWodenAssetsDirectory: rawResourcesDirectory [
	| resourcesDirectory textureTool |
	resourcesDirectory := rawResourcesDirectory asFileReference asAbsolute canonicalize.
	textureTool := MbndSysmelSampleBuildScripts textureTool.
	resourcesDirectory allChildren do: [ :each |
		each isFile ifTrue: [
			| resourceRelativeTarget extension |
			resourceRelativeTarget := 'woden-assets' asFileReference resolve: (each relativeTo: resourcesDirectory).
			extension := each extension asLowercase.
			(#(dds png jpg jpeg bmp) includes: extension) ifTrue: [ 
				self addResource: each withRelativePath: resourceRelativeTarget convertedWithWodenTextureTool: textureTool.
			] ifFalse: [ 
				self addResource: each withRelativePath: resourceRelativeTarget
			].
		]
	].
]
