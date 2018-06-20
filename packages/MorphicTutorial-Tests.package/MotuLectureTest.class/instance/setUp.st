as yet unclassified
setUp
	super setUp.
	"AutoTDD freezes when we call compile: ... within a test.
	so we pause it (if possible) getting notified when our tests run.
	"
	[TARTestAutoRunner pauseTestAutoRunner] on: Error do: [:e|]