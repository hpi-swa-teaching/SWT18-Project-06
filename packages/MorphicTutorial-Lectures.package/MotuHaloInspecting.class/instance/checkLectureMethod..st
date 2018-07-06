as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| m assertion |
	
	m := Morph new.
	assertion := MotuAssertion new.
	self performLectureMethodWith: m.
	
	[assertion assert: m color equals: self getMorphParameter first errorMessage: 'Your morph has the wrong color!'.
	assertion assert: m width equals: self getMorphParameter second errorMessage: 'Your morph has the wrong width!'.
	assertion assert: m height equals: self getMorphParameter third errorMessage: 'Your morph has the wrong height!'.
	self pass.]
		on: Error
		do: [:error | self failWith: error asString].
	aPlaygroundMorph addMorph: self morph