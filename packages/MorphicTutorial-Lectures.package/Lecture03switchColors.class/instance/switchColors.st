as yet unclassified
switchColors
	Transcript showln: self color.
	self color = Color blue 
	ifTrue: [self color: Color red]	
	ifFalse: [self color: Color blue]