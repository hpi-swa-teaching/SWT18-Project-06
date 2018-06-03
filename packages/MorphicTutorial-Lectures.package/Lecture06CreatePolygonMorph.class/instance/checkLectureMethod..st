as yet unclassified
checkLectureMethod: aPlaygroundMorph

	|spy polygon|
	
	self markAsPassed.
	spy := MotuSpy spyOn: aPlaygroundMorph reportTo: self.
	
	polygon := self createPolygonMorph: aPlaygroundMorph.