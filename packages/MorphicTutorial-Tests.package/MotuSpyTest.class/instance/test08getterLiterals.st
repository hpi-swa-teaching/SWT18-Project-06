as yet unclassified
test08getterLiterals
	
	| sourceCode literals getterLiterals |
	sourceCode := (MotuSpyMorphMock >> #complexMethod:) getSource asString.
	literals := { #position: . #width . #color: . #complexMethod: }.
	getterLiterals := { #width }.
	self assert: ((spy findGetter: literals In: sourceCode) includesAllOf: getterLiterals)