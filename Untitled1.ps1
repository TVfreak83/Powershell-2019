$Type = "chuckNorris"
$PlayAudio = $true

param(
    [Parameter(Mandatory=$True,
    ValueFromPipeline=$true)]
    [ValidateSet("cat","dog","giraffe","chucknorris","other")]
    [string]$Type,
    [switch]$PlayAudio
)

Switch ($Type.ToLower()) {
    "cat" {
        $Fact = (ConvertFrom-Json (Invoke-WebRequest -Uri 'https://the-cat-fact.herokuapp.com/api/randomfact')).data.fact
    }
    "dog" {
        $Fact = (ConvertFrom-Json (Invoke-WebRequest -Uri 'https://dog-api.kinduff.com/api/facts')).facts
    }
    "giraffe" {
        $all = (Invoke-WebRequest -Uri 'http://www.randomgiraffefacts.com/index.cgi')
        $Fact = ($all.AllElements | Where-Object tagname -eq "H3" | Select-Object -First 1).innerHTML
    }
    "chuckNorris" {
        $Fact = (ConvertFrom-Json (Invoke-WebRequest -Uri 'https://api.chucknorris.io/jokes/random')).Value
    }
    default {
        $Fact = "A `"$type`" may or may not be a real animal."
    }
}

if ($PlayAudio) {
    Add-Type -AssemblyName System.Speech
    $SpeechSynth = New-Object System.Speech.Synthesis.SpeechSynthesizer
    $SpeechSynth.Speak($Fact)
}
else {
    write-output $Fact
}