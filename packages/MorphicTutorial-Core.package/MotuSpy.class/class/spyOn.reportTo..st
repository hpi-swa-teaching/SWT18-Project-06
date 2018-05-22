as yet unclassified
spyOn: aMorph reportTo: aReporter

	^ self new
		morph: aMorph;
		reporter: aReporter;
		yourself