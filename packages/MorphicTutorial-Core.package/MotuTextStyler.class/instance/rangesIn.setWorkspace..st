private
rangesIn: aText setWorkspace: aBoolean
	"Modified copy of SHParserST80>>#rangesIn:setWorkspace:"
	| shoutParserClass |
	shoutParserClass := MotuParser.
	parser class == shoutParserClass ifFalse:[parser := shoutParserClass new].
	parser parseAMethod: true.
	parser motuParameters: self motuParameters.
	^parser 
		rangesIn: aText asString 
		classOrMetaClass: classOrMetaClass 
		workspace: (aBoolean ifTrue:[workspace])  
		environment: environment