Extension { #name : #WBTModuleTarget }

{ #category : #'*WodenSysmel-BuildScripts' }
WBTModuleTarget >> addResource: rawAbsolutePath withRelativePath: rawRelativePath convertedWithWodenModelTool: modelTool [
	| targetPath sourceFileTarget convertedTarget flags |
	sourceFileTarget := self buildEnvironment makeFileTargetFor:rawAbsolutePath asFileReference asAbsolute canonicalize.
	targetPath := self buildEnvironment validBuildResourcesDirectory resolve: (rawRelativePath asFileReference withExtension: 'wmdl').
	flags := #().

	convertedTarget := self buildEnvironment
		generateTargetFile: targetPath inputFiles: {sourceFileTarget}
		withCommand: '$(MODEL_TOOL) $(WODEN_TEXTURE_TARGET_PROFILE) -embed-textures $(WODEN_TEXTURE_CONVERSION_FLAGS) $(FLAGS) -i $(WBT_INPUT_FILES) -o $(WBT_OUTPUT_FILE)' variables: {
		#MODEL_TOOL . modelTool.
		#FLAGS . flags
	}.
	package addElement: convertedTarget.
	
	self addResource: convertedTarget
]

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
	| resourcesDirectory textureTool modelTool normalAssets textureAssets modelAssets |
	resourcesDirectory := rawResourcesDirectory asFileReference asAbsolute canonicalize.
	textureTool := MbndSysmelSampleBuildScripts textureTool.
	modelTool := WDCSysmelSampleBuildScripts modelTool.
	
	normalAssets := OrderedCollection new.
	textureAssets := OrderedCollection new.
	modelAssets := OrderedCollection new.
	resourcesDirectory allChildren do: [ :each |
		each isFile ifTrue: [
			| relativeFileReference extension |
			relativeFileReference := 'woden-assets' asFileReference resolve: (each relativeTo: resourcesDirectory).
			extension := each extension asLowercase.
			(relativeFileReference fullName includesSubstring: 'models') ifTrue: [ 
				(#(obj gltf glb) includes: extension) ifTrue: [ 
					modelAssets add: {each . relativeFileReference}
				]
			] ifFalse: [
				(#(dds png jpg jpeg bmp) includes: extension) ifTrue: [ 
					textureAssets add: {each . relativeFileReference}
				] ifFalse: [ 
					normalAssets add: {each . relativeFileReference}
				].
			].
		].
	].

	modelAssets do: [ :asset |
		self addResource: asset first withRelativePath: asset second convertedWithWodenModelTool: modelTool.
	].
	
	textureAssets do: [ :asset |
		self addResource: asset first withRelativePath: asset second convertedWithWodenTextureTool: textureTool.
	].

	normalAssets do: [ :asset |
		self addResource: asset first withRelativePath: asset second
	].

]
