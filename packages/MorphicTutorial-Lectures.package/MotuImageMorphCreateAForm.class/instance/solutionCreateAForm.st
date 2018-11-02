solution
solutionCreateAForm
	
	"Mind the FileDirectory uri: ... This allows OS independent file paths"
	"Use this if you have a file available:
	^ Form fromFileNamed: (FileDirectory uri: 'C:/path/to/your/file.png') fullName"
	
	"Otherwise we can get a from from the ToolIcons class"
	^ ToolIcons abstract 