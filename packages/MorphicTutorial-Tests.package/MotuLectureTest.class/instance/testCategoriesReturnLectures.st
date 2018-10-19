as yet unclassified
testCategoriesReturnLectures

	MotuLecture lectureCategories do: [ :aCategory |
		self assert: (aCategory sublectures isKindOf: Collection).
		self assert: aCategory sublectures size > 0.
		aCategory sublectures do: [:aLecture | 
			self assert: (aLecture isKindOf: MotuLecture class)]]