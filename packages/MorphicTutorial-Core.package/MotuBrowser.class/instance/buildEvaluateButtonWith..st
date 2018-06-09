building
buildEvaluateButtonWith: aBuilder

	self flag: #refactor. "Kommentar unten lschen. Toter Code?"

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Evaluate Code';
		action: #evaluateCode;
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 0.95;
			rightFraction: 1;
			bottomFraction: 1)