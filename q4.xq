<postings>
{
let $res := fn:doc("resume.xml")
let $pos := fn:doc("posting.xml")
let $rskills := $res//skill
for $p in $pos//posting
let $n := count(
        for $pskill in $p//reqSkill
        return $rskills[@what = $pskill/@what and @level ge $pskill/@level] 
    )
    where $n = 0
    return data($p/@pID)        
}
</postings>
