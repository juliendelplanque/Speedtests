mean
meanPing
	^ (self speedtests
		inject: 0
		into: [ :sum :current | sum + current ping ]) / self speedtests size