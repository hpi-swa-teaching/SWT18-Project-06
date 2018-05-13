accessing
playground
	playground ifNil: [self playground: (window paneMorphs detect: [:m | m externalName = self playgroundID])].
	^ playground