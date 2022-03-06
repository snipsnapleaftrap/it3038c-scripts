function getVersion{
  $PSVersionTable.PSVersion
}

write-host(getVersion)

$Version = getVersion

write-host("Powershell Version: $Version")
