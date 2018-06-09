building
buildCodeStatusBarWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
<<<<<<< HEAD
		getText: #codeStatusBarContentStyled;
=======
		getText: #codeStatusBarContent;
>>>>>>> 485f9a622de42fe6e01661a73d754bc862d9fe13
		color: #codeStatusBarColor;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new
			leftFraction: 0.33;
<<<<<<< HEAD
			topFraction: 0.5 offset: self codeStatusBarHeight negated;
=======
			topFraction: 0.45;
>>>>>>> 485f9a622de42fe6e01661a73d754bc862d9fe13
			rightFraction: 1;
			bottomFraction: 0.5)