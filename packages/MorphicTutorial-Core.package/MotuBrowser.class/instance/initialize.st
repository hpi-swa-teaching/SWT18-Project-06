ui
initialize

	super initialize.
	self playground: (MotuPlayground new
		setAsBackground: SqueakTheme linenblue;
		yourself).
	self selectedLecture: nil