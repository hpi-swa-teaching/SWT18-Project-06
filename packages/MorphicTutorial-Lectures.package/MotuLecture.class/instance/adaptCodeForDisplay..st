code-transformation
adaptCodeForDisplay: aString
	| body |
	body := self extractMethodBody: aString.
	self simulateWorkspace not ifTrue: [ ^ self methodName, Character cr, body ].
	self parameterNames size > 0
		ifTrue: [ ^ self firstLineOfCode, Character cr, body ]
		ifFalse: [ ^ body ]
	
	