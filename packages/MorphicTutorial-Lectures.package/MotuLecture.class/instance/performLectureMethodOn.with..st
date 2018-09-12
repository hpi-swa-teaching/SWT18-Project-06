evaluation
performLectureMethodOn: baseObject with: argumentObject

	self assert: self lectureMethod methodClass == baseObject morph class.
	^ baseObject perform: self lectureMethod selector with: argumentObject