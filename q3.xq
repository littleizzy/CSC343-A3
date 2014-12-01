<result>
{
	let $d := fn:doc("posting.xml")
	for $p in $d//postings/posting
	let $max := max(data($p/reqSkill/@importance))
	return
		<posting pID= "{data($p/@pID)}">
		{
		for $req in $p/reqSkill
		where data($req/@importance) = $max
		return (data($req/@what), "-", data($req/@importance))
		}
		</posting>
}
</result>
