instance creation
fromFile: aFileReference
	| lines |
	lines := aFileReference contents splitOn: Character lf.
	
	^ self new
		dateAndTime: (self parseDateAndTime: aFileReference basename);
		ping: (lines first splitOn: Character space) second asNumber;
		download: (lines second splitOn: Character space) second asNumber;
		upload: (lines third splitOn: Character space) second asNumber;
		yourself