building
buildContextBarWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #contextBarContent;
		color: #contextBarColor;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 0.5 offset: self codeStatusBarHeight negated;
			rightFraction: 1;
			bottomFraction: 0.5)