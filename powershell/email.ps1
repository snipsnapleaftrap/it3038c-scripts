function getIP{
(Get-NetIPAddress).IPv4Address | select-string "192"
}

write-host(getIP)

$IP = getIP





Send-MailMessage -to "crabtrjh@mail.uc.edu" -from "joshuacrabtree32@gmail.com" -subject "IT3038c Windows SysInfo" -Body "My machines ip address is: $IP" -SmtpServer smtp.gmail.com -port 587 -UseSsl -Credential (Get-Credential)