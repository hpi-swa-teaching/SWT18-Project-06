as yet unclassified
testAssertEveryLectureCanBeSolved
	| chapters lecture playgroundMorph |
	chapters := (MotuLectureCategory allSubclasses collect: [:x | x name]) sorted.
	chapters do: [:aChapterSymbol |
		(Smalltalk classNamed: aChapterSymbol) new lectures do: [:aClass|
			lecture := aClass new.
			Transcript show: lecture.
			Transcript show: Character cr.
			playgroundMorph := MotuPlaygroundMock new.
			lecture fail.
			lecture checkCode: lecture solution on: playgroundMorph. 
			self assert: lecture passed]].
	MotuLecture resetAll