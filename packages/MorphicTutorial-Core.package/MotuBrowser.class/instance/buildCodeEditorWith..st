building
buildCodeEditorWith: aBuilder

	^ (self codeEditor buildCodePaneWith: aBuilder)
		frame: (LayoutFrame new
			leftFraction: 0;
			topOffset: (self codeStatusBarHeightWith: aBuilder) * 2;
			rightFraction: 1;
			bottomFraction: 1 offset: (self buttonBarHeightWith: aBuilder) negated)