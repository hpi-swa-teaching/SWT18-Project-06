building
buildSolutionToggleButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #solutionButtonLabel;
		enabled: #isSelectedLecturePassed;
		action: #toggleSolution;
		frame: (LayoutFrame new
			leftFraction: 0.48;
			topFraction: 1 offset: self evaluateButtonHeight negated;
			rightFraction: 0.63;
			bottomFraction: 1)