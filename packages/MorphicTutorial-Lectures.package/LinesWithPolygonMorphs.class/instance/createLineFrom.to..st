as yet unclassified
createLineFrom: aPointFrom to: aPointTo

	 ^ PolygonMorph vertices: {aPointFrom. aPointTo}
	color: Color red
	borderWidth: 2  borderColor: Color red