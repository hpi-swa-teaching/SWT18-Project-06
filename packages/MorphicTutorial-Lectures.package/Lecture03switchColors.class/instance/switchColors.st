as yet unclassified
switchColors
	"test"
	self color = Color blue 
		ifTrue: [ self color: Color red ] 
		ifFalse: [ self color: Color blue ].