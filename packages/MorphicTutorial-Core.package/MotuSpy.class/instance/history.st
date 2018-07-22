accessing
history
	history ifNil: [self history: OrderedCollection new].
	^ history