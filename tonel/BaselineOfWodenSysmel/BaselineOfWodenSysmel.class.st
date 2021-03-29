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
			baseline: #'WodenEngine' with: [
				spec repository: 'github://ronsaldo/woden'
			];
			package: #'WodenSysmel-BuildScripts' with: [
				spec requires: #(#'WodenEngine')
			];
			package: #'WodenSysmel-LevelEditor' with: [
				spec requires: #(#'WodenEngine' #'WodenSysmel-BuildScripts')
			];
			group: 'default' with: #(
				#'WodenSysmel-BuildScripts' #'WodenSysmel-LevelEditor'
			)
	]
]
