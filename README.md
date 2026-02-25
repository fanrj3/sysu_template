# Tsinghua Beamer Presentation Template

A clean, modern Beamer (LaTeX) slide template with Tsinghua University branding. Uses the **Lexend** + **Inter** font family for a Google Fonts-like aesthetic while retaining full academic functionality.

## Features

- **Tsinghua Purple** colour scheme with customisable accent colours
- Automatic **section divider** pages with decorative rules
- **Smooth navigation bar** header (section dots) + page-number footer
- Full **biblatex / Biber** citation support (footnote style)
- Built-in styles for **code listings**, **TikZ diagrams**, **tables**, **multi-column layouts**, and **placeholder boxes**
- **XeLaTeX** + **fontspec** pipeline — works on Windows, macOS, and Linux
- CJK support out of the box (Microsoft YaHei / SimSun fallback)

## Quick Start

### Prerequisites

| Tool       | Minimum version | Notes                              |
|:-----------|:----------------|:-----------------------------------|
| TeX Live   | 2023+           | or MiKTeX 2023+                    |
| XeLaTeX    | bundled         | comes with TeX Live / MiKTeX       |
| Biber      | bundled         | for bibliography processing        |
| latexmk    | bundled         | optional but recommended           |

### Build

```bash
# Option 1: latexmk (recommended — auto-runs biber)
latexmk slide.tex

# Option 2: manual
xelatex  slide.tex
biber    slide
xelatex  slide.tex
xelatex  slide.tex
```

### File Structure

```
template/
├── slide.tex           # Main presentation source
├── Tsinghua.sty        # Beamer theme (colour / layout)
├── .latexmkrc          # latexmk config (XeLaTeX mode)
├── README.md           # This file
├── fonts/
│   ├── Inter/          # Inter font family (.ttf/.otf)
│   └── Lexend/         # Lexend font family (.ttf)
├── pic/                # Images & logos
│   └── Tsinghua_University_Logo.eps
└── ref/
    └── refs.bib        # Bibliography database
```

## Customisation

### Change Author / Title

Edit the metadata block near the top of `slide.tex`:

```latex
\author{Your Name}
\title[Short Title]{Your Presentation Title}
\institute{Tsinghua University}
\date{\today}
```

### Change Colours

All accent colours are defined at the top of `slide.tex`:

```latex
\definecolor{THUPurple}{RGB}{111, 23, 135}
\definecolor{AccentBlue}{RGB}{0, 102, 204}
```

### Add Your Own Figures

Place images in `pic/` and reference them:

```latex
\includegraphics[width=0.8\textwidth]{my-figure.png}
```

### Placeholder for Draft Slides

```latex
\placeholder{Figure to be added later}
```

### Add References

Add entries to `ref/refs.bib`, then cite in slides:

```latex
This was shown by prior work.\footfullcite{vaswani2017attention}
```

## Template Contents (Examples Included)

| Slide type              | What it demonstrates                          |
|:------------------------|:----------------------------------------------|
| Title page              | Logo, author, institute, supervisor            |
| Outline                 | Numbered section list                          |
| Text + citations        | Footnote-style references via biblatex         |
| Research question        | Coloured block environment                     |
| Two-column + TikZ       | Side-by-side layout with inline diagram        |
| Mathematical formulation| Display math with underbrace annotations       |
| Algorithm steps          | Nested enumerate with colour accents           |
| Results table            | booktabs + multirow professional table         |
| Ablation table           | Compact comparison table                       |
| Heatmap visualisation    | TikZ-generated pseudo-heatmap                  |
| Flowchart                | TikZ node-based flowchart with decision node   |
| Code listing             | Python code with syntax highlighting           |
| Columns + placeholder    | Draft-mode placeholder box                     |
| Multi-column             | Two-column itemize with summary block          |
| Conclusion               | Contributions + future directions              |
| Thank-you page           | Contact info                                   |
| References               | Full bibliography page                         |

## License

This template is provided as-is for academic use. The Tsinghua University logo is a registered trademark of Tsinghua University.
