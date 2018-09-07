as yet unclassified
testSafeCompileCreatesNoNewMethods

	| lecture |
	MotuMockLecture removeSelector: #broken:.
	lecture := MotuMockLecture new.
	lecture safelyCompile: 'broken: anObject
		"This should not be possible"
		^ nil'.
	self deny: [lecture respondsTo: #broken:]