building
buildCodeStatusBarWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #codeStatusBarContent;
		color: #codeStatusBarColor;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 0.45;
			rightFraction: 1;
			bottomFraction: 0.5)