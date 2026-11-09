# Copies the citizenship app's public pages and answer files into BOTH websites:
#   - MARKETING\site\citizenship  -> sbadevs.com (the source of truth from 2026-11-09, private repo syedbilalalam1/sbadevs, Vercel)
#   - WEBSITE\citizenship          -> syedbilalalam1.github.io/apps (the public mirror old app builds still fetch from)
# Then commit and push both repos.
$source = Join-Path $PSScriptRoot "..\US CITIZENSHIP TEST\dynamic-answers\public"
$targets = @(
    (Join-Path $PSScriptRoot "..\MARKETING\site\citizenship"),
    (Join-Path $PSScriptRoot "citizenship")
)
foreach ($target in $targets) {
    New-Item -ItemType Directory -Force $target | Out-Null
    foreach ($file in "privacy.html", "support.html", "dynamic-answers.json", "zip-districts.json") {
        Copy-Item (Join-Path $source $file) (Join-Path $target $file) -Force
    }
}
Write-Output "Copied the citizenship files to sbadevs.com (MARKETING\site) and the github.io mirror (WEBSITE)."
Write-Output "Now commit and push both: MARKETING\site (git push) and WEBSITE (git push)."
