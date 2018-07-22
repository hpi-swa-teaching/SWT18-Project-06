as yet unclassified
contents
	^ self item lectures collect: [ :each | 
		MotuLectureListItemWrapper with: (each instance) model: self model parent: self]
