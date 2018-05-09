editor
evaluateCode
	|code paneMorphs editor morph|
	
	paneMorphs := window paneMorphs.
	editor := paneMorphs second.
	editor accept.
	code := self codeEditor contents asString.
	
	morph := Compiler evaluate: code.
	morph beSticky.
	morph openInWorld: self playground.
	
	self selectedLecture evaluateMorph: morph
