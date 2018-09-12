stepping
moveVector

	self inOwner ifFalse: [self vector: (self vector  * -1)].
	^ self vector