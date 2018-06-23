accessing
assertBlockCollection: aCollection errMessage: aString

	aCollection do: [:aBlock | self assertBlock: aBlock errMessage: aString]
	
	