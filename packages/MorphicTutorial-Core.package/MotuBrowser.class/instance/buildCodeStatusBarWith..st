building
buildCodeStatusBarWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #codeStatusBarContentStyled;
		color: #codeStatusBarColor;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: 0;
			rightFraction: 1;
			bottomFraction: 0 offset: (self codeStatusBarHeightWith: aBuilder))