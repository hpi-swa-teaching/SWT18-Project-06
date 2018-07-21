building
testBuildMotuBrowser
	| window |
	
	window := browser buildWith: toolbuilder.
	self assert: (window isKindOf: SystemWindow)