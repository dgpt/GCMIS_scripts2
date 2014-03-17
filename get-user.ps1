import-module activedirectory

write-host $args[0]
foreach ($a in $args) {
    $a = ($a).ToString("000000")
    get-aduser -server tuner.retail.guitarcenter.com -filter {samaccountname -like $a}
}
