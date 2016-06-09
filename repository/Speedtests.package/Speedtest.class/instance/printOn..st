printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< '(Date: ';
		<< self printDateAndTime;
		cr;
		<< 'Ping: ';
		<< self ping asString;
		<< ' ms';
		cr;
		<< 'DL: ';
		<< self download asString;
		<< ' Mbps';
		cr;
		<< 'UP: ';
		<< self upload asString;
		<< ' Mbps';
		<< $)