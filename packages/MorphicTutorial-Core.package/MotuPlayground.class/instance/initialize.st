setup
initialize

	super initialize.
	self layoutFrame: (LayoutFrame fractions: (0@0 rect: 1@1)).
	self setUpBackground.
	self beSticky