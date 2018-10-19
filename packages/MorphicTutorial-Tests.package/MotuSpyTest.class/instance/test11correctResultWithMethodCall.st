as yet unclassified
test11correctResultWithMethodCall
	
	| setterLiterals |
	spy complexMethod: 1.
	setterLiterals := { #position: . #width } asCollection.
	self assert: (spy history includesAllOf: setterLiterals)