Extension { #name : #WBTBuildEnvironment }

{ #category : #'*WodenSysmel-BuildScripts' }
WBTBuildEnvironment >> wodenTextureConversionTargetProfile: targetProfileName [
	self hostPlatformVariableEnvironment setVariable: #WODEN_TEXTURE_TARGET_PROFILE value: '-target-profile ' , targetProfileName

]
