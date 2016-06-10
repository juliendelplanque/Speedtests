roassal
graphWithYBlock: aBlock yTitle: aString
	| minDate b ds |
	minDate := self speedtests first dateAndTime.

	b := RTGrapher new.
	b extent: 1000 @ 250.

	ds := RTData new.
	ds interaction popupText: [ :speedTest | speedTest asString ].
	ds dotShape rectangle color: Color blue.
	ds points: self speedtests.
	ds x: [ :data | data dateAndTime asSeconds - minDate asSeconds ].
	ds y: aBlock.
	b add: ds.
	b addDecorator: (RTAverageDecorator new
							withLabel;
							labelConvertion: [ :average | average asFloat round: 2  ]).

	b axisX
		title: 'Time';
		labelRotation: -30;
		labelConversion: [ :v | (DateAndTime fromSeconds:  v + minDate asSeconds) asSpeedtestString ].

	b axisY title: aString.
	b axisXWithNumberOfTicks: self speedtests size.

	b build.
	^ b view
	