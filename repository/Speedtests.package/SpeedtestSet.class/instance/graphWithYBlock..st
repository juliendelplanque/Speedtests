roassal
graphWithYBlock: aBlock
	| minDate b ds |
	minDate := self speedtests first dateAndTime.

	b := RTGrapher new.
	b extent: 1000 @ 250.

	ds := RTData new.
	ds interaction popup.
	ds dotShape rectangle color: Color blue.
	ds points: self speedtests.
	ds connect.
	ds x: [ :data | data dateAndTime asSeconds - minDate asSeconds ].
	ds y: aBlock.
	b add: ds.

	b axisX 
		labelRotation: -30;
		labelConversion: [ :v | (DateAndTime fromSeconds:  v + minDate asSeconds) ].

	b axisXWithNumberOfTicks: self speedtests size.

	b build.
	^ b view
	