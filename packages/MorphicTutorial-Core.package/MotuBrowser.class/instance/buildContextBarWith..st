building
buildContextBarWith: aBuilder

	^ aBuilder pluggableCodePaneSpec new
		model: self;
		getText: #contextBarContent;
		readOnly: true;
		indicateUnacceptedChanges: false;
		minimumHeight: (self codeStatusBarHeight / 2);
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 0.45 offset: (self codeStatusBarHeight / 2);
			rightFraction: 1;
			bottomFraction: 0.45 offset: self codeStatusBarHeight)