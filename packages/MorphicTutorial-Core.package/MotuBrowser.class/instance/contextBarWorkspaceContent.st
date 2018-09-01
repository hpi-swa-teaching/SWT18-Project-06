content
contextBarWorkspaceContent

	| content |
	content := 'Workspace'.
	self selectedLecture parameterNames 
		ifNotEmpty: [:parameters |
			content := content, ', provided parameters: '.
			parameters do: [:each |
				content := content, each, ' ']].
	^ content