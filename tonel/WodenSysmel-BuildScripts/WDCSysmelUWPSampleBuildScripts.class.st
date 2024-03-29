Class {
	#name : #WDCSysmelUWPSampleBuildScripts,
	#superclass : #MbndSysmelUWPSampleBuildScripts,
	#category : #'WodenSysmel-BuildScripts'
}

{ #category : #examples }
WDCSysmelUWPSampleBuildScripts class >> buildGameSystemExample [
	<example>
	self newNoRTTIBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiBundleWithSource: 'samples/game/gameSystemExample.sysmel' with: [ :prog |
				prog
					wodenAssets: WDCWodenSysmelAssets location / 'samples' / 'resources' / 'SampleMaterials';
					wodenAssets: WDCWodenSysmelAssets location / 'samples' / 'resources' / 'SampleMaps'
			]
		]
]

{ #category : #examples }
WDCSysmelUWPSampleBuildScripts class >> buildSceneExample01Cube [
	<example>
	self newNoRTTIBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiBundleWithSource: 'samples/scene/sceneExample01Cube.sysmel'
		]
]

{ #category : #examples }
WDCSysmelUWPSampleBuildScripts class >> buildSceneExample02TexturedCube [
	<example>
	self newNoRTTIBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiBundleWithSource: 'samples/scene/sceneExample02TexturedCube.sysmel'
		]
]

{ #category : #examples }
WDCSysmelUWPSampleBuildScripts class >> buildSceneExample03Floor [
	<example>
	self newNoRTTIBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiBundleWithSource: 'samples/scene/sceneExample03Floor.sysmel' with: [ :bundle |
					bundle wodenAssets: WDCWodenSysmelAssets location / 'samples' / 'resources' / 'SampleMaterials'
				]
		]
]

{ #category : #examples }
WDCSysmelUWPSampleBuildScripts class >> buildSceneExample04Pool [
	<example>
	self newNoRTTIBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiBundleWithSource: 'samples/scene/sceneExample04Pool.sysmel' with: [ :bundle |
					bundle wodenAssets: WDCWodenSysmelAssets location / 'samples' / 'resources' / 'SampleMaterials'
				]
		]
]

{ #category : #examples }
WDCSysmelUWPSampleBuildScripts class >> buildSceneExample05Models [
	<example>
	self newNoRTTIBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiBundleWithSource: 'samples/scene/sceneExample05Models.sysmel' with: [ :bundle |
				bundle
					wodenAssets: WDCWodenSysmelAssets location / 'samples' / 'resources' / 'SampleModels';
					wodenAssets: WDCWodenSysmelAssets location / 'samples' / 'resources' / 'gltfSampleModels' / 'DamagedHelmet'
			]
		]
]

{ #category : #examples }
WDCSysmelUWPSampleBuildScripts class >> buildSceneExample06Sponza [
	<example>
	self newNoRTTIBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiBundleWithSource: 'samples/scene/sceneExample06Sponza.sysmel' with: [ :bundle |
				bundle
					wodenAssets: WDCWodenSysmelAssets location / 'samples' / 'resources' / 'gltfSampleModels' / 'Sponza'
			]
		]
]

{ #category : #examples }
WDCSysmelUWPSampleBuildScripts class >> buildSceneExample07SkinnedModel [
	<example>
	self newNoRTTIBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiBundleWithSource: 'samples/scene/sceneExample07SkinnedModel.sysmel' with: [ :bundle |
				bundle
					wodenAssets: WDCWodenSysmelAssets location / 'samples' / 'resources' / 'gltfSampleModels' / 'Fox'
			]
		]
]

{ #category : #'see class side' }
WDCSysmelUWPSampleBuildScripts >> seeClassSide [
]
