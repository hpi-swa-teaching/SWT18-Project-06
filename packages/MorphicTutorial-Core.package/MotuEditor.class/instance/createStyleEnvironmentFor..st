accessing
createStyleEnvironmentFor: aLecture
	| environment |
	environment := Environment withName: 'StyleEnvironment'.
	environment import: Smalltalk globals.
	aLecture parameterNames do: [:each |
		environment bind: each asSymbol to: nil].
	^ environment