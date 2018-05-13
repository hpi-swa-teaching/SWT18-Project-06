building
buildCodeEditorWith: aBuilder
	|spec|
	
	spec := MotuEditor new buildCodePaneWith: aBuilder.
	spec
		name: self codeEditorID;
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 0.5;
			rightFraction: 1;
			bottomFraction: 0.95).
		
	^ spec