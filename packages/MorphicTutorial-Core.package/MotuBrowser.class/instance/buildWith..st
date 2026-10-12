building
buildWith: aBuilder
			
	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: #labelString;
		extent: self class defaultExtent;
		children: {
			self buildLectureListWith: aBuilder.
			self buildDescriptionBoxWith: aBuilder.
			self buildPlaygroundPanelWith: aBuilder.
			self buildCodePanelWith: aBuilder.
			};
		yourself)