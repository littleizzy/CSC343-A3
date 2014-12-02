<result>
{
let $res := fn:doc("resume.xml")
for $r1 in $res//resume, $r2 in $res//resume
where ($r1 << $r2)
return
    if (count($r1//skill) = count($r2//skill) and 
		every $skill in $r1//skill satisfies (
			$skill/@what = $r2//skill/@what and $skill/@level = $r2//skill[@what = $skill/@what]/@level
			)
		)
    then (data($r1//@rID), data($r2//@rID))
    else ()
}
</result>
