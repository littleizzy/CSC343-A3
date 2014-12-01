let $res := fn:doc("resume.xml")
let $pos := fn:doc("posting.xml")
for $p in $pos//posting
for $r in $res//resume
return 
    if ($pos//posting[@pID="P1"])
    then (empty($p//@what intersect $r//@what))
    else <nay/>
