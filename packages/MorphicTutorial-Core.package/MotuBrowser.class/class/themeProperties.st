preferences
themeProperties

	^ super themeProperties, {
		{ #statusColorSuccess. 'Colors'. 'Background color to indicate passed lecture.'}.
		{ #statusColorFailure. 'Colors'. 'Background color to indicate failed lecture.'}.
		
		{ #statusTextColorSuccess. 'Colors'. 'Text color to indicate passed lecture.'}.
		{ #statusTextColorFailure. 'Colors'. 'Text color to indicate failed lecture.'}.
	}