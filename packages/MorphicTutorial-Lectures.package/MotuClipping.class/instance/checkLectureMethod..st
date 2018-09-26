evaluation
checkLectureMethod: aPlaygroundMorph

	self initialize.
	self setUp: aPlaygroundMorph.
	self activateClipping: self staticMorph.
	self staticMorph clipSubmorphs ifTrue: [self pass] ifFalse: [self failWith: 'You can still see the outside morph.']