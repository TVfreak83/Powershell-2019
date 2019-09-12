Get-CimInstance win32_computersystem -ComputerName . | FL -Property SystemType, Manufacturer, Model
Get-CimInstance Win32_ComputerSystem -ComputerName . -Property SystemType, Manufacturer, Model

Get-CimInstance Win32_QuickFixEngineering -ComputerName . | Ft -Property HotFixID
Get-CimInstance Win32_QuickFixEngineering -ComputerName . -Property HotFixID

Get-HotFix
