as yet unclassified
switchColors
	self color = Color blue 
		ifTrue: [ self color: Color red ] 
		ifFalse: [ self color: Color blue ]