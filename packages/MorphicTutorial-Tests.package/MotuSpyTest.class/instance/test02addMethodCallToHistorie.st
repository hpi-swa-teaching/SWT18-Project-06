as yet unclassified
test02addMethodCallToHistorie
	| historySize |
	historySize := spy history size.
	spy position: 100@100.
	self assert: spy history size = (historySize + 1).