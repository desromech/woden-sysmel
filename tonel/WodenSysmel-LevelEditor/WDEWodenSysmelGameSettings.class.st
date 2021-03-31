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
	| definitionString jsonData |
	definitionString := LibC resultOfCommand: self levelPlayer asAbsolute canonicalize fullName , ' -dump-entity-definitions'.
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
	
	commandFormat := 'cd "{1}" && "{2}" "{3}"'.
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
