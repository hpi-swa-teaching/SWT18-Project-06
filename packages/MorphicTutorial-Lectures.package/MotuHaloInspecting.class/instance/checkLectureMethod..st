evaluation
checkLectureMethod: aPlaygroundMorph 
	| m |
	m := Morph new.
	self performLectureMethodWith: m.
	
	[self asserter
		assert: m color 
		equals: self getMorphParameter first 
		errorMessage: 'Your morph has the wrong color!'.
	self asserter 
		assert: m width 
		equals: self getMorphParameter second 
		errorMessage: 'Your morph has the wrong width!'.
	self asserter 
		assert: m height 
		equals: self getMorphParameter third 
		errorMessage: 'Your morph has the wrong height!'.
	self pass.]
		on: Error
		do: [:error | self failWith: error asString].
		
	aPlaygroundMorph addMorph: self morph