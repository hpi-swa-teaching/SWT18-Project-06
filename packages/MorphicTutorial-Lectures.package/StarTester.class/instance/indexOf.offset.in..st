as yet unclassified
indexOf: anInteger offset: offset in: anArray

	anInteger + offset > anArray size
		ifTrue: [
			^ anInteger + offset - anArray size]
		ifFalse: [
			^ anInteger + offset]
		