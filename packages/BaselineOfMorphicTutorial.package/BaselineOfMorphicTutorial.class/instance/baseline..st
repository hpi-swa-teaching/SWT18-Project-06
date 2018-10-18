baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [spec
				package: 'MorphicTutorial-Lectures';
				package: 'MorphicTutorial-Core' with: [spec requires: #('MorphicTutorial-Lectures')];
				package: 'MorphicTutorial-TestMocks' with: [spec requires: #('MorphicTutorial-Core' 'MorphicTutorial-Lectures' )];
				package: 'MorphicTutorial-Tests' with: [spec requires: #('MorphicTutorial-Core' 'MorphicTutorial-Lectures' )];
				yourself.
			spec
				group: 'default' with: #('MorphicTutorial-Core' 'MorphicTutorial-Lectures');
				group: 'tests' with: #('MorphicTutorial-Tests' 'MorphicTutorial-TestMocks')];
				yourself