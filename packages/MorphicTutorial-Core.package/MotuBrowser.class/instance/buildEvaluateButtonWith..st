building
buildEvaluateButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Evaluate';
		"enabled: #isProjectChapter;"
		action: #evaluateCode;
		frame: (LayoutFrame new
			leftFraction: 0.8;
			topFraction: 0.95;
			rightFraction: 1;
			bottomFraction: 1)