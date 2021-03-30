Class {
	#name : #WDCSysmelSampleBuildScripts,
	#superclass : #MbndSysmelSampleBuildScripts,
	#category : #'WodenSysmel-BuildScripts'
}

{ #category : #'native samples' }
WDCSysmelSampleBuildScripts class >> buildGameSystemExample01SampleLevel [
	<example>
	| result |
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			result := packageScript guiProgramWithSource: 'samples/game/gameSystemExample01SampleLevel.sysmel' with: [ :prog |
				prog wodenAssets: WDCWodenSysmelAssets location / 'samples' / 'resources' / 'SampleMaterials'
			]
		].
	^ result asFileReference asAbsolute canonicalize
]

{ #category : #'native samples' }
WDCSysmelSampleBuildScripts class >> buildSceneExample01Cube [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiProgramWithSource: 'samples/scene/sceneExample01Cube.sysmel'
		]
]

{ #category : #'native samples' }
WDCSysmelSampleBuildScripts class >> buildSceneExample02TexturedCube [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiProgramWithSource: 'samples/scene/sceneExample02TexturedCube.sysmel'
		]
]

{ #category : #'native samples' }
WDCSysmelSampleBuildScripts class >> buildSceneExample03Floor [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiProgramWithSource: 'samples/scene/sceneExample03Floor.sysmel' with: [ :prog |
					prog wodenAssets: WDCWodenSysmelAssets location / 'samples' / 'resources' / 'SampleMaterials'
				]
		]
]

{ #category : #'native samples' }
WDCSysmelSampleBuildScripts class >> buildSceneExample04Pool [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript
				guiProgramWithSource: 'samples/scene/sceneExample04Pool.sysmel' with: [ :prog |
					prog wodenAssets: WDCWodenSysmelAssets location / 'samples' / 'resources' / 'SampleMaterials'
				]
		]
]

{ #category : #'native samples' }
WDCSysmelSampleBuildScripts class >> buildSceneExample05Models [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiProgramWithSource: 'samples/scene/sceneExample05Models.sysmel' with: [ :prog |
				prog
					wodenAssets: WDCWodenSysmelAssets location / 'samples' / 'resources' / 'SampleModels';
					wodenAssets: WDCWodenSysmelAssets location / 'samples' / 'resources' / 'gltfSampleModels' / 'DamagedHelmet'
			]
		]
]

{ #category : #'native samples' }
WDCSysmelSampleBuildScripts class >> buildSceneExample06Sponza [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiProgramWithSource: 'samples/scene/sceneExample06Sponza.sysmel' with: [ :prog |
				prog wodenAssets: WDCWodenSysmelAssets location / 'samples' / 'resources' / 'gltfSampleModels' / 'Sponza'
			]
		]
]

{ #category : #'native samples' }
WDCSysmelSampleBuildScripts class >> buildSceneExample07SkinnedModel [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiProgramWithSource: 'samples/scene/sceneExample07SkinnedModel.sysmel' with: [ :prog |
				prog
					wodenAssets: WDCWodenSysmelAssets location / 'samples' / 'resources' / 'gltfSampleModels' / 'Fox'
			]
		]
]

{ #category : #examples }
WDCSysmelSampleBuildScripts class >> modelTool [
	<example>
	| prog |
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			prog := packageScript programWithSource: 'tools/wodenModelTool.sysmel'
		].
	^ prog asFileReference asAbsolute canonicalize
]

{ #category : #'see class side' }
WDCSysmelSampleBuildScripts >> seeClassSide [
]
