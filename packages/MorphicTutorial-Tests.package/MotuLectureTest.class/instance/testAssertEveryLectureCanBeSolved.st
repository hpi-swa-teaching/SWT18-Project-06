as yet unclassified
testAssertEveryLectureCanBeSolved
	| lecture playgroundMorph |

	MotuLecture allSubclasses do: [:aClass |
		lecture := aClass new.
		lecture skipTesting ifFalse: [
			playgroundMorph := MotuPlaygroundMock new.
			lecture setFailed.
			lecture checkCode: lecture solution on: playgroundMorph. 
			self assert: lecture passed]].
	MotuLecture resetAll