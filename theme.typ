// ============================================================
// theme.typ — Mini-thème réutilisable pour présentations M1 COM
// ============================================================

// ── Palette de couleurs ──────────────────────────────────────
#let c-navy    = rgb("#1a2b4a")   // bleu foncé principal
#let c-blue    = rgb("#2d5f8a")   // bleu moyen (accents)
#let c-accent  = rgb("#3a8fc7")   // bleu clair (highlights)
#let c-grey    = rgb("#4a5568")   // gris texte secondaire
#let c-light   = rgb("#f0f4f8")   // fond clair (blocs)
#let c-white   = rgb("#ffffff")
#let c-gold    = rgb("#e8a820")   // couleur warning/takeaway

// ── Dimensions 16:9 ─────────────────────────────────────────
#let slide-w = 297mm
#let slide-h = 167mm

// ── Composant : Slide de titre de section ───────────────────
// Barre colorée en haut + titre centré sur fond navy
#let section-title-slide(title: []) = {
  set page(
    width: slide-w,
    height: slide-h,
    margin: 0pt,
    fill: c-navy,
    header: none,
    footer: none,
  )
  align(center + horizon)[
    #text(fill: c-white, size: 32pt, weight: "bold")[#title]
  ]
}

// ── Composant : Slide standard ──────────────────────────────
// En-tête coloré (bande navy) + contenu blanc
#let slide(title: [], body) = {
  set page(
    width: slide-w,
    height: slide-h,
    margin: (top: 0pt, left: 0pt, right: 0pt, bottom: 14pt),
    fill: c-white,
    header: {
      block(
        width: 100%,
        height: 44pt,
        fill: c-navy,
        inset: (x: 24pt, y: 0pt),
      )[
        #align(left + horizon)[
          #text(fill: c-white, size: 20pt, weight: "bold")[#title]
        ]
      ]
    },
    footer: {
      block(
        width: 100%,
        height: 14pt,
        fill: c-blue,
      )[
        #align(center + horizon)[
          #text(fill: c-white, size: 7pt)[IA Coding Agents — M1 Communication — 2025-2026]
          #h(1fr)
          #context {
            text(fill: c-white, size: 7pt)[#counter(page).display()]
          }
        ]
      ]
    },
  )
  pad(left: 24pt, right: 24pt, top: 8pt, bottom: 6pt)[
    #body
  ]
}

// ── Composant : Bloc "À retenir" (Takeaway) ─────────────────
#let takeaway(body) = block(
  width: 100%,
  fill: c-gold.lighten(75%),
  stroke: (left: 4pt + c-gold),
  inset: (x: 12pt, y: 8pt),
  radius: 3pt,
)[
  #text(weight: "bold", fill: c-gold.darken(20%))[💡 À retenir] \
  #v(2pt)
  #body
]

// ── Composant : Bloc "Question / Discussion" ─────────────────
#let question-bloc(body) = block(
  width: 100%,
  fill: c-accent.lighten(80%),
  stroke: (left: 4pt + c-accent),
  inset: (x: 12pt, y: 8pt),
  radius: 3pt,
)[
  #text(weight: "bold", fill: c-blue)[💬 Question / Discussion] \
  #v(2pt)
  #body
]

// ── Composant : Notes orateur ────────────────────────────────
// (visibles en mode édition, non imprimées sur les slides)
#let speaker-note(body) = block(
  width: 100%,
  fill: rgb("#f9f3d0"),
  stroke: (left: 3pt + rgb("#d4aa20")),
  inset: (x: 10pt, y: 6pt),
  radius: 2pt,
)[
  #text(size: 8pt, fill: rgb("#6b5500"), style: "italic")[
    🎤 *Note orateur :* #body
  ]
]

// ── Composant : Keyword / mot-clé mis en évidence ───────────
#let kw(body) = text(fill: c-blue, weight: "bold")[#body]

// ── Composant : Tag de slide (étiquette temporelle) ──────────
#let slide-tag(body) = box(
  fill: c-navy,
  inset: (x: 6pt, y: 3pt),
  radius: 3pt,
)[#text(fill: c-white, size: 8pt, weight: "bold")[#body]]

// ── Style global texte ───────────────────────────────────────
#let apply-theme(doc) = {
  set text(font: "Noto Sans", size: 13pt, fill: rgb("#1a202c"))
  set par(leading: 0.65em)
  set list(marker: text(fill: c-blue)[▸])
  show heading.where(level: 2): it => {
    text(fill: c-blue, size: 13pt, weight: "bold")[#it.body]
    v(2pt)
  }
  doc
}
