as yet unclassified
testAssertEveryLectureHasAName

	MotuLecture lectureCategories do: [:aChapter |
		aChapter sublectures do: 
		[:aLecture | self assert: (aLecture new lectureName isKindOf: String)]]