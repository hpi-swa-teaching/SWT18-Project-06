code-transformation
firstLineOfCode
	self simulateWorkspace 
		ifTrue: [ ^ '| ', (self parameterNames joinSeparatedBy: ' '), ' |' ] 
		ifFalse: [ ^ self methodName ]