$a = $b = 1

$a
$b

$a = 2

$a
$b

#No...
$c = $d = New-Object PSCustomObject -property @{ Name = "John"; nr = 5 }

$c
$d

$c.nr = 7

$d
