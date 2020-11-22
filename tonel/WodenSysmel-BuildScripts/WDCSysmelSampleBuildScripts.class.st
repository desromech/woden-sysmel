Class {
	#name : #WDCSysmelSampleBuildScripts,
	#superclass : #MbndSysmelSampleBuildScripts,
	#category : #'WodenSysmel-BuildScripts'
}

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
			packageScript guiProgramWithSource: 'samples/scene/sceneExample03Floor.sysmel'
		]
]

{ #category : #'native samples' }
WDCSysmelSampleBuildScripts class >> buildSceneExample04Pool [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiProgramWithSource: 'samples/scene/sceneExample04Pool.sysmel'
		]
]

{ #category : #'native samples' }
WDCSysmelSampleBuildScripts class >> buildSceneExample05Models [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiProgramWithSource: 'samples/scene/sceneExample05Models.sysmel'
		]
]

{ #category : #'native samples' }
WDCSysmelSampleBuildScripts class >> buildSceneExample06Sponza [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiProgramWithSource: 'samples/scene/sceneExample06Sponza.sysmel'
		]
]

{ #category : #'native samples' }
WDCSysmelSampleBuildScripts class >> buildSceneExample07SkinnedModel [
	<example>
	self newNativeBuildEnvironment
		buildMainPackageInFolder: WDCWodenSysmelAssets location with: [ :packageScript |
			packageScript guiProgramWithSource: 'samples/scene/sceneExample07SkinnedModel.sysmel'
		]
]

{ #category : #'see class side' }
WDCSysmelSampleBuildScripts >> seeClassSide [
]
