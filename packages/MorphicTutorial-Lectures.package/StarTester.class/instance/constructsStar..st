as yet unclassified
constructsStar: anArray

	|middle|
	
	anArray size > 5 ifFalse: [
		^ false].
	
	middle := self middle: anArray.
	^ (anArray withIndexCollect: [ :this :index | |next last|
		next := anArray at: (self indexOf: index offset: 1 in: anArray).
		last := anArray at: (self indexOf: index offset: 2 in: anArray).
		
		(self distFrom: this to: middle) > (self distFrom: next to: middle) ifTrue: [
			(self distFrom: next to: middle) < (self distFrom: last to: middle)
		] ifFalse: [
			(self distFrom: next to: middle) > (self distFrom: last to: middle)
		]]) reduce: [ :star :next |
			star and: next]