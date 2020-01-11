Get-ChildItem -Filter *.md |
Foreach-Object {
    $folderPath = $_.BaseName
    New-Item -ItemType directory -Path $folderPath
}
