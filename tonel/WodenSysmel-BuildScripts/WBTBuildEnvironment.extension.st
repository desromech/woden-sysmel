Extension { #name : #WBTBuildEnvironment }

{ #category : #'*WodenSysmel-BuildScripts' }
WBTBuildEnvironment >> wodenTextureConversionFlags: flags [
	self hostPlatformVariableEnvironment setVariable: #WODEN_TEXTURE_CONVERSION_FLAGS value: flags

]

{ #category : #'*WodenSysmel-BuildScripts' }
WBTBuildEnvironment >> wodenTextureConversionTargetProfile: targetProfileName [
	self hostPlatformVariableEnvironment setVariable: #WODEN_TEXTURE_TARGET_PROFILE value: '-target-profile ' , targetProfileName

]
