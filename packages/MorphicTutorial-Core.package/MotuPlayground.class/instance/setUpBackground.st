as yet unclassified
setUpBackground
	(Smalltalk at: #SqueakTheme ifAbsent: nil)
		ifNil: [self setAsBackground: Preferences defaultWorldColor  ] 
		ifNotNil: [ self setAsBackground: SqueakTheme linenblue ]