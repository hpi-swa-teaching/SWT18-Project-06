as yet unclassified
setUp
	spy := MotuSpy spyOn: Morph new.
	spy spyReporter: self.
	self failMessage: nil