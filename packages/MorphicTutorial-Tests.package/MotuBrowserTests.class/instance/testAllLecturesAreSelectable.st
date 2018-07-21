as yet unclassified
testAllLecturesAreSelectable
	| chapters lecture |

	chapters := (MotuLectureCategory allSubclasses collect: [:x | x name]) sorted.
	chapters do: [:aChapterSymbol |
		(Smalltalk classNamed: aChapterSymbol) new lectures do: [:aClass|
			lecture := aClass new.
			browser selectedLecture: lecture]]