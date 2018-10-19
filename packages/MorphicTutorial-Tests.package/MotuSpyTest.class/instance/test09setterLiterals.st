as yet unclassified
test09setterLiterals
	
	| sourceCode literals setterLiterals |
	sourceCode := (MotuSpyMorphMock >> #complexMethod:) getSource asString.
	literals := { #position: . #width . #color: . #complexMethod: }.
	setterLiterals := { #position: }.
	self assert: ((spy findSetter: literals In: sourceCode) includesAllOf: setterLiterals)