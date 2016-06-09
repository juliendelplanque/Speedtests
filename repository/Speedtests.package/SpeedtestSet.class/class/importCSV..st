as yet unclassified
importCSV: aString
	^ (NeoCSVReader on: aString readStream)
		skipHeader;
		recordClass: Speedtest;
		addField: #dateAndTime: converter: [ :string | DateAndTime fromString: string ];
		addFloatField: #ping:;
		addFloatField: #download:;
		addFloatField: #upload:;
		upToEnd.