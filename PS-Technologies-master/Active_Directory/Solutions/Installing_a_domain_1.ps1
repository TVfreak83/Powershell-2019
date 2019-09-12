Get-WindowsFeature
Install-WindowsFeature AD-Domain-Services `
    -IncludeAllSubFeature -IncludeManagementTools

Get-Module -ListAvailable
Import-Module -Name ADDSDeployment
Get-Command -Module ADDSDeployment

Install-ADDSForest
