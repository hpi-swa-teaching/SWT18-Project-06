code-transformation
crossArray: aArray with: bArray
	| newCollection |
	(aArray size = 1 and: [bArray isEmpty]) ifTrue: [ ^ aArray].
	aArray size = bArray size 
		ifFalse: [ ^ self error: 'Arrays must have equal length.' ].
	newCollection := OrderedCollection new.
	1 to: aArray size do: [ :index | 
		newCollection 
			add: (aArray at: index); 
			add: (bArray at: index)].
	
	^ newCollection asArray
	
	