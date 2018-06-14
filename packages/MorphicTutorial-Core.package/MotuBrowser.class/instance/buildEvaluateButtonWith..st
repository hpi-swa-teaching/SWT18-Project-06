building
buildEvaluateButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Evaluate Code';
		enabled: #isLectureSelected;
		action: #evaluateCode;
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 1 offset: self evaluateButtonHeight negated;
			rightFraction: 1;
			bottomFraction: 1)