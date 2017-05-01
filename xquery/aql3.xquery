for $obs in composition//observation
	
	let $event := $obs//event
	for $measr in $event/cluster/item/measurement
		let $m := ($measr/magnitude, $measr/units)	

	for $p in $obs/protocol/item_tree/element

return <row>{($m, $p)}</row>	