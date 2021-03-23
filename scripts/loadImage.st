Metacello new
  baseline: 'WodenSysmel';
  repository: 'gitlocal://.';
  load.

"Save the image"
(Smalltalk saveAs: 'woden-sysmel')
    ifFalse: [ Smalltalk snapshot: false andQuit: true ].
