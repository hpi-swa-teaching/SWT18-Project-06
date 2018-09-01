building
buildContextBarWith: aBuilder

	^ aBuilder pluggableCodePaneSpec new
		model: self;
		getText: #contextBarContent;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 0.5 offset: self codeStatusBarHeight negated;
			rightFraction: 1;
			bottomFraction: 0.5)