let $doc := doc("resume.xml")
for $res in $doc//resume
    where count($res//skill) >= 3
    return
        <q1>
        <rID>{$res//@rID}</rID>
        <name>{$res//forename}</name>
        <count>{count($res//skill)}</count>
        </q1>
