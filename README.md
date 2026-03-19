# PDPS Workshop Site

Static site for the Privacy, Data Protection & Surveillance Workshop series.

## Local development

1. Install Zola.
2. Run `zola serve` from the site root.
3. Open the local preview URL printed by Zola.

## Updating workshop data

Edit `data/workshops.toml` to add new editions. Each entry contains the edition, date, location, and program PDF path. Program PDFs live in `static/programs/` and should use the `YYYY-MM-DD-xx-program.pdf` naming convention.

## Content structure

- `content/_index.md`: Home page content.
- `content/program.md`: Latest program information.
- `content/archive/_index.md`: Full archive timeline.
- `content/policies/`: Privacy, accessibility, and code of conduct.

## Deployment

GitHub Pages deployment is configured in `.github/workflows/gh-pages.yml`. The workflow builds the site with Zola and deploys the `public/` directory.
