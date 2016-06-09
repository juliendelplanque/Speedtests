parsing
parseDateAndTime: aFileName
	| withoutPrefixAndSuffix date time |
	withoutPrefixAndSuffix := (aFileName withoutSuffix: '.txt') withoutPrefix: 'speedtest_'.
	date := ((((withoutPrefixAndSuffix copyUpTo: $-) splitOn: $.) swap: 1 with: 2) joinUsing: $.) asDate.
	time := (withoutPrefixAndSuffix splitOn: $-) last asTime.
	^ DateAndTime date: date time: time