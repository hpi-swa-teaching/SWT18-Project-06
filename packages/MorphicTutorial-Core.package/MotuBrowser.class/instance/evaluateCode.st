editor
evaluateCode
	|code Editor|
	code := self codeEditor contents asString.
	Editor := TextEditor new.
	Transcript showln: Editor class.
	Editor addString: code.
	Editor printIt.
	