recording
findImplementingClass: aMessage in: aClass
	
	aClass == Object ifTrue: [^ Error new].
	(aClass selectors includes: aMessage selector) 
		ifTrue: [^ aClass] 
		ifFalse: [^ self findImplementingClass: aMessage in: aClass superclass]