as yet unclassified
testCategoriesReturnLectures
	MotuLectureCategory allCategories do: [ :aCategory |
		self assert: (aCategory lectures isKindOf: Collection).
		self assert: aCategory lectures size > 0.
		aCategory lectures do: [:aLecture | 
			self assert: (aLecture isKindOf: MotuLecture class)
		]
	]