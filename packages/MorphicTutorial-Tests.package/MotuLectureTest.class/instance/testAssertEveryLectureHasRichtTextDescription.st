as yet unclassified
testAssertEveryLectureHasRichtTextDescription

	MotuLecture lectureCategories do: [:aChapter |
		aChapter sublectures do: 
		[:aLecture | self assert: (aLecture new descriptionBoxContent isKindOf: Text)]]