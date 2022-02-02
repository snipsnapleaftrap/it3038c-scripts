function getLocalUser{
Get-LocalUser -name "Administrator"
}

write-host(Get-LocalUser)

$LocalUser = Get-LocalUser -name "Administrator"

write-host("User is: $LocalUser")