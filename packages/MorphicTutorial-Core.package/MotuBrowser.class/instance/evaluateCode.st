editor and playground
evaluateCode

	|code|
	
	code := self codeEditor
		accept;
		getText.
		
	self playground clear.
	self selectedLecture checkCode: code on: self playground.
	
	self changed: #categoryList
