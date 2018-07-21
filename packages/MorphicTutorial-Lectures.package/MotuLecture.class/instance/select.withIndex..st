code-transformation
select: aCollection withIndex: aBlock
	| aStream |
	aStream := WriteStream on: (aCollection species new: aCollection size).
	1 to: aCollection size do: [:index |
		(aBlock value: (aCollection at: index) value: index)
			ifTrue: [aStream nextPut: (aCollection at: index)]].
	^ aStream contents
	