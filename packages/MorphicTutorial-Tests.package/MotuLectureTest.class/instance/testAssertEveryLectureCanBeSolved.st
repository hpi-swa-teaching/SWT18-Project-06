as yet unclassified
testAssertEveryLectureCanBeSolved
	| chapters lecture playgroundMorph |
	FileStream startUp: true.
	FileStream stdout nextPutAll: '------------------------------------------------------------------------------------', Character lf; flush.
	chapters := MotuLecture lectureCategories.
	chapters do: [:chapter |
		chapter sublectures do: [:aClass|
			aClass = MotuCreateMorph ifFalse:[
			FileStream stdout nextPutAll: 'Lecture: ', aClass printString, Character lf; flush.
			lecture := aClass new.
			playgroundMorph := MotuPlaygroundMock new.
			lecture fail.
			lecture checkCode: lecture solution on: playgroundMorph. 
			self assert: lecture passed ]]].
	
	MotuLecture resetAll