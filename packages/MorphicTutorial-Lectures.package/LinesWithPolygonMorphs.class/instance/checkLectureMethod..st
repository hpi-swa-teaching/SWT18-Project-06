as yet unclassified
checkLectureMethod: aPlaygroundMorph 
	| polygon asserter |

	polygon := self createLineFrom: 0 @ 0 to: 100 @ 100.
	asserter := MotuAssertion new.
	
	[
	asserter assert: polygon hasClass:PolygonMorph errMessage: 'Your method does not return a PolygonMorph.'.
	asserter assertBlockCollection: {
		[polygon vertices size = 2]. 
		[polygon vertices first = (0@0)].
		[polygon vertices last  = (100@ 100)]
		} errMessage: 'You should pass the two given points to the PolygonMorph.'.
	asserter assert: polygon borderColor equals: Color red errMessage: 'Your line should be red.'.
	aPlaygroundMorph addMorph: polygon.
	self pass] 
		on: Error do: [:e | self failWith: e asString]
	

	