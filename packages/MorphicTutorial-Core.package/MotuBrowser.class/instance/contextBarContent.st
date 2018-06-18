ui
contextBarContent

	^ self selectedLecture simulateWorkspace
		ifTrue: [ ^ 'Workspace' ]
		ifFalse: [ ^ ('<b><a href="code://', 
				self selectedLecture lectureMethod methodClass name asString,
				'">', self selectedLecture lectureMethod methodClass name asString,
				'</a></b>'
			) asHtmlText,
			(Text string: ' >> ' attribute: (TextEmphasis bold)),
			(Text string: self selectedLecture lectureMethod selector asString attribute: (TextEmphasis bold))] 