accessing
contents
	^ self item sublectures collect: [ :each | 
		MotuLectureListItemWrapper with: each model: self model parent: self]
