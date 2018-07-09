building
buildResetLectureButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Reset';
		enabled: #readyToEvaluateCode;
		action: #resetSelectedLecture;
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 1 offset: self evaluateButtonHeight negated;
			rightFraction: 0.48;
			bottomFraction: 1)