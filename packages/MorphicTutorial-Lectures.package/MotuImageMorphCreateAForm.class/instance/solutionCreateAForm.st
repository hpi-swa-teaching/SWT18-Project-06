solution
solutionCreateAForm
	
	"Mind the FileDirectory uri: ... This allows OS independent file paths"
	^ Form fromFileNamed: (FileDirectory uri: 'C:/path/to/your/file.png') fullName 