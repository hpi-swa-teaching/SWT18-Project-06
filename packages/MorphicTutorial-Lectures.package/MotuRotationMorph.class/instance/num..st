accessing
num: anObject
	(anObject > 360) 
		ifTrue: [num := 0] 
		ifFalse: [num := anObject]