style
statusTextColorSuccess

	^ self userInterfaceTheme statusTextColorSuccess
		ifNil: [self userInterfaceTheme get: #passTextColor for: #TestRunner]