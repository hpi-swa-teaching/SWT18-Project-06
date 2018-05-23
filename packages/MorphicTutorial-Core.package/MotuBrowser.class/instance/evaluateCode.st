editor and playground
evaluateCode

	|code|
	self selectedLecture readOnly ifTrue: [ ^ self ].
	self clearPlayground.
	code := self codeEditor
		accept;
		getText.
		
	self selectedLecture checkCode: code on: self playground.
	
	self codeStatusBarContent: self selectedLecture feedback.
	self changed: #codeStatusBarColor.
	self changed: #categoryList
