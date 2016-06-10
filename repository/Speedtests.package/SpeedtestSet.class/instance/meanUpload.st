mean
meanUpload
	^ (self speedtests
		inject: 0
		into: [ :sum :current | sum + current upload ]) / self speedtests size