ui
selectLecture: aLecture

	self
		selectedLecture: aLecture instance;
		codeStatusBarContent: (self selectedLecture feedback);
		changed: #codeStatusBarColor;
		changed: #descriptionBoxContent.

	self codeEditor setText: (self selectedLecture code)