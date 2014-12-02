let $res := fn:doc("resume.xml")
for $r1 in $res//resume
for $r2 in $res//resume
return
    if ($r1//skill = $r2//skill and $r1//@rID neq $r2//@rID)
    then $r1//@rID
    else ()
    
    
    (:
     if $r1[@what = $r2//@what]
    then <result> { $r1//@rID } </result>
    else () :)
