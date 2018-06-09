building
buildPlaygroundPanelWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #playgroundInCollection;
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 0;
			rightFraction: 1;
<<<<<<< HEAD
			bottomFraction: 0.5 offset: self codeStatusBarHeight negated)
=======
			bottomFraction: 0.45)
>>>>>>> 485f9a622de42fe6e01661a73d754bc862d9fe13
