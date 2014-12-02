<result>
{ distinct-values(
	let $doc := fn:doc("interview.xml")
	for $i in $doc//interview
	where (not(exists($i//collegiality)))
	return data($i/@sID)
	)
}
</result>
