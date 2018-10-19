evaluation
checkLectureMethod: aPlaygroundMorph

	self morph: (ColorfulMorph new
		openInWorld: aPlaygroundMorph;
		yourself).
	self stopColorSwitch: self morph.
	self morph isLocked 
		ifFalse: [self failWith: 'Lock him up']
		ifTrue: [self pass]