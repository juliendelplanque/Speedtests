as yet unclassified
fromFile: file
	| fileName date time lines |
	fileName := ((file basename splitOn: '.txt') first splitOn: $_) second.
	date := ((((fileName splitOn: $-) first splitOn: $.) swap: 1 with: 2) fold: [ :a :b | a , '.' , b ]) asDate.
	time := (fileName splitOn: $-) last asTime.
	lines := file contents splitOn: Character lf.
	
	[ ^ self new
			dateAndTime: (DateAndTime date: date time: time);
			ping: (lines first splitOn: Character space) second asNumber;
			download: (lines second splitOn: Character space) second asNumber;
			upload: (lines third splitOn: Character space) second asNumber;
			yourself ]
		on: Error
		do: [ 
			^ self new
				dateAndTime: (DateAndTime date: date time: time);
				ping: 0;
				download: 0;
				upload: 0;
				yourself ]