as yet unclassified
checkLectureMethod: aPlaygroundMorph
	|asserter path|
	
	asserter := MotuAssertion new.
	path := self perform: self lectureMethod.

	[
	asserter assert: path hasClass: ByteString errMessage: 'You did not return a String'.
	asserter assertBlock: [(FileDirectory uri: '') fileExists: path] errMessage: 'There is no file at the directory you returned.'.
	self markAsPassed] 
		on: Error do: [:e | self markAsFailedWithMessage: e asString]