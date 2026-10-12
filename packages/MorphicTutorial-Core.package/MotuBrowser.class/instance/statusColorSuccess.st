style
statusColorSuccess

	^ self userInterfaceTheme statusColorSuccess
		ifNil: [self userInterfaceTheme get: #passColor for: #TestRunner]