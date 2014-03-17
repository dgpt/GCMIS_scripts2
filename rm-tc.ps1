import-module activedirectory

$servers = @("tuner.retail.guitarcenter.com", "hammer.retail.guitarcenter.com")
$delim = "-"


foreach ($a in $args) {
    if (!($a.Contains($delim))) {
        $message = "`r`nArgument " + $a + " is not formatted correctly. `r`nPlease use the format xxx" + $delim + "yy, `r`nwhere x is the store number and y is the terminal number.`r`n"
        write-host $message
        Continue
    }
    $tcArgs = $a.Split($delim)
    $filter = $tcArgs[0] + "hptermpos" + $tcArgs[1] + "$"
    foreach ($server in $servers) {
        $adcomp = get-adcomputer -server $server -Filter {samAccountName -like $filter}
        if ($adcomp -eq $null) {
            write-host $filter not found!
        } else {
            $adcomp | Remove-ADComputer -Server $server
        }
    }
}