as yet unclassified
switchColors
	self color = Color blue ifTrue: [
		self color: Color red.
		^self
	].
	self color = Color red ifTrue: [
		self color: Color blue.
		^self
	]