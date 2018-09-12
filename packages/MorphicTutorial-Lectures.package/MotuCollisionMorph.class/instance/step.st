stepping
step

	self position: (self position + self moveVector).
	(self collidesWith: self collider) ifTrue: [self color: Color red] ifFalse: [self color: Color green]
	
	