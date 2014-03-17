$a = 0
$b = 1
workflow pigs {
    Parallel
    {
        $a += $b
        $b += 1
        write-host $a $b
    }
}