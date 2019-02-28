baselines
baseline: spec 
	<baseline>
	spec for: #common 
	do: [ 
		spec baseline: 'Spy2'
		with: [ spec repository: 'github://ObjectProfile/Spy2/src' ].
		
		spec 
		package: 'SCarvingExamples';
		package: 'SCarvingTestGenerator' with: [ spec requires: 'Spy2' ];
		package: 'SCarvingTestGenerator-Tests' with: [ spec requires: 'SCarvingTestGenerator' ]
	]