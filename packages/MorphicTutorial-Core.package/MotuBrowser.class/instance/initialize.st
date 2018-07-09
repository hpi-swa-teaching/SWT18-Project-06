ui
initialize

	super initialize.
	self playground: MotuPlayground new.
	self selectedLecture: nil.
	self showSolution: false