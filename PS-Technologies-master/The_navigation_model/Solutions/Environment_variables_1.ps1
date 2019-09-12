Set-Location env:
Get-ChildItem # shows content for env drive
Get-Item -Path env:* | Get-Member # Shows methods en properties of the object an envirnoment variable is
Get-Item env:path # shows content of variable
Get-ChildItem env:computername #shows content of environment variables, because environment variables don't have child-objects

$env:LOGONSERVER
$env:path
$env:SystemDrive
