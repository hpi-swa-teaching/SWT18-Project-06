stepping
step

	| isColliding |
	self position: (self position + self moveVector).
	isColliding := self collidesWith: self collider.
	(isColliding isKindOf: Boolean) ifFalse: [^ self].
	isColliding ifTrue: [self color: Color red] ifFalse: [self color: Color green]
	
	