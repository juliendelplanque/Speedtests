mean
meanDownload
	^ (self speedtests
		inject: 0
		into: [ :sum :current | sum + current download ]) / self speedtests size