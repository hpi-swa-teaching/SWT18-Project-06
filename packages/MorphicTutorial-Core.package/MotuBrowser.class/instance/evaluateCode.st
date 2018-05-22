editor and playground
evaluateCode

	|code|
	
	self flag: #refactor. "clear elsewhen"
	self clearPlayground.
	code := self codeEditor
		accept;
		getText.
	self selectedLecture checkCode: code on: self playground.
	self codeStatusBarContent: self selectedLecture feedback.
	self changed: #codeStatusBarColor.
	self changed: #categoryList
	
	"
	morph := Compiler evaluate: code.
	morph ifNil: [^self].
	self openInPlayground: morph.
	
	self selectedLecture ifNotNil: [
		self selectedLecture evaluateMorph: morph.
		self codeStatusBarContent: self selectedLecture feedback].
	
	self changed: #codeStatusBarColor.
	self changed: #categoryList.
	
	self selectedLecture code: code"
