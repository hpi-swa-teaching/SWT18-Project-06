baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				
				package: 'MorphicTutorial-Core';
				package: 'MorphicTutorial-Lectures';
				package: 'MorphicTutorial-Tests' with: [spec requires: #('MorphicTutorial-Core' 'MorphicTutorial-Lectures')];
				yourself.
			spec
				group: 'default' with: #('MorphicTutorial-Core' 'MorphicTutorial-Lectures');
				group: 'tests' with: #('MorphicTutorial-Tests')];
				yourself