accessing
success: aBlockS failure: aBlockF

	self hasError ifTrue: [aBlockF value: self expectationMessage] ifFalse: aBlockS