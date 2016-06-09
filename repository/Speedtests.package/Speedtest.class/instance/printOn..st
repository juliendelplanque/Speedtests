printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< '(Date: ';
		<< self printDateAndTime;
		cr;
		<< 'Ping: ';
		<< self ping asString;
		cr;
		<< 'DL: ';
		<< self download asString;
		cr;
		<< 'UP: ';
		<< self upload asString;
		<< $)