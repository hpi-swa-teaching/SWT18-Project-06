editor and playground
evaluateCode
	| morph code|

	self clearPlayground.
	self codeEditor accept.
	
	code := self codeEditor getText.
	morph := Compiler evaluate: code.
	morph ifNil: [^self].
	self openInPlayground: morph.
	
	self selectedLecture ifNotNil: [
		self selectedLecture evaluateMorph: morph.
		self codeStatusBarContent: self selectedLecture feedback].
	
	self changed: #codeStatusBarColor.
	self changed: #categoryList.
	
	self selectedLecture code: code
