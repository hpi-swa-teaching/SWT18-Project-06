as yet unclassified
testAssertEveryLectureHasASolution

	MotuLecture allSubclasses do: [:aClass |
		self assert: aClass new solutionMethod selector asString notEmpty]