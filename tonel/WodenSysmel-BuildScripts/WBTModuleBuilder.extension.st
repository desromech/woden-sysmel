Extension { #name : #WBTModuleBuilder }

{ #category : #'*WodenSysmel-BuildScripts' }
WBTModuleBuilder >> wodenAssets: rawResourceDirectory [
	target addWodenAssetsDirectory: (script workingDirectory resolve: rawResourceDirectory asFileReference)

]
