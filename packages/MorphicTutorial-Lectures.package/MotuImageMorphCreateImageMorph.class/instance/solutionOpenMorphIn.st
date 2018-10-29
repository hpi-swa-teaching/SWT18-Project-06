solution
solutionOpenMorphIn

	"Again: FileDirectory uri: ..."
	^ ImageMorph new
		image: (Form fromFileNamed: (FileDirectory uri: 'C:/path/to/your/file.png') fullName)