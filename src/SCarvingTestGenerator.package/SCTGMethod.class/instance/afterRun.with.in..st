hooks
afterRun: methodName with: listOfArguments in: receiver
	(count > 0 and: [ methodName ~= #initialize ])
		ifFalse: [ ^ self ].
	SCTGAdditionTest 
		compile:
			(String
				streamContents: [ :str | 
					str
						nextPutAll: 'test';
						nextPutAll: (methodName asString copyReplaceAll: ':' with: '');
						nextPutAll: self class numTest asString;
						nextPut: Character cr;
						nextPutAll: 'self assert: (';
						nextPutAll: receiver storeString;
						nextPutAll: ' perform: ';
						nextPut: $#;
						nextPutAll: methodName;
						nextPutAll: ' withArguments: ';
						nextPutAll: listOfArguments storeString;
						nextPutAll: ') equals: ';
						nextPutAll: (self transformValue: value) ]).
	self class incrementNumTest