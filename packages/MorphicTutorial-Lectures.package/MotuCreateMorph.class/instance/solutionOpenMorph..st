solution
solutionOpenMorph: aWorld
	"We want to create the Morph and open it in the current world"
	^ PolygonMorph new
		openInWorld: aWorld;
		yourself