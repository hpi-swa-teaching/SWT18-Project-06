as yet unclassified
testEveryChaptersHasATopic
	
	MotuLecture lectureCategories do: [:aClass |
		self assert: aClass topic notNil]