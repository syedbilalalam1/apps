# Apps website

The public website for all the apps: support and privacy pages (which Apple requires for every app)
and the files apps download to stay up to date. Hosted free on GitHub Pages at
**https://syedbilalalam1.github.io/apps/**.

| Path | What it is |
|---|---|
| `index.html` | List of apps with links |
| `citizenship/` | US Citizenship Test: `privacy.html`, `support.html`, and the answer files the app downloads (`dynamic-answers.json`, `zip-districts.json`) |

## Updating the citizenship app's files

The pages and answer files are made in the app's repo (`../US CITIZENSHIP TEST/dynamic-answers/public`).
After changing them there, copy them here and push:

```powershell
powershell -File update-citizenship.ps1
git add -A; git commit -m "Update citizenship files"; git push
```

GitHub Pages publishes the change within a minute or two. Phones pick up new answer files within about
12 hours.

## Adding another app

Make a folder (for example `green-card/`) with its own `privacy.html` and `support.html`, add it to
`index.html`, and use `https://syedbilalalam1.github.io/apps/green-card/privacy.html` and
`.../support.html` in App Store Connect.

Only public pages go here: this repo is public.
