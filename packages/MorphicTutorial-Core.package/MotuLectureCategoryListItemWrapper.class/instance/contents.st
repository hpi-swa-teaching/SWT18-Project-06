accessing
contents
	^ self item sublectures collect: [ :each | 
		MotuLectureListItemWrapper with: each new model: self model parent: self]
