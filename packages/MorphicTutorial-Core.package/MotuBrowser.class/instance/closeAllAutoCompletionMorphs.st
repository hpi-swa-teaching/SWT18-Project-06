editor and playground
closeAllAutoCompletionMorphs
	"We do this to avoid a strange defect occuring during saving the editor's
	code while the auto completion is still visible (in order to Patrick)."
	(Project currentWorld submorphs
		select: [:morph | morph isKindOf: OMenuMorph])
		do: [:morph | morph abandon]