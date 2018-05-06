ui
descriptionBoxContent

	^ self selectedLecture
		ifNil: [self welcomeMessage]
		ifNotNil: [self selectedLecture comment]