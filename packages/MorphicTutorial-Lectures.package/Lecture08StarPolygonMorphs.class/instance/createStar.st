as yet unclassified
createStar
|vertices|
vertices := {100@100. 250@100. 300@200. 400@250. 300@300. 250@400. 200@300. 100@250}.
	^ PolygonMorph
		vertices: vertices
		color: Color green
		borderWidth: 2
		borderColor: Color black