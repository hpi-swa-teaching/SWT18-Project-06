as yet unclassified
testSafeCompileDetectsNewMethods

	| lecture |
	MotuMockLecture removeSelector: #broken:.
	lecture := MotuMockLecture new.
	self deny: [lecture safelyCompile: 'broken: anObject
		"This should not be possible"
		^ nil'].
	self assert: [lecture safelyCompile: 'mockedLecture: anObject
		"Everything is alright"']