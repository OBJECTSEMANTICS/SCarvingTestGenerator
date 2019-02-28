as yet unclassified
transformValue: aValue
	^ aValue isString
		ifFalse: [ aValue asString ]
		ifTrue: [ '''' , aValue asString , '''' ]