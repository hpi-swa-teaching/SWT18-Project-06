ui
categoryList

	"Wir müssen die Liste hier cachen, damit der TreeView bei der Aktualisierung der richtig/falsch-Icons nicht den ganzen Baum wieder zusammenklappt"
	categoryList ifNil: [ categoryList := MotuLectureCategory allCategories ].
	^ categoryList