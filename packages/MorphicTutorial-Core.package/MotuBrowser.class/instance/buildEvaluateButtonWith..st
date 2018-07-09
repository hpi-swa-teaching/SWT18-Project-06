building
buildEvaluateButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Evaluate Code';
		enabled: #readyToEvaluateCode;
		action: #evaluateCode;
		frame: (LayoutFrame new
			leftFraction: 0.63;
			topFraction: 1 offset: self evaluateButtonHeight negated;
			rightFraction: 1;
			bottomFraction: 1)