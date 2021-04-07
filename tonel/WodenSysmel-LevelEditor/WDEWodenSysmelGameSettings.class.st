Class {
	#name : #WDEWodenSysmelGameSettings,
	#superclass : #WDEWodenGameSettings,
	#instVars : [
		'levelPlayer'
	],
	#category : #'WodenSysmel-LevelEditor'
}

{ #category : #palettes }
WDEWodenSysmelGameSettings >> defaultAssetSearchPaths [
	^ {
		WDCWodenSysmelAssets location / 'samples' / 'resources' / 'SampleMaterials'
	} 
]

{ #category : #'as yet unclassified' }
WDEWodenSysmelGameSettings >> fetchEntityDescriptions [
	| definitionString jsonData workingDirectory commandFormat command |
	
	workingDirectory := self levelPlayer parent asAbsolute canonicalize fullName.
	
	commandFormat := 'cd "{1}" && "{2}" -dump-entity-definitions'.
	command := commandFormat format: {
		workingDirectory.
		self levelPlayer asAbsolute canonicalize fullName	
	}.

	definitionString := LibC resultOfCommand: command.
	jsonData := NeoJSONReader fromString: definitionString.
	^ WDEEntityDescriptions loadFromJson: jsonData
	
]

{ #category : #accessing }
WDEWodenSysmelGameSettings >> levelPlayer [
	^ levelPlayer ifNil: [ levelPlayer := WDCSysmelSampleBuildScripts buildConsoleGameSystemExample ]
]

{ #category : #accessing }
WDEWodenSysmelGameSettings >> name [
	^ 'Woden Sysmel'
]

{ #category : #'as yet unclassified' }
WDEWodenSysmelGameSettings >> playLevelInSession: levelSession [
	| destFile workingDirectory command commandFormat |
	destFile := FileSystem workingDirectory / 'wde-play-test-level.tmp.wtlevel'.
	levelSession saveTemporaryJSONEncodedTo: destFile.
	workingDirectory := self levelPlayer parent asAbsolute canonicalize fullName.
	
	commandFormat := 'cd "{1}" && "{2}" "{3}" &'.
	Smalltalk platform isLinux ifTrue: [
		commandFormat := 'unset LD_LIBRARY_PATH &&' , commandFormat
	].
	Smalltalk platform isWindows ifTrue: [
		commandFormat := 'cd "{1}" && start "" "{2}" "{3}"'.
	].

	command := commandFormat format: { 
		workingDirectory.
		self levelPlayer asAbsolute canonicalize fullName.
		destFile asAbsolute canonicalize fullName
	}.
	LibC system: command
]
