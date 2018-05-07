editor
evaluateCode
"We can use this function as soon we understand the code editor more and have access to the code."

	|code Editor|
	code := self codeEditor contents asString.
	Editor := TextEditor new.
	Transcript showln: Editor class.
	Editor addString: code.
	Editor printIt.
	