as yet unclassified
testAllLecturesAreSelectable
	| chapters lecture |

	chapters := (MotuLecture lectureCategories collect: [:x | x name]) sorted.
	chapters do: [:aChapterSymbol |
		(Smalltalk classNamed: aChapterSymbol) sublectures do: [:aClass|
			lecture := aClass new.
			browser selectedLecture: lecture]]