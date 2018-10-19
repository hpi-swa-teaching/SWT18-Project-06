as yet unclassified
testAssertEveryLectureHasASolution

	 MotuLecture lectureCategories do: [:aChapter |
		aChapter sublectures do: 
		[:aLecture | self assert: (aLecture new solutionMethod selector asString notEmpty)]]