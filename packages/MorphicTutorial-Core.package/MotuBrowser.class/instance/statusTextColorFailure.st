style
statusTextColorFailure

	^ self userInterfaceTheme statusTextColorFailure
		ifNil: [self userInterfaceTheme get: #errorTextColor for: #TestRunner]