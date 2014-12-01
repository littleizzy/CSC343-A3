<skills>
{
	let $d := fn:doc("resume.xml")
	let $d2 := fn:doc("posting.xml")
	for $skill in distinct-values(data($d2/postings/posting/reqSkill/@what))
	return
	<skill name= "{$skill}">
	{
	for $l in (1, 2, 3, 4, 5)
	let $n := count($d/resumes/resume/skills/skill[@what=$skill and @level=$l])
	return
	<count level= "{$l}" n= "{$n}"> </count>
	}
	</skill>
}
