editor
evaluateWorld
	|allMorphs|
	allMorphs := Project currentWorld allNonFlapRelatedSubmorphs asCollection.
	allMorphs isEmpty ifTrue: [^ self].

	self selectedLecture evaluateMorph: (allMorphs first).
	"allMorphs first delete"