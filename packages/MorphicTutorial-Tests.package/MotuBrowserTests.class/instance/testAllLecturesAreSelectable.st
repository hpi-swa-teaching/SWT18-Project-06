as yet unclassified
testAllLecturesAreSelectable
	| chapters lecture |
	browser playground: MotuPlaygroundMock new.
	chapters := (MotuLectureCategory allSubclasses collect: [:x | x name]) sorted.
	chapters do: [:aChapterSymbol |
		(Smalltalk classNamed: aChapterSymbol) new lectures do: [:aClass|
			lecture := aClass new.
			browser selectedLecture: lecture]]