as yet unclassified
test09internalMethods
	
	| method literals setterLiterals |
	method := MotuSpyMorphMock >> #complexMethod:.
	literals := { #position: . #width . #color: . #complexMethod: }.
	setterLiterals := { #position: . #width } asCollection.
	self assert: ((spy internalMethods: method) includesAllOf: setterLiterals)