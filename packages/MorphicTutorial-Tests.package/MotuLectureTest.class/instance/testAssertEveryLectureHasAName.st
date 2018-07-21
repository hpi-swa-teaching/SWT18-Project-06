as yet unclassified
testAssertEveryLectureHasAName

	MotuLecture allSubclasses do: [:aClass | 
		self assert: (aClass new lectureName isKindOf: String)]