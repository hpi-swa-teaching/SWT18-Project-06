editor and playground
evaluateCode
	| morph|

	self clearPlayground.
	self codeEditor accept.
	
	morph := Compiler evaluate: self codeEditor getText.
	morph ifNil: [^self].
	self openInPlayground: morph.
	
	self selectedLecture ifNotNil: [
		self selectedLecture evaluateMorph: morph.
		self codeStatusBarContent: self selectedLecture feedback.
		].
	
	self changed: #codeStatusBarColor.
	self changed: #lectureList
