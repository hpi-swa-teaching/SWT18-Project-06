baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				
				package: 'MorphicTutorial-Core';
				package: 'MorphicTutorial-Tests' with: [spec requires: #('MorphicTutorial-Core')];
				yourself.
			spec
				group: 'default' with: #('MorphicTutorial-Core');
				group: 'tests' with: #('MorphicTutorial-Tests')];
				yourself.