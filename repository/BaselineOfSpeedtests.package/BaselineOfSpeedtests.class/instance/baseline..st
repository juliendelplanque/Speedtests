baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec blessing: #baseline.
			spec
				package: 'Speedtests' with: [ spec requires: #('Roassal2' 'NeoCSV') ].
			spec
				project: 'Roassal2' with: [ 
					spec
						className: 'ConfigurationOfRoassal2';
						version: #stable;
						repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ].
			spec
				project: 'NeoCSV' with: [ 
					spec
						className: 'ConfigurationOfNeoCSV';
						version: #stable;
						repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/Neo/main/' ].
			spec
				group: 'default' with: 'Speedtests' ]
