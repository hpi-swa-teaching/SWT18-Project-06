editor and playground
evaluateCode

	|code|
	self selectedLecture readOnly ifTrue: [ ^ self ].
<<<<<<< HEAD
	
=======
	self clearPlayground.
>>>>>>> 485f9a622de42fe6e01661a73d754bc862d9fe13
	code := self codeEditor
		accept;
		getText.
		
<<<<<<< HEAD
	self playground clear.
	self selectedLecture checkCode: code on: self playground.
	
	self codeStatusBarContent: self selectedLecture feedback.
=======
	self selectedLecture checkCode: code on: self playground.
	
	self codeStatusBarContent: self selectedLecture feedback.
	self changed: #codeStatusBarColor.
>>>>>>> 485f9a622de42fe6e01661a73d754bc862d9fe13
	self changed: #categoryList
