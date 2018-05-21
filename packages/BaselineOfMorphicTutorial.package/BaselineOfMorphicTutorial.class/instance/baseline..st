baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				baseline: 'Widgets' with: 
					[ spec repository: 'github://hpi-swa/widgets:master/repository' ];
				yourself.
			spec
				
				package: 'MorphicTutorial-Core' with: [spec requires: #('Widgets')];
				package: 'MorphicTutorial-Lectures';
				package: 'MorphicTutorial-TestMocks' with: [spec requires: #('MorphicTutorial-Core' 'MorphicTutorial-Lectures' )];
				package: 'MorphicTutorial-Tests' with: [spec requires: #('MorphicTutorial-Core' 'MorphicTutorial-Lectures' )];
				yourself.
			spec
				group: 'default' with: #('MorphicTutorial-Core' 'MorphicTutorial-Lectures');
				group: 'tests' with: #('MorphicTutorial-Tests' 'MorphicTutorial-TestMocks')];
				yourself