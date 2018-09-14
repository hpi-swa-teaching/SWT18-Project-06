recording
internalMethods: aCompiledMethod

	| argumentMethods literals text getters|
	text := aCompiledMethod getSource asString.
	literals := aCompiledMethod literals select: [:lit | self morph class canUnderstand: lit].
	getters := self findGetter: literals In: text.
	argumentMethods := self findSetter: literals In: text.	
	^ getters union: argumentMethods

	