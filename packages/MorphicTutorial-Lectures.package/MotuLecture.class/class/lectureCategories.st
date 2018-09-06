accessing
lectureCategories
	^ (self subclasses select: [:each | each subclasses size > 0] ) sort: [:a :b | a order < b order]