Get-Process | Sort-Object -Property Name
Get-Process | Sort-Object -Property Name, ID
Get-Process |
Sort-Object -Property @{E="Name"; Ascending=$True},@{E="ID";Ascending=$false}
