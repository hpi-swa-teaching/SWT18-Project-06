building
buildLectureListWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #lectureList;
		getSelected: #selectedLecture;
		setSelected: #selectLecture:;
		autoDeselect: false;
		frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: 0;
			rightFraction: 0.33;
			bottomFraction: 0.67)