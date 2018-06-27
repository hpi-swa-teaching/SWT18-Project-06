code-transformation
adaptCodeForDisplay: aString
	| body |
	self simulateWorkspace not ifTrue: [ ^ aString ].
	body := self extractMethodBody: aString.
	self parameterNames size > 0
		ifTrue: [ ^ self firstLineOfCode, body ]
		ifFalse: [ ^ body ]
	
	