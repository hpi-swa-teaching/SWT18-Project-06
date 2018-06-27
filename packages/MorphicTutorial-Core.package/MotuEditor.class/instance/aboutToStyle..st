as yet unclassified
aboutToStyle: aStyler

	self activeLecture ifNotNil: [
		self activeLecture simulateWorkspace not
			ifTrue: [aStyler classOrMetaClass: self activeLecture class]
			ifFalse: [aStyler classOrMetaClass: nil]].
	^ true