# חדו״א 1ב — סיכום לפי אביב צנזור

סיכום קורס Calculus 1B (למדמ״ח) באוניברסיטת תל אביב, לפי אביב צנזור.

[![Deploy to GitHub Pages](https://github.com/orinlevi/calculus1B/actions/workflows/deploy.yml/badge.svg)](https://github.com/orinlevi/calculus1B/actions/workflows/deploy.yml)

**[📖 צפה באתר](https://orinlevi-neurocspsy.github.io/calculus1B/)**

## מבנה הפרויקט

| קובץ | תיאור |
|------|--------|
| `main.tex` | הקובץ הראשי — כותרת, תוכן עניינים ושליחת יחידות |
| `preamble.tex` | חבילות, הגדרות ושפות (עברית + אנגלית) |
| `macros.tex` | פקודות מותאמות (קבוצות מספרים, משפטים, הגדרות ועוד) |

## דרישות

- **מנוע LaTeX:** XeLaTeX (לתמיכה בעברית עם `fontspec` ו־`polyglossia`)
- **גופנים:** David CLM (לעברית)

## בניית ה-PDF

```bash
xelatex main.tex
```

או עם latexmk (מומלץ):

```bash
latexmk -xelatex main.tex
```

## אתר הסיכום

האתר נבנה עם [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) ומתארח ב-GitHub Pages.

### הרצה מקומית

```bash
pip install mkdocs-material
mkdocs serve
```

האתר יהיה זמין בכתובת `http://localhost:8000`

## מחבר

אורין לוי
