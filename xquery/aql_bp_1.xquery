for $obs in composition//observation
	let $origin := $obs/origin/value
	for $measr in $obs/event/cluster/item/measurement
		let $m := $measr/magnitude
	for $p in $obs/protocol/item_tree/element

return <row>{($origin , $m, $p)}</row>