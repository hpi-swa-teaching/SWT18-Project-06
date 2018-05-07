building
buildEvaluateButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Evaluate World State';
		"enabled: #isProjectChapter;"
		action: #evaluateWorld;
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 0.95;
			rightFraction: 1;
			bottomFraction: 1)