exporting
graphsAsHTMLIn: aDirectory
	(aDirectory exists)
		ifFalse: [ self error: ('{1} does not exists.' format: { aDirectory fullName}) ].
	(aDirectory isDirectory)
		ifFalse: [ self error: ('{1} is not a directory.' format: { aDirectory fullName}) ].
	
	RTHTML5Exporter new
		directory: aDirectory;
		fileName: 'ping.html';
		export: self pingGraph;
		fileName: 'download.html';
		export: self downloadGraph;
		fileName: 'upload.html';
		export: self uploadGraph