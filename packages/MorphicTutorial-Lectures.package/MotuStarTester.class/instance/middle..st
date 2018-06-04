as yet unclassified
middle: anArray
	
	|x y|
	
	x := 0.
	y := 0.
	anArray do: [ :each |
		x := x + each x.
		y := y + each y].
	
	^ (x / anArray size) @ (y / anArray size)