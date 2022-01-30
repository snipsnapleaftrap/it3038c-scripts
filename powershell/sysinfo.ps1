function getIP{
    (Get-NetIPAddress).IPv4Address | Select-String "192"
}

write-host(getIP)

$IP = getIP

write-host("This is my machines IP: $IP")

test