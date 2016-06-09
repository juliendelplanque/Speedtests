exporting
asCSV
	^ String streamContents: [ :stream |
		| writer |
		writer := NeoCSVWriter on: stream.
		writer
			nextPut: #('date' 'ping (ms)' 'download (Mbit/s)' 'upload (Mbit/s)');
			addFields: #('dateAndTime' 'ping' 'download' 'upload');
			nextPutAll: self speedtests ]