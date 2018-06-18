as yet unclassified
solution
	^ 'createLineFrom: aPointFrom to: aPointTo

	 ^ PolygonMorph vertices: {aPointFrom. aPointTo}
	color: Color red
	borderWidth: 2  borderColor: Color red'