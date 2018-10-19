evaluation
checkLectureMethod: aPlayground
	
	| spy |
	self setUp: aPlayground.	
	spy := MotuSpy spyOn: self morph.
	[self addTransformationMorphFor: spy.
	spy
		dontExpect: #new
		errorMessage: 'Do not manually assemble your flex shell. You might forget something important.'.
	spy
		expect: #addFlexShell
		before: #newTransformationMorph
		errorMessage: 'Do not manually assemble your flex shell. You might forget something important.'.
	spy expect: #addFlexShell
		errorMessage: 'You have to add this morph as a submorph to a TransformationMorph. Morph has a Method for this.'.
	spy
		expect: #addFlexShellIfNecessary
		before: #addFlexShell
		errorMessage: 'Like with abandon and delete there is a wrapper method here.'.
	self pass] 
	on: Error
	do: [:error | self failWith: error asString] 