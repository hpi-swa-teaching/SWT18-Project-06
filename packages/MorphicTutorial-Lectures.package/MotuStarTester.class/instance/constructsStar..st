star checking
constructsStar: anArray

	"6 edges means 3 tips"
	anArray size > 5
		ifFalse: [^ false].
	
	^ self constructsStar: anArray around: (self middle: anArray)