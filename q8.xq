<report>
{
	let $d1 := fn:doc("interview.xml")
	let $d2 := fn:doc("posting.xml")
	let $d3 := fn:doc("resume.xml")
	
	for $int in $d1//interview
	return 
	<interview>
	{
		let $resume := $d3//resume[@rID = $int/@rID]
		let $posting := $d2//posting[@pID = $int/@pID]
		return (
		<who rID="{data($int/@rID)}" forename="{data($resume//forename)}" surname="{data($resume//surname)}"/>, 
		<position> {data($posting/position)} </position>, 
		<match> {
			sum(
				for $pskill in $posting/reqSkill
				let $rskill := $resume//skill[@what = $pskill/@what]
				return 
					if (empty($rskill) or ($pskill/@level gt $rskill/@level))
					then -data($pskill/@importance)
					else data($pskill/@importance)
				)
		} </match>,
		<average> {
				avg(($int//answer, $int//techProficiency, $int//communication, $int//enthusiasm, $int//collegiality))
		} </average>
		)
	}
	</interview>
}
</report>
