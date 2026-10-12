building
buildCodePanelWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 0.45;
			rightFraction: 1;
			bottomFraction: 1);
		children:
			(Array
				with: (self buildCodeStatusBarWith: aBuilder)
				with: (self buildContextBarWith: aBuilder)
				with: (self buildCodeEditorWith: aBuilder)
				with: (self buildButtonBarWith: aBuilder));
		yourself