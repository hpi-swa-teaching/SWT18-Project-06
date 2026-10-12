building
buildButtonBarWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: 1 offset: (self buttonBarHeightWith: aBuilder) negated;
			rightFraction: 1;
			bottomFraction: 1);
		children:
			(Array
				with: ((self buildEvaluateButtonWith: aBuilder) flag: #todo "spaceFillWeight: 2")
				with: (self buildResetLectureButtonWith: aBuilder)
				with: (self buildSolutionToggleButtonWith: aBuilder));
		yourself