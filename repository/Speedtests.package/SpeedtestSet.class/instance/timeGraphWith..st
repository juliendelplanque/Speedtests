roassal
timeGraphWith: aBlock
	| minDate builder |
	minDate := self speedtests first dateAndTime.

	builder := RTGrapher new.
	builder extent: 1000 @ 250.
	
	aBlock value: builder value: self speedtests value: minDate.

	builder axisX 
		labelRotation: -30;
		labelConversion: [ :v | (DateAndTime fromSeconds:  v + minDate asSeconds) asSpeedtestString ].

	builder axisXWithNumberOfTicks: self speedtests size.

	builder build.
	^ builder view
	