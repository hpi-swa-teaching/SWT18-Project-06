building
buildResetLectureButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Reset';
		enabled: #isLectureSelected;
		action: #resetSelectedLecture;
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 1 offset: self evaluateButtonHeight negated;
			rightFraction: 0.5;
			bottomFraction: 1)