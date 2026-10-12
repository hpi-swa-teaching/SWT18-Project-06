style
defaultWindowColor
	^ super defaultWindowColor brightness > 0.5
		ifTrue: [Color r: 0.618 g: 1 b: 0.618 "Color green muchDarker darker arcWithLightness: 0.809"]
		ifFalse: [Color r: 0.0 g: 0.232 b: 0.0 "Color green muchDarker darker withLightness: 0.116"]