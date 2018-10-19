accessing
lectureCategories
	^ (self subclasses select: [:each | each subclasses size > 0 and: [each isMock not]] ) sort: [:a :b | a order < b order]