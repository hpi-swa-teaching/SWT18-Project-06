code-transformation
adaptCodeFromDisplay: aString
	| firstLine body |
	self simulateWorkspace not ifTrue: [ ^ aString ].
	firstLine := self extractMethodName: self solution.
	body := self extractMethodBody: aString.
	self parameterNames size > 0
		ifTrue: [ ^ firstLine, Character cr, body ]
		ifFalse: [ ^ firstLine, aString ]
	
	