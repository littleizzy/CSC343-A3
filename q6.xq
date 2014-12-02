let $res := fn:doc("resume.xml")
for $r1 in $res//resume
for $r2 in $res//resume
return
    $r1[@what = $r2//@what]
(:    then <result> { $r1//@rID } </result>
    else () :)
