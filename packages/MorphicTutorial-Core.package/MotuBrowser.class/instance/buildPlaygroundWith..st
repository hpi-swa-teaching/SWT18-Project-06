ui
buildPlaygroundWith: aBuilder

	^ (aBuilder pluggablePasteUpMorphSpec new
		name: self playgroundID;
		frame: (LayoutFrame new
			leftFraction: 0.33;
			topFraction: 0;
			rightFraction: 1;
			bottomFraction: 0.5)).