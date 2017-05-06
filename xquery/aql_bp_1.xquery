xquery version "3.0";
declare namespace xsi="http://www.w3.org/2001/XMLSchema-instance";
declare default element namespace "http://schemas.openehr.org/v1";

<root>
    {
    for $obs in composition//content[@xsi:type='OBSERVATION']

        for $protocol in $obs/protocol[@archetype_node_id='at0011']
            let $cuff := $protocol/items[@archetype_node_id='at0013']/value/value

        let $obs_data := $obs/data[@archetype_node_id='at0001']
        let $origin := $obs_data/origin/value

            for $event in $obs_data/events[@archetype_node_id='at0006']
            let $eventTime := $event/time/value

                for $data in $event/data[@archetype_node_id='at0003']
                        for $systolicElement in $data/items[@archetype_node_id='at0004']
                            let $systolic := $systolicElement/value/magnitude

                        for $diastolicElement in $data/items[@archetype_node_id='at0005']
                        let $diastolic := $diastolicElement/value/magnitude

    return
    <row>
        {
            (element Origin {$origin/text()},
            (element EventTime {$eventTime/text()}),
            (element Systolic {$systolic/text()}),
            (element Diastolic {$diastolic/text()}),
            (element Cuff {$cuff/text()}))
        }
    </row>
    }
</root>
