as yet unclassified
printOn: aStream

	aStream
		nextPutAll:  'spy<';
		nextPutAll: self morph printString;
		nextPutAll: '>'