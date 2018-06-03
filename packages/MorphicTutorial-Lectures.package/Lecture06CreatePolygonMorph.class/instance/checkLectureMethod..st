as yet unclassified
checkLectureMethod: aPlaygroundMorph

	|spy polygon|
	
	self setFailed.
	self feedback: 'Please type in correct code.'.
	
	spy := MotuSpy spyOn: aPlaygroundMorph reportTo: self.
	
	polygon := self openPolygonMorph: spy.
	polygon ifNil: [
		^ self
			feedback: 'Please return your PolygonMorph. You returned nil instead.';
			setFailed].
	(polygon isKindOf: PolygonMorph) ifFalse: [
		^ self
			feedback: 'Please return your PolygonMorph. You returned something different.';
			setFailed].
	spy expect: #addMorph: withArgs: {polygon} onFail: [
		^self
			feedback: 'Please open the PolygonMorph in the world we provide you with.';
			setFailed].

	self setPassed.
	self feedback: 'Great!'
		
		