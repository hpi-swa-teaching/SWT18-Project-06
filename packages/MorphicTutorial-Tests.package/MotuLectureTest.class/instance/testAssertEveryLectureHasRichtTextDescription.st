as yet unclassified
testAssertEveryLectureHasRichtTextDescription

	MotuLecture allSubclasses do: [:aClass |
		self assert: (aClass new descriptionBoxContent isKindOf: Text)]