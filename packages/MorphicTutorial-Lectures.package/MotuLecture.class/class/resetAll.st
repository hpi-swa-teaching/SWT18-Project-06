as yet unclassified
resetAll

	self allSubclasses do: [:child | child instance resetLecture. child instance: nil]