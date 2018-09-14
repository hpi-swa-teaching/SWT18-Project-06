as yet unclassified
testAssertEveryLectureCanBeSolved
	| chapters lecture playgroundMorph |
	
	chapters := MotuLecture lectureCategories.
	chapters do: [:chapter |
		chapter sublectures do: [:aClass|
			lecture := aClass new.
			playgroundMorph := MotuPlaygroundMock new.
			lecture fail.
			lecture checkCode: lecture solution on: playgroundMorph. 
			self assert: lecture passed ]].
	
	MotuLecture resetAll