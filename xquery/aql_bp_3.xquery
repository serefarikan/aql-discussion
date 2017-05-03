for $obs in composition//observation
	let $origin := $obs/origin/value
	let $event := $obs//event
	let $time := $event/time
	for $measr in $event/cluster/item/measurement
		let $m := $measr/magnitude

	for $p in $obs/protocol/item_tree/element

return <row>{($origin , $time ,  $m, $p)}</row>	