# Repository Guidelines

## Project Structure & Content Flow
- Jekyll/Octopress blog; generated site lives in `public/`, previewed locally on port 3000, and `_deploy/` is used by the deploy task.
- Source Markdown is under `source/_posts/`; legacy posts remain in `_posts/` and render fine but new articles should go in `source/_posts/`.
- Shared templates live in `_includes/`, config in `_config.yml`, and static assets (images, favicon) sit alongside the root Markdown pages (`index.markdown`, `about.markdown`).

## Build, Test, and Development Commands
- `bundle install` – install Ruby gems.
- `bundle exec rake generate` – build the site into `public/` with the current `JEKYLL_ENV`.
- `bundle exec rake preview` – run `jekyll serve` on port 3000 for local QA.
- `bundle exec rake deploy` – push the generated site to GitHub Pages via the `_deploy/` repo.
- Content helpers: `bundle exec rake new_post["my-title"]` or `bundle exec rake new_page[path]` scaffold front matter; `bundle exec rake clean` clears caches and rebuilt CSS.

## Coding Style & Naming Conventions
- Markdown posts use lowercase, hyphenated filenames prefixed with `YYYY-MM-DD-` (e.g., `2025-04-20-went-to-rubykaigi-2025.md`).
- Front matter: keep keys lowercase and quoted titles; avoid tab characters. Example:
  ```yaml
  ---
  layout: post
  title: "Trip report"
  date: 2025-05-31 12:00:00 +0900
  categories:
  ---
  ```
- Prefer concise headings and fenced code blocks with language tags; keep lines readable (<120 chars).

## Testing & QA
- No automated tests; verify changes with `bundle exec rake generate` (ensure it completes cleanly) and `bundle exec rake preview` to eyeball pages, links, and code blocks.
- For CSS/layout tweaks, include a quick before/after screenshot in the PR description.

## Commit & Pull Request Guidelines
- Commit messages in the history use short, present-tense descriptions (`add new diary`, `fix markdown to md`); follow that format.
- For each PR: summarize the change, note affected pages/paths (e.g., `_posts/2025-05-31-im-happy-to-binary-in-gentoo.md`), call out build/preview results, and attach screenshots when UI changes are visible.
- Link related issues if they exist, and keep diffs focused; separate content edits from config/theme changes when possible.
