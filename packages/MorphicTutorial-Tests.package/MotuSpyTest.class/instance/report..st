accessing
report: aString
	self failMessage ifNotNil: [^self].
	self failMessage: aString