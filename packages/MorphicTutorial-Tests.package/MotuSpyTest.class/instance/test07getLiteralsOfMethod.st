as yet unclassified
test07getLiteralsOfMethod
	
	| method literals |
	method := MotuSpyMorphMock >> #complexMethod:.
	literals := { #position: . #width . #color: . #complexMethod: }.
	self assert: ((spy literalsOf: method) includesAllOf: literals)
	