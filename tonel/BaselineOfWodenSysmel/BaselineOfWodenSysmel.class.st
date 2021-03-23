Class {
	#name : #BaselineOfWodenSysmel,
	#superclass : #BaselineOf,
	#category : #BaselineOfWodenSysmel
}

{ #category : #baselines }
BaselineOfWodenSysmel >> baseline: spec [
    <baseline>
    spec for: #'common' do: [
		spec
			blessing: #baseline;
			postLoadDoIt: #postLoadActions;
			baseline: #'WodenEngine' with: [
				spec repository: 'github://ronsaldo/woden'
			];
			package: #'WodenSysmel-BuildScripts-Roassal' with: [
				spec requires: #(#'WodenEngine')
			];
			group: 'default' with: #(
				#'WodenSysmel-BuildScripts'
			)
	]
]
