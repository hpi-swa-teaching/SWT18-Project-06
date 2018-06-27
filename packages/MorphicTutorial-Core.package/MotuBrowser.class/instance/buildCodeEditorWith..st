building
buildCodeEditorWith: aBuilder

	^ (self codeEditor buildCodePaneWith: aBuilder)
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 0.5 offset: self codeStatusBarHeight;
			rightFraction: 1;
			bottomFraction: 1 offset: self evaluateButtonHeight negated)
