# PDPS Workshop Site

Static site built with Zola and a structured block editor.

## Local preview

1. Install Zola.
2. Run `zola serve` (auto reload).

No auto reload:
- `./build-static.sh`
- `./serve-static.sh`

## Editing content (recommended)

1. Open `/editor/` in a Chromium browser.
2. Click **Open site folder** and select `PDPS_Zola_Site`.
3. Pick a file and edit in Builder.
4. Save (validation runs; Safe save writes backups to `data/_drafts/`).

Notes:
- Builder works only for `.md` pages.
- `.toml` files are text‑only.
- Page body must be empty; content lives in `extra.blocks`.
- Builder blocks reject raw HTML.

## Content model (blocks)

Front matter uses `extra.blocks = [ ... ]`.
Block types: `section_heading`, `paragraph`, `markdown`, `callout`, `card_grid`, `timeline`, `people_grid`, `schedule`, `button_row`, `map_embed`, `two_column`.
`two_column` supports `left_title`, `left_body`, `left_buttons`, `right_title`, `right_body`, `right_buttons`.

## Where things live

- Pages: `content/*.md`
- Editions timeline: `data/workshops.toml`
- Organizers: `data/organizers_current.toml`, `data/organizers_former.toml`
- Schedule: `data/program_*.toml`
- Maps: `data/locations.toml`
- PDFs: `static/programs/`
- Site config, nav, hero, footer: `zola.toml`

## Deployment

GitHub Pages is deployed via Actions. Use one workflow:
- `/.github/workflows/gh-pages.yml` (Actions Pages)
- or `/.github/workflows/deploy.yml` (gh-pages branch)

Set `base_url` in `zola.toml` to your Pages URL.
