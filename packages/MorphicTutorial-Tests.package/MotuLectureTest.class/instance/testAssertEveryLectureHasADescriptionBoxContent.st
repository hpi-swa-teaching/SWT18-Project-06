as yet unclassified
testAssertEveryLectureHasADescriptionBoxContent

	MotuLecture allSubclasses do: [:aClass |
		self assert: aClass new descriptionBoxContent notEmpty]