as yet unclassified
testAssertEveryLectureHasADescriptionBoxContent

	MotuLecture lectureCategories do: [:aChapter |
		aChapter sublectures do: 
		[:aLecture | self assert: aLecture new descriptionBoxContent notEmpty]]