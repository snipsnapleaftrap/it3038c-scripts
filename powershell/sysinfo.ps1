function getIP{
(Get-NetIPAddress).IPv4Address | select-string "192"
}

write-host(getIP)

$IP = getIP

write-host("Thisis our machines IP: $IP")