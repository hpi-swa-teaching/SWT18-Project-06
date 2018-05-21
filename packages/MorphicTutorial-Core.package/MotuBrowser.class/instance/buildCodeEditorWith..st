building
buildCodeEditorWith: aBuilder

	^ (self codeEditor buildCodePaneWith: aBuilder)
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 0.5;
			rightFraction: 1;
			bottomFraction: 0.95).
