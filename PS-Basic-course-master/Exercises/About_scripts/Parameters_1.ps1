param(
    [Parameter(Mandatory=$True,
    ValueFromPipeline=$true)]
    [ValidateSet("cat","dog","giraffe","chucknorris","other")]
    [string]$Type,
    [switch]$PlayAudio
)

