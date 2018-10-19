as yet unclassified
testEveryChaptersHasAtLeastOneLecture
	
	MotuLecture lectureCategories do: [:aClass |
		self assert: aClass sublectures notEmpty.
		self assert: aClass topic notNil]