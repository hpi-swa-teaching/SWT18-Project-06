building
buildResetLectureButtonWith: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'Reset';
		enabled: #readyToEvaluateCode;
		action: #resetSelectedLecture;
		yourself