building
buildLectureListWith: aBuilder

	^ aBuilder pluggableTreeSpec new
		model: self;
		roots: #chapters;
		nodeClass: MotuLectureCategoryListItemWrapper;
		getSelected: #selectedLecture;
		setSelected: #selectedLecture:;
		autoDeselect: true;
		frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: 0;
			rightFraction: 0.33;
			bottomFraction: 0.67)