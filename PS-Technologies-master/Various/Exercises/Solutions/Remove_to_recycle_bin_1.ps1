"hello" | out-file -FilePath c:\tmp\deleteme.txt
$shell = new-object -comobject "Shell.Application"
$folder = $shell.Namespace("c:\tmp")
$item = $folder.ParseName("deleteme.txt")
$item.InvokeVerb("delete")
