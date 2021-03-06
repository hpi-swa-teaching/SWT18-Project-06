building
buildWith: aBuilder
			
	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: #labelString;
		extent: self class defaultExtent;
		children: {
			self buildDescriptionBoxWith: aBuilder.
			self buildLectureListWith: aBuilder.
			self buildCodeEditorWith: aBuilder.
			self buildEvaluateButtonWith: aBuilder.
			self buildResetLectureButtonWith: aBuilder.
			self buildSolutionToggleButtonWith: aBuilder.
			self buildPlaygroundPanelWith: aBuilder.
			self buildCodeStatusBarWith: aBuilder.
			self buildContextBarWith: aBuilder.
			};
		yourself)