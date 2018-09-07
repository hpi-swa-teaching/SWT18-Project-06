accessing
contents
	^ self item sublectures collect: [ :each | 
		MotuLectureListItemWrapper with: each instance model: self model parent: self]
