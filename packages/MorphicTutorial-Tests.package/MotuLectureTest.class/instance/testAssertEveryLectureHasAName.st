as yet unclassified
testAssertEveryLectureHasAName
	| assertion |
	assertion := MotuAssertion new.
	MotuLecture allSubclasses do: [:aClass | 
		self assert: (aClass new lectureName isKindOf: String)]