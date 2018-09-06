as yet unclassified
allCategories
	^ (self allSubclasses collect: [:categoryClass | categoryClass new]) sort: [:a :b | 
		a name <= b name]