spying
findImplementingClass: aMessage in: aClass
	
	aClass superclass ifNil: [^ ProtoObject ].
	(aClass selectors includes: aMessage selector) 
		ifTrue: [^ aClass] 
		ifFalse: [^ self findImplementingClass: aMessage in: aClass superclass]