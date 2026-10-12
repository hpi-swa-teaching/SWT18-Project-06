building
buildSolutionToggleButtonWith: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		label: #solutionButtonLabel;
		enabled: #isSelectedLecturePassed;
		action: #toggleSolution;
		yourself