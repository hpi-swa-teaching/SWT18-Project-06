spying
sourceCodeOf: aCompiledMethod

	| text |
	text := aCompiledMethod getSource asString.
	^ self removeCommentFrom: text