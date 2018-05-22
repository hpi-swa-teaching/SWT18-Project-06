as yet unclassified
aboutToStyle: aStyler

	self activeLecture ifNotNil: [aStyler classOrMetaClass: self activeLecture class].
	^ true