building
buildCodeEditorWith: aBuilder
	|spec|
	self codeEditor: Workspace new.
	
	spec := self codeEditor buildCodePaneWith: aBuilder.
	spec
		"editText: #contents:;"
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 0.5;
			rightFraction: 1;
			bottomFraction: 0.95).
		
	^ spec