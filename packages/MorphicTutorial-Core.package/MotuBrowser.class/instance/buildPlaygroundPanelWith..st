building
buildPlaygroundPanelWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #playgroundInCollection;
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 0;
			rightFraction: 1;
			bottomFraction: 0.5 offset: self codeStatusBarHeight negated)