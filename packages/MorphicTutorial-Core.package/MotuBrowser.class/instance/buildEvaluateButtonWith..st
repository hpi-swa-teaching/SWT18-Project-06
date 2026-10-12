building
buildEvaluateButtonWith: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'Evaluate Code';
		enabled: #readyToEvaluateCode;
		action: #evaluateCode;
		yourself