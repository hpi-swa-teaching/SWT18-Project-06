editor
evaluateCode
	"We can use this function as soon as we understand the code editor more and have access to the code."

	|code paneMorphs editor allMorphs|
	paneMorphs := window paneMorphs.
	editor := paneMorphs second.
	editor accept.
	code := self codeEditor contents asString.
	Compiler evaluate: code.
	allMorphs := Project currentWorld allNonFlapRelatedSubmorphs asCollection.
	allMorphs isEmpty ifTrue: [^ self].
	self selectedLecture evaluateMorph: (allMorphs first).