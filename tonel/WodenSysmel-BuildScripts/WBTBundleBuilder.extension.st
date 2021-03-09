Extension { #name : #WBTBundleBuilder }

{ #category : #'*WodenSysmel-BuildScripts' }
WBTBundleBuilder >> wodenAssets: rawResourceDirectory [
	self flag: 'FIXME: Add resources to the bundle itself'.
	self program addWodenAssetsDirectory: (script workingDirectory resolve: rawResourceDirectory asFileReference)
]
