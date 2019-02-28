as yet unclassified
generateTestSCTGAddition
	^ SCTGProfiler profile:[
		SCTGAddition new pi.
		SCTGAddition new increment.
		SCTGAddition new stringDefault.
		SCTGAddition new incrementWith: 4.
		SCTGAddition new add: 2 with: 5.
		SCTGAddition new stringWith: 'Hello World'.
	] onPackagesMatching:'SCarvingEx*'.