<result>
{ distinct-values((
	let $d := fn:doc("posting.xml")
	let $d2 := fn:doc("resume.xml")
	let $total := count($d2/resumes/resume)
	for $p in $d//postings/posting
	let $min := min(
		for $req in $p/reqSkill
		let $n := count($d2/resumes/resume[skills/skill/@what = $req/@what])
		return $n
		)
	where $min * 2 < $total
	return data($p/@pID)
	,
	let $d := fn:doc("posting.xml")
	let $d2 := fn:doc("resume.xml")
	for $p in $d//postings/posting
	let $extra := min(
		for $req in $p/reqSkill
		let $listed := $d2/resumes/resume/skills/skill[@what = $req/@what]
		let $total := count($d2/resumes/resume/skills/skill[@what = $req/@what])
		let $n := count($listed[@level < 4])
		return $total - 2 * $n)
	where $extra < 0
	return data($p/@pID)
	))
}
