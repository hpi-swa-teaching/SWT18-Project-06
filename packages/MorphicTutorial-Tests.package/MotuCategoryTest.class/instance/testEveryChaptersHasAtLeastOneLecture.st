as yet unclassified
testEveryChaptersHasAtLeastOneLecture
	|object|
	
	MotuLectureCategory allSubclasses do: [:aClass |
		object := aClass new.
		self assert: object lectures notEmpty.
		self assert: object name notNil]