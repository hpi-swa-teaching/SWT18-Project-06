as yet unclassified
test02assertStarlikeGetsNotApproved
	|vertices|
	vertices := {200@200. 250@100. 300@200. 400@250. 300@300. 250@400. 200@300. 100@250}.
	self assert: (MotuStarTester new constructsStar: vertices)