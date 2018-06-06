as yet unclassified
test01assertNotStarlikeGetsNotApproved
	|vertices|
	vertices := {100@100. 250@100. 300@200. 400@250. 300@300. 250@400. 200@300. 100@250}.
	self assert: (MotuStarTester new constructsStar: vertices) not