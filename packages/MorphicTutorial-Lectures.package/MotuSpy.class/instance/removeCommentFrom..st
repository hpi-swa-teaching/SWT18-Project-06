spying
removeCommentFrom: aText

	| noncomments |
	noncomments := ''.
	(aText splitBy: '"') withIndexDo: [ :item  :index | index odd ifTrue: [noncomments := noncomments,item]].
	^ noncomments