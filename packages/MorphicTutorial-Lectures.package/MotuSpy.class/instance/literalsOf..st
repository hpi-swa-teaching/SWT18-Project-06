spying
literalsOf: aCompiledMethod

	^ aCompiledMethod literals select: [:lit | self morph class canUnderstand: lit]