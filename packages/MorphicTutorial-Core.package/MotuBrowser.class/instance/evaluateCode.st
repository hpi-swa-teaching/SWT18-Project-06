editor and playground
evaluateCode

	|code|
	self selectedLecture readOnly ifTrue: [ ^ self ].
	
	code := self codeEditor
		accept;
		getText.
		
	self selectedLecture checkCode: code on: self playground.
	
	self codeStatusBarContent: self selectedLecture feedback.
	self changed: #categoryList
