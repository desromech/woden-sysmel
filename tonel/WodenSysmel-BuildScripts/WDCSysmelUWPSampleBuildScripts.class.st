Class {
	#name : #WDCSysmelUWPSampleBuildScripts,
	#superclass : #MbndSysmelUWPSampleBuildScripts,
	#category : #'WodenSysmel-BuildScripts'
}

{ #category : #examples }
WDCSysmelUWPSampleBuildScripts class >> buildSceneExample01Cube [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiBundleWithSource: 'samples/scene/sceneExample01Cube.sysmel'
		]
]

{ #category : #examples }
WDCSysmelUWPSampleBuildScripts class >> buildSceneExample02TexturedCube [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiBundleWithSource: 'samples/scene/sceneExample02TexturedCube.sysmel'
		]
]

{ #category : #examples }
WDCSysmelUWPSampleBuildScripts class >> buildSceneExample03Floor [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiBundleWithSource: 'samples/scene/sceneExample03Floor.sysmel'
		]
]

{ #category : #examples }
WDCSysmelUWPSampleBuildScripts class >> buildSceneExample04Pool [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiBundleWithSource: 'samples/scene/sceneExample04Pool.sysmel'
		]
]

{ #category : #examples }
WDCSysmelUWPSampleBuildScripts class >> buildSceneExample05Models [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiBundleWithSource: 'samples/scene/sceneExample05Models.sysmel'
		]
]

{ #category : #examples }
WDCSysmelUWPSampleBuildScripts class >> buildSceneExample06Sponza [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiBundleWithSource: 'samples/scene/sceneExample06Sponza.sysmel'
		]
]

{ #category : #examples }
WDCSysmelUWPSampleBuildScripts class >> buildSceneExample07SkinnedModel [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiBundleWithSource: 'samples/scene/sceneExample07SkinnedModel.sysmel'
		]
]

{ #category : #'see class side' }
WDCSysmelUWPSampleBuildScripts >> seeClassSide [
]
