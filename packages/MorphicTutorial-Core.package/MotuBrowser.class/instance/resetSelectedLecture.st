ui
resetSelectedLecture

	self selectedLecture resetLecture.
	
	self 
		changed: #categoryList;
		changed: #codeStatusBarContentStyled;
		changed: #codeStatusBarColor.

	self playground clear.
	self selectedLecture setUp: self playground.
	self codeEditor activeLecture: self selectedLecture.
	