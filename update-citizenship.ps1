# Copies the citizenship app's public pages and answer files into this website.
$source = Join-Path $PSScriptRoot "..\US CITIZENSHIP TEST\dynamic-answers\public"
$target = Join-Path $PSScriptRoot "citizenship"
New-Item -ItemType Directory -Force $target | Out-Null
foreach ($file in "privacy.html", "support.html", "dynamic-answers.json", "zip-districts.json") {
    Copy-Item (Join-Path $source $file) (Join-Path $target $file) -Force
}
Write-Output "Copied the citizenship files. Now commit and push."
