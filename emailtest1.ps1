function getIP{
(Get-NetIPAddress).IPv4Address | select-string "192"
}

write-host(getIP)

$IP = getIP


function getLocalUser{
(Get-LocalUser).localuser | select-string "Admin"
}

write-host(Get-LocalUser)

$LocalUser = Get-LocalUser

write-host("This is my hostname: $LocalUser")


function getLocalUser{
Get-LocalUser -name "Administrator"
}

write-host(Get-LocalUser)

$LocalUser = Get-LocalUser -name "Administrator"

write-host("User is: $LocalUser")


function getDate{
Get-Date   
}

write-host(getDate)

$Date = getDate

write-host("Today's date is Sunday: $Date")


function getVersion{
  $PSVersionTable.PSVersion
}

write-host(getVersion)

$Version = getVersion

write-host("Powershell Version: $Version")


function getHostName{
  $env:Computername
}

write-host(getHostName)

$Hostname = getHostname

write-host("Hostname is: $Hostname")



Send-MailMessage -to "crabtrjh@mail.uc.edu" -from "joshuacrabtree32@gmail.com" -subject "IT3038c Windows SysInfo" -Body "My machines ip address is: $IP .User is: $LocalUser .Hostname is: $Hostname .Powershell Version: $Version .Today's date is Sunday: $Date " -SmtpServer smtp.gmail.com -port 587 -UseSsl -Credential (Get-Credential)