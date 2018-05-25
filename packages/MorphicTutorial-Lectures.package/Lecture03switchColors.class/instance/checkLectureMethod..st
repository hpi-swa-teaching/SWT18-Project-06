as yet unclassified
checkLectureMethod: aPlaygroundMorph	
	|assertion|
	
	self markAsPassed.
	
	assertion := MotuAssertion reportTo: self.
	self color: Color blue.
	
	self switchColors.
	assertion assert: self color equals: Color red errMessage: 'Deine Funktion wechselt die Farbe des Morphs nicht von blau auf rot!'.
	self switchColors.
	assertion assert: self color equals: Color blue errMessage: 'Deine Funktion wechselt die Farbe des Morphs nicht von rot auf blau!'.