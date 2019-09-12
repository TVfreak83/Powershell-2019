$belgium = Invoke-WebRequest -uri https://en.wikipedia.org/wiki/Belgium
$netherlands = Invoke-WebRequest -uri https://en.wikipedia.org/wiki/Netherlands

$belgium | Get-Member

$belgium.content | Measure-Object -Word
$netherlands.Content | Measure-Object -Word
