spying
findImplementingClass: aSymbol in: aClass
	
	aClass superclass ifNil: [^ ProtoObject ].
	(aClass selectors includes: aSymbol) 
		ifTrue: [^ aClass] 
		ifFalse: [^ self findImplementingClass: aSymbol in: aClass superclass]