style
statusColorFailure

	^ self userInterfaceTheme statusColorFailure
		ifNil: [self userInterfaceTheme get: #errorColor for: #TestRunner]