assertions
assertBlockCollection: aCollection errorMessage: aString
	aCollection do: [:aBlock | self assertBlock: aBlock errorMessage: aString]
	
	