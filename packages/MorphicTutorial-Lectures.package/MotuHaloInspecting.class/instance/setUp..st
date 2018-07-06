as yet unclassified
setUp: aPlayground
	
	self morph
		color: self getMorphParameter first;
		width: self getMorphParameter second;
		height: self getMorphParameter third.
		
	aPlayground addMorph: self morph.
	self passed
		ifTrue: [self checkLectureMethod: aPlayground]
		ifFalse: [self morph position: aPlayground position]