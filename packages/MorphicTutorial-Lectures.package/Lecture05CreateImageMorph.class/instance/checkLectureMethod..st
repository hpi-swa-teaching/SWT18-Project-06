as yet unclassified
checkLectureMethod: aPlaygroundMorph
	|assertion morph|
	
	self markAsPassed.
	assertion := MotuAssertion reportTo: self.
	
	morph := self perform: self lectureMethod.

	assertion assert: morph hasClass: ImageMorph errMessage: 'Du hast keinen ImageMorph zurückgegeben!'.
	assertion assert: [morph image] notEquals: (ImageMorph new image) errMessage: 'Dein ImageMorph hat kein Bild!'.
	morph openInWorld: aPlaygroundMorph
	
	
	