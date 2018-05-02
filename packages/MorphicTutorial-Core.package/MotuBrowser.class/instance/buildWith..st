building
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: #labelString;
		children: {
			self buildDescriptionBoxWith: aBuilder.
			self buildLectureListWith: aBuilder};
		yourself)