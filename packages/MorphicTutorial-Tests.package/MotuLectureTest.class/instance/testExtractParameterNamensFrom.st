as yet unclassified
testExtractParameterNamensFrom
	| lecture |
	
	lecture := MotuLecture new.
	self assert: (lecture extractParameterNamesFrom: 'word') size = 0.
	self assert: (lecture extractParameterNamesFrom: 'word: p1') size = 1.
	self assert: (lecture extractParameterNamesFrom: 'word: p1 word2: p2') size = 2.
	self assert: ((lecture extractParameterNamesFrom: 'word: p1 word2: p2') at: 2) = 'p2'.
	self assert: (lecture extractParameterNamesFrom: 'word: p1 word2: p2 word3: p3') size = 3.