as yet unclassified
createLineFrom: aPointFrom to: aPointTo
	
	^ PolygonMorph vertices: (Array with: aPointFrom with: aPointTo)
	 color: Color black  borderWidth: 5 borderColor: Color red.