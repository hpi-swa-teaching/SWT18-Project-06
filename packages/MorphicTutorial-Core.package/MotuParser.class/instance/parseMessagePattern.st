parse
parseMessagePattern
	"The Morphic Tutorial always compiles code into a method, but because the header should not be modifiable, it is missing during parsing"
	self motuParameters do: [:each |
    		(arguments at: 1 ifAbsentPut: OrderedCollection new) add: each]