as yet unclassified
setUp: aPlayground

	aPlayground addMorph: self morph.
	self passed
		ifTrue: [self checkLectureMethod: aPlayground]
		ifFalse: [self morph position: aPlayground position]