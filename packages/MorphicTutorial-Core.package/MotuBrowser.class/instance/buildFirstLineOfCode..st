building
buildFirstLineOfCode: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #firstLineOfCodeContent;
		"getText: #contextBarContent;
		color: #contextBarColor;
		readOnly: true;
		indicateUnacceptedChanges: false;"
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 0.5;
			rightFraction: 1;
			bottomFraction: 0.5)