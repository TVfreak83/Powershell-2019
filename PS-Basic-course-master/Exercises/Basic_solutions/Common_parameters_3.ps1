Remove-Item -Path "c:\tmp\dont read me.txt" -WhatIf # seems ok
Remove-Item -Path "c:\tmp\dont read me.txt"
Remove-Item -Path "c:\tmp\dont read me.txt" -Force
# nothing deletes the file