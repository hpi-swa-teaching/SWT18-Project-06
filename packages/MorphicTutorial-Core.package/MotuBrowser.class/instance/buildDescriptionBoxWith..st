building
buildDescriptionBoxWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #descriptionBoxContent;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: 0.67;
			rightFraction: 0.33;
			bottomFraction: 1)