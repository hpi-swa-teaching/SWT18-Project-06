as yet unclassified
testAssertEveryLectureCanBeSolved
	| lecture playgroundMorph |

	MotuLecture allSubclasses do: [:aClass |
		Transcript show: 'Testing ', aClass, Character cr.
		lecture := aClass new.
		lecture skipTesting ifFalse: [
			playgroundMorph := MotuPlaygroundMock new.
			lecture setFailed.
			Transcript show: 'Start ', aClass, Character cr.
			lecture checkCode: lecture solution on: playgroundMorph. 
			Transcript show: 'End ', aClass, Character cr.
			self assert: lecture passed]]