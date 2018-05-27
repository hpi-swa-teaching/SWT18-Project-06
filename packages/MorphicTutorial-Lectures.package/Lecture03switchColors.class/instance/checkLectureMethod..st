as yet unclassified
checkLectureMethod: aPlaygroundMorph	
	|assertion|
	
	self markAsPassed.

	self color: Color blue.
	assertion := MotuAssertion reportTo: self.
	
	self switchColors.
	assertion assert: self color equals: Color red errMessage: 'Deine Funktion wechselt die Farbe des Morphs nicht von blau auf rot!'.
	self switchColors.
	assertion assert: self color equals: Color blue errMessage:  'Deine Funktion wechselt die Farbe des Morphs nicht von rot auf blau!'