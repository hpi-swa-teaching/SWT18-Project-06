accessing
historySelectors

	| selectors |
	selectors := OrderedCollection new.
	self history do: [ :message | selectors addLast: message selector].
	^ selectors