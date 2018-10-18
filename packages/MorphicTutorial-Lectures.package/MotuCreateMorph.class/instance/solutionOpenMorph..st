solution
solutionOpenMorph: aWorld
	"We want to create the Morph and open it in the current world"
	FileStream startUp: true.
	FileStream stdout nextPutAll: 'aWorld: ', aWorld printString, Character lf; flush.
	FileStream stdout nextPutAll: 'aWorld morph: ', aWorld morph printString, Character lf; flush.
	^ Morph new
		openInWorld: aWorld;
		yourself