instance creation
fromFiles: aListOfFile
	^ self new
		speedtests: (((aListOfFile collect: [ :file |
										Speedtest fromFile: file ]) 
											reject: #isNil) 
												sorted: [ :a :b | a dateAndTime < b dateAndTime ]);
		yourself.