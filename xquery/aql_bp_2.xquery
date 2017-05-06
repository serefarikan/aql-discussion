for $ev in composition//observation//event
	let $time := $ev/time 
	for $measr in $ev/cluster/item/measurement
		let $m := ($measr/magnitude, $measr/units)	

return <row>{$time,  $m}</row>