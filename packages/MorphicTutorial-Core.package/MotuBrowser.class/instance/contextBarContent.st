content
contextBarContent

	^ self selectedLecture simulateWorkspace
		ifTrue: [ ^ self contextBarWorkspaceContent ]
		ifFalse: [ ^ self selectedLecture methodName ]