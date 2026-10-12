building
buildContextBarWith: aBuilder

	^ aBuilder pluggableCodePaneSpec new
		model: self;
		getText: #contextBarContent;
		readOnly: true;
		indicateUnacceptedChanges: false;
		minimumHeight: (self codeStatusBarHeightWith: aBuilder);
		frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: 0 offset: (self codeStatusBarHeightWith: aBuilder);
			rightFraction: 1;
			bottomFraction: 0 offset: (self codeStatusBarHeightWith: aBuilder) * 2)