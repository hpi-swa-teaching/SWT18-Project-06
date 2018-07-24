code-transformation
methodName
	| parameter selector crossed |

	"Get parameters from the solution, because it knows the correct names for sure. They are missing in the lectureMethod selector."
	parameter := (self extractParameterNamesFrom: (self extractMethodName: self solutionMethod getSource asString)) collect: [:p | ': ', p, ' '].
	
	"Therefore the selector parts have to be crossed over with the parameter names to obtain the method name."
	selector := (self lectureMethod selector asString splitBy: ':') reject: [:s | s isEmpty].
	crossed := self crossArray: selector with: parameter.
	^ (crossed joinSeparatedBy: '') withBlanksTrimmed