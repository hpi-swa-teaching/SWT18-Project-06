as yet unclassified
tearDown
	super tearDown.
	[TARTestAutoRunner resumeTestAutoRunner] on: Error do: [:e|]
	