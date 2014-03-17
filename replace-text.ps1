$file = $args[0]
$original = $args[1]
$new = $args[2]
$in = Get-Content $file
$in | foreach {$_ -replace $original, $new } | out-file $file