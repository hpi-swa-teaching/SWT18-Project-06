editor and playground
categoryList

	"We have to cache the list here, so that the TreeView will not fold the whole tree while updating the green/red-icons"
	categoryList ifNil: [categoryList := MotuLecture lectureCategories].
	^ categoryList