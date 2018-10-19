spying
internalMethods: aCompiledMethod

	| argumentMethods literals text getters|
	text := self sourceCodeOf: aCompiledMethod.
	literals := self literalsOf: aCompiledMethod.
	getters := self findGetter: literals In: text.
	argumentMethods := self findSetter: literals In: text.	
	^ getters union: argumentMethods

	