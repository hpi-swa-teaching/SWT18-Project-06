as yet unclassified
testResetSelectedLectureClearsPlayground

	MotuMockLecture new setUp: browser playground.
	self assert: (browser playground submorphs anySatisfy: [ :morph | morph position = browser playground position]).
	browser resetSelectedLecture.
	self deny: (browser playground submorphs anySatisfy: [ :morph | morph position = browser playground position])
	