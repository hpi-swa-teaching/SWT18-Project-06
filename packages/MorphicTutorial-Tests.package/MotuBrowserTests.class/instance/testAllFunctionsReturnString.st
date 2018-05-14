ids and labels
testAllFunctionsReturnString
	|returnValue|
	
	(MotuBrowser methodsInCategory: 'ids and labels') do: [:aSymbol |
		returnValue := browser perform: aSymbol.
		self assert: (returnValue isKindOf: ByteString)]. 