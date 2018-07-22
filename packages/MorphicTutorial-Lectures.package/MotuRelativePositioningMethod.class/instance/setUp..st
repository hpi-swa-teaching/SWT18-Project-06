setup
setUp: aPlayground

	self passed
		ifTrue: [self checkLectureMethod: aPlayground]
		ifFalse: [aPlayground addMorph: (self containerMorph position: (77@33) + aPlayground position).
				aPlayground addMorph: (self positionMorph position: (33@33) + aPlayground position)]