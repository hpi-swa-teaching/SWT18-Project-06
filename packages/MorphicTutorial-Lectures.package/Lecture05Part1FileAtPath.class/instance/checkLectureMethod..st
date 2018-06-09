as yet unclassified
checkLectureMethod: aPlaygroundMorph
	|asserter path|
	
	asserter := MotuAssertion new.
	path := self perform: self lectureMethod.

	[
	asserter assertBlock: [(FileDirectory uri: '') fileExists: path] errMessage: 'There is no file at the directory you returned.'.
	self markAsPassed] 
		on: Error do: [:e | self markAsFailedWithMessage: e asString]