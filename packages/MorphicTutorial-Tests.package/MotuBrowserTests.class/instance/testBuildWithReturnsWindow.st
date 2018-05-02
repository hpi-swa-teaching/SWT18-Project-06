as yet unclassified
testBuildWithReturnsWindow

	| window |
	window := browser buildWith: toolbuilder.
	self assert: (window isKindOf: SystemWindow)