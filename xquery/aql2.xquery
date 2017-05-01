for $ev in composition//observation//event
	
	for $measr in $ev/cluster/item/measurement
		let $m := ($measr/magnitude, $measr/units)	

return <row>{$m}</row>