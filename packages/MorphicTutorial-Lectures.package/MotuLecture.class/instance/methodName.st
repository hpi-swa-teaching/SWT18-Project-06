code-transformation
methodName
	| parameter selector crossed |
	
	parameter := (self extractParameterNamesFrom: (self extractMethodName: self solutionMethod getSource asString)) collect: [:p | ': ', p, ' '].
	selector := (self lectureMethod selector asString splitBy: ':') reject: [:s | s isEmpty].
	crossed := self crossArray: selector with: parameter.
	^ (crossed joinSeparatedBy: '') withBlanksTrimmed