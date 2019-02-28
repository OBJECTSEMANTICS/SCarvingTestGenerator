hooks
run: methodName with: listOfArguments in: receiver
	[ S2Lock unlock.
	value := originalMethod
		valueWithReceiver: receiver
		arguments: listOfArguments ]
		ensure: [ S2Lock lock ].
	^ value