Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Speak('To bad it was the last lesson, just when it started to get in to our brain  POWERSHELL forever')