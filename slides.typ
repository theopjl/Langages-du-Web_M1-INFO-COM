// ============================================================
// slides.typ — IA Coding Agents — M1 Communication
// Présentation 16:9 — ~22 slides — Durée ~1h
// ============================================================

#import "theme.typ": *

#show: apply-theme

// ══════════════════════════════════════════════════════════════
// SLIDE 01 — TITRE
// ══════════════════════════════════════════════════════════════
#set page(
  width: slide-w,
  height: slide-h,
  margin: 0pt,
  fill: c-navy,
  header: none,
  footer: none,
)

#align(center + horizon)[
  #v(1fr)
  #text(fill: c-accent, size: 13pt, weight: "bold")[Outils pour la communication- DCIMN1]
  #v(6pt)
  #text(fill: c-white, size: 34pt, weight: "bold")[TD Langages du Web ]
  #v(4pt)
  #text(fill: c-white, size: 22pt)[Produire du web avec des agents IA]
  #v(20pt)
  #line(length: 40%, stroke: 2pt + c-accent)
  #v(16pt)
  #text(fill: rgb("#b0c4d8"), size: 11pt)[
    Master Design de Communication, Innovation Médiation Numérique 1 \
    TD Langages du Web — Produire du web avec des agents IA
  ]
  #v(1fr)
]

// ══════════════════════════════════════════════════════════════
// SLIDE 02 — ORGANISATION DU MODULE
// ══════════════════════════════════════════════════════════════
#slide(title: [Organisation du module])[
  #v(8pt)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 20pt,
    [
      *Volume horaire*
      #v(6pt)
      #table(
        columns: (auto, 1fr),
        fill: (col, row) => if row == 0 { c-navy } else if calc.odd(row) { c-light } else { c-white },
        inset: 8pt,
        align: left,
        table.header(
          text(fill: c-white, weight: "bold")[Séance],
          text(fill: c-white, weight: "bold")[Durée],
        ),
        [TD 1], [2h],
        [TD 2], [1h30],
        text(weight: "bold")[Total], text(weight: "bold")[3h30],
      )
      
      #v(10pt)

      *Contact*
      #block(
        fill: c-light,
        inset: 10pt,
        radius: 4pt,
        stroke: 1pt + c-blue,
        width: 100%,
      )[
        #text(weight: "bold", fill: c-blue)[✉️ Mail]
        #h(10pt)
        #text[theo.poujol\@univ-st-etienne.fr]
      ]

      #block(
        fill: c-light,
        inset: 10pt,
        radius: 4pt,
        stroke: 1pt + c-blue,
        width: 100%,
      )[
        #text(weight: "bold", fill: c-blue)[🏢 Bureau]
        #h(10pt)
        #text[I118, Télécom Saint-Étienne]
      ]
    ],
    [
      *Déroulé des séances*
      #v(6pt)
      #block(
        fill: c-accent.lighten(85%),
        inset: 10pt,
        radius: 4pt,
        stroke: 1pt + c-accent,
        width: 100%,
      )[
        #text(weight: "bold", fill: c-blue)[TD 1 — 2h]
        #v(4pt)
        Introduction aux agents IA dans la médiation numérique
        #v(2pt)
        Début du TD : rédaction des fichiers de spécifications
      ]
      #v(8pt)
      #block(
        fill: c-accent.lighten(85%),
        inset: 10pt,
        radius: 4pt,
        stroke: 1pt + rgb("#48bb78"),
        width: 100%,
      )[
        #text(weight: "bold", fill: rgb("#276749"))[TD 2 — 1h30]
        #v(4pt)
        Développement du site avec un agent IA
      ]
      #v(8pt)
      #block(
        fill: c-accent.lighten(85%),
        inset: 10pt,
        radius: 4pt,
        stroke: 1pt + rgb("#e7b836"),
        width: 100%,
      )[
        #text(weight: "bold", fill: rgb("#e2a704"))[Présentation - 2h]
        #v(4pt)
        Soutenance de présentation et discussion critique
      ]
      #v(8pt)
      #block(
        fill: c-accent.lighten(85%),
        inset: 10pt,
        radius: 4pt,
        stroke: 1pt + rgb("#e75050"),
        width: 100%,
      )[
        #text(weight: "bold", fill: rgb("#ee2424"))[Rendu final — 1er mai]
        #v(4pt)
        Site fonctionnel
      ]
    ],
  )
]

// ══════════════════════════════════════════════════════════════
// SLIDE 03 — RESSOURCES DU COURS
// ══════════════════════════════════════════════════════════════
#slide(title: [Ressources du cours])[
  #v(12pt)

  *Où trouver les ressources ?*

  #v(10pt)

  - *Template de départ pour les projets* — MooTSE
  - *Guide et prérequis des outils* — MooTSE
  - *Exemple de prompt pour aider à compléter le fichier de specs * — MooTSE
  - *Guide pour installer des extensions VSCODE (à venir)* — MooTSE

  *Chemin d'accès :*
    MASTER Design de Communication ->
    DCIMN1 ->
    Semestre 8 ->
    S8UE4-Outils pour la communication (2) ->
    UE4.2-Langages du web (front end) -> 
    Partie3 - Dev web avec IA
]

// ══════════════════════════════════════════════════════════════
// SLIDE 04 — ACCROCHE
// ══════════════════════════════════════════════════════════════
#slide(title: [Accroche : et si on faisait un site en 3 minutes ?])[
  #slide-tag[Intro — 10 min]
  #v(8pt)

  #block(
    fill: c-light,
    inset: 12pt,
    radius: 4pt,
    width: 100%,
  )[
    #text(style: "italic", fill: c-grey)[
      🎬 Démonstration live : une page web générée à partir d'un simple prompt.
    ]
  ]

  #v(10pt)

  #question-bloc[
    *"Qui a déjà utilisé un LLM pour rédiger un texte ?* \
    Et pour produire quelque chose de visuel ou technique ?"
  ]

  #v(10pt)

  #text(fill: c-grey, style: "italic")[
    Transition → *"Aujourd'hui, on va produire du web avec l'IA — de la conception au code."*
  ]
]

// ══════════════════════════════════════════════════════════════
// SLIDE 03 — POURQUOI CE SUJET POUR DES COMMUNICANTS ?
// ══════════════════════════════════════════════════════════════
#slide(title: [Pourquoi ce sujet pour vous ?])[
  #v(4pt)

  La production web ne se limite plus à *rédiger* — elle implique de plus en plus de
  *concevoir*, *structurer* et *parfois déployer* des interfaces.

  #v(10pt)

  - #kw[Autonomie] — agir sans dépendre d'un développeur pour des tâches simples
  - #kw[Crédibilité] — comprendre les outils pour mieux dialoguer avec les équipes tech
  - #kw[Efficacité] — prototyper vite, itérer vite, décider vite

  #v(10pt)

  #takeaway[
    Les IA coding agents ne remplacent pas les développeurs. \
    Ils *réduisent la dépendance* aux développeurs pour des tâches simples.
  ]

  #takeaway[
    Futurs chefs de projet, chargés de com',
    community managers. Compréhension
    stratégique, pas la maîtrise technique.
  ]
]

// ══════════════════════════════════════════════════════════════
// SLIDE 04 — OBJECTIFS PÉDAGOGIQUES
// ══════════════════════════════════════════════════════════════
#slide(title: [Objectifs de la séance])[
  #v(8pt)
  À l'issue de ce cours, vous serez capables de :

  #v(10pt)

  + *Définir* ce qu'est un IA coding agent et le situer dans l'écosystème web
  + *Comprendre* le workflow complet de production d'un site avec l'IA
  + *Identifier* les avantages, limites et enjeux critiques
  + *Porter un regard critique* de communicant sur ces technologies

  #v(10pt)

  #takeaway[
    On ne cherche pas la perfection technique — on cherche la *compréhension de la démarche*.
  ]
]

// ══════════════════════════════════════════════════════════════
// SLIDE 05 — PLAN DE LA SÉANCE
// ══════════════════════════════════════════════════════════════
#slide(title: [Plan de la séance])[
  #v(6pt)

  #grid(
    columns: (auto, 1fr),
    column-gutter: 12pt,
    row-gutter: 10pt,
    slide-tag[10 min], [*Accroche* — Mise en contexte],
    slide-tag[10 min], [*Qu'est-ce qu'un IA coding agent ?* — Définition & cartographie],
    slide-tag[20 min], [*Comment ça fonctionne ?* — Workflow de A à Z],
    slide-tag[15 min], [*Avantages, limites et enjeux critiques*],
    slide-tag[5 min],  [*Synthèse* — Transition vers le TP],
  )
]

// ══════════════════════════════════════════════════════════════
// SLIDE 06 — SECTION : DÉFINITION
// ══════════════════════════════════════════════════════════════
#section-title-slide(title: [Partie 1 — Qu'est-ce qu'un IA coding agent ?])

// ══════════════════════════════════════════════════════════════
// SLIDE 07 — DÉFINITION
// ══════════════════════════════════════════════════════════════
#slide(title: [Définition accessible])[
  #slide-tag[Partie 1 — 10 min]
  #v(10pt)

  #block(
    fill: c-light,
    inset: 16pt,
    radius: 4pt,
    width: 100%,
  )[
    #text(size: 14pt, style: "italic")[
      "Un IA coding agent est un assistant qui comprend ce que vous lui décrivez
      *en langage naturel* — en français — et le traduit en *code fonctionnel*
      ou en *interface web* directement utilisable."
    ]
  ]

  #v(12pt)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 16pt,
    block(fill: rgb("#e8f4e8"), inset: 10pt, radius: 3pt)[
      #text(weight: "bold", fill: rgb("#2d6a2d"))[✅ Pas besoin de savoir coder]
      #v(4pt)
      Décrire = suffit pour démarrer
    ],
    block(fill: rgb("#fdecea"), inset: 10pt, radius: 3pt)[
      #text(weight: "bold", fill: rgb("#8b1a1a"))[⚠️ Mais il faut savoir lui parler]
      #v(4pt)
      La qualité du résultat dépend du prompt
    ],
  )

  #takeaway[
    Analogie utile : c'est comme donner un brief à un stagiaire très compétent
    techniquement, mais qui ne connaît pas votre contexte. Plus votre brief est précis,
    meilleur est le résultat.
  ]
]

// ══════════════════════════════════════════════════════════════
// SLIDE 08 — CARTOGRAPHIE DES OUTILS
// ══════════════════════════════════════════════════════════════
#slide(title: [Cartographie des outils])[
  #slide-tag[Partie 1 — 10 min]
  #v(6pt)

  #table(
    columns: (1.8fr, 2fr, 2.5fr),
    fill: (col, row) => if row == 0 { c-navy } else if calc.odd(row) { c-light } else { c-white },
    inset: 8pt,
    align: left,
    table.header(
      text(fill: c-white, weight: "bold")[Type],
      text(fill: c-white, weight: "bold")[Exemples],
      text(fill: c-white, weight: "bold")[Usage principal],
    ),
    [LLM généraliste],     [ChatGPT, Claude, Gemini, Mistral], [Rédiger, expliquer, structurer],
    [Copilot intégré],     [GitHub Copilot (VS Code)],          [Assistance en temps réel dans l'éditeur],
    [Agents autonomes],    [Cursor, Copilot Agent Mode],        [Tâches multi-fichiers en autonomie],
    [Builders no-code IA], [Framer AI, Wix ADI],               [Générer des interfaces sans code],
  )

  #v(8pt)
  #question-bloc[
    *"Avez-vous déjà entendu parler de l'un de ces outils ? Dans quel contexte ?"*
  ]
]

// ══════════════════════════════════════════════════════════════
// SLIDE 09 — SECTION : WORKFLOW
// ══════════════════════════════════════════════════════════════
#section-title-slide(title: [Partie 2 — Comment ça fonctionne ? Le workflow de A à Z])

#slide(title: [Le workflow de production avec l'IA])[
  #slide-tag[Partie 2 — 20 min]
  #v(6pt)

  #question-bloc[
    *Comment imaginez-vous le processus de production d'un site web avec l'IA ?* \
    Quelles étapes vous semblent nécessaires ?
  ]
]
// ══════════════════════════════════════════════════════════════
// SLIDE 10 — WORKFLOW (VUE D'ENSEMBLE)
// ══════════════════════════════════════════════════════════════
#slide(title: [Le workflow : vue d'ensemble])[
  #slide-tag[Partie 2 — 20 min]
  #v(4pt)

  #align(center)[
    #block(
      fill: c-light,
      inset: (x: 16pt, y: 10pt),
      radius: 4pt,
      width: 95%,
    )[
      #set text(size: 11pt)
      #grid(
        columns: (1fr,),
        row-gutter: 4pt,
        block(fill: c-navy, inset: (x: 10pt, y: 5pt), radius: 3pt, width: 100%)[
          #text(fill: c-white, weight: "bold")[💡 IDÉE / BESOIN]
        ],
        align(center)[#text(fill: c-grey, size: 16pt)[↓]],
        block(fill: c-blue, inset: (x: 10pt, y: 5pt), radius: 3pt, width: 100%)[
          #text(fill: c-white, weight: "bold")[📋 BRIEF HUMAIN — réflexion stratégique & éditoriale]
        ],
        align(center)[#text(fill: c-grey, size: 16pt)[↓]],
        block(fill: c-accent, inset: (x: 10pt, y: 5pt), radius: 3pt, width: 100%)[
          #text(fill: c-white, weight: "bold")[🤖 IA 1 — Reformulation du brief]
        ],
        align(center)[#text(fill: c-grey, size: 16pt)[↓]],
        block(fill: c-accent, inset: (x: 10pt, y: 5pt), radius: 3pt, width: 100%)[
          #text(fill: c-white, weight: "bold")[🤖 IA 1 — Plan de site]
        ],
        align(center)[#text(fill: c-grey, size: 16pt)[↓]],
        block(fill: rgb("#6b46c1"), inset: (x: 10pt, y: 5pt), radius: 3pt, width: 100%)[
          #text(fill: c-white, weight: "bold")[🤖 IA 1 -📄 specs.md — Document de référence unique]
        ],
        align(center)[#text(fill: c-grey, size: 16pt)[↓]],
        block(fill: rgb("#276749"), inset: (x: 10pt, y: 5pt), radius: 3pt, width: 100%)[
          #text(fill: c-white, weight: "bold")[🤖 Agent IA 2— Génération du code HTML/CSS]
        ],
        align(center)[#text(fill: c-grey, size: 16pt)[↓]],
        block(fill: rgb("#1a6b40"), inset: (x: 10pt, y: 5pt), radius: 3pt, width: 100%)[
          #text(fill: c-white, weight: "bold")[✅ Validation & Itération → Résultat final]
        ],
      )
    ]
  ]

  #takeaway[
    Processus linéaire : chaque étape nourrit la suivante.
  ]
]

#slide(title : [Le brief humain])[
  #slide-tag[Partie 2 — 20 min]
  #v(6pt)

  #question-bloc([*Pour vous, quelles sont les informations essentielles à ajouter dans un brief de projet ?*])
]

// ══════════════════════════════════════════════════════════════
// SLIDE 11 — ÉTAPE 1 : LE BRIEF HUMAIN
// ══════════════════════════════════════════════════════════════
#slide(title: [Étape 1 — Le brief humain])[
  #slide-tag[Partie 2 — 20 min]
  #v(6pt)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 16pt,
    [
      *Ce que vous rédigez :*
      - Qui êtes-vous ?
      - Quel est le projet ?
      - Pour qui ?
      - Quel ton ? Quelles pages ?

      #v(6pt)
      #text(fill: c-grey, style: "italic", size: 11pt)[
        Forme libre, brute, sans contrainte technique.
      ]
    ],
    [
      #takeaway[
        Le brief humain, c'est *votre* rôle. L'IA ne peut pas inventer votre stratégie.
      ]
      #v(8pt)
      #block(
        fill: c-light,
        inset: 10pt,
        radius: 3pt,
      )[
        C'est ici que se concentre toute la *réflexion stratégique et éditoriale*.
      ]
    ],
  )

  #takeaway[
    L'IA est nulle pour inventer un positionnement de marque ou une ligne éditoriale.
    C'est la valeur irremplaçable du communicant dans ce workflow.
  ]
]

// ══════════════════════════════════════════════════════════════
// SLIDE 12 — ÉTAPES 2 & 3 : LLM 1 + LLM 2
// ══════════════════════════════════════════════════════════════
#slide(title: [Étapes 2 & 3 — Les IA au travail])[
  #slide-tag[Partie 2 — 20 min]
  #v(6pt)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 16pt,
    row-gutter: 20pt,
    block(
      fill: c-accent.lighten(85%),
      inset: 10pt,
      radius: 4pt,
      stroke: 1pt + c-accent,
    )[
      #text(weight: "bold", fill: c-blue)[🤖 LLM 1 — Reformulation]
      #v(4pt)
      Prompt : *"Reformule ce brief de manière claire et structurée"*
      #v(4pt)
      → Structure et clarifie vos idées \
      → Comble les imprécisions
      #v(6pt)
      #text(fill: c-grey, size: 10pt, style: "italic")[
        L'étudiant relit, corrige, *valide* — il reste auteur.
      ]
    ],
    block(
      fill: c-accent.lighten(85%),
      inset: 10pt,
      radius: 4pt,
      stroke: 1pt + c-accent,
    )[
      #text(weight: "bold", fill: c-blue)[🤖 LLM 2 — Plan]
      #v(4pt)
      Prompt : *"Propose une structure de site"* \
      Prompt : *"Génère un wireframe de la page d'accueil"*
      #v(4pt)
      → Arborescence, sections, composants visuels
      #v(6pt)
      #text(fill: c-grey, size: 10pt, style: "italic")[
        Peut être un LLM différent — chacun a ses forces.
      ]
    ],
    block(
      fill: c-accent.lighten(85%),
      inset: 10pt,
      radius: 4pt,
      stroke: 1pt + c-accent,
    )[
      #text(weight: "bold", fill: c-blue)[🤖 LLM 3 — Fichier Specs]
      #v(4pt)
      Prompt : *Exemple de prompt sur MooTSE* \
      #v(4pt)
      → Mémoire, contexte, règles et instructions de l'agent IA de développement
      #v(6pt)
      #text(fill: c-grey, size: 10pt, style: "italic")[
        Peut être un LLM différent — chacun a ses forces.
      ]
    ]
  )
]

// ══════════════════════════════════════════════════════════════
// SLIDE 13 — SPECS.MD : LA MÉMOIRE DU PROJET
// ══════════════════════════════════════════════════════════════
#slide(title: [specs.md — La mémoire du projet])[
  #slide-tag[Partie 2 — 20 min]
  #v(6pt)

  *Un fichier unique qui consolide tout :*

  #v(6pt)

  #grid(
    columns: (auto, 1fr),
    column-gutter: 10pt,
    row-gutter: 6pt,
    text(fill: c-blue)[▸], [Brief validé],
    text(fill: c-blue)[▸], [Plan de site + Wireframe(s)],
    text(fill: c-blue)[▸], [Contraintes techniques (HTML/CSS/JS vanilla, responsive, accessibilité)],
    text(fill: c-blue)[▸], [Charte graphique (couleurs, typographie, ton)],
  )

  #v(10pt)

  #takeaway[
    *specs.md = le contrat* entre la conception et le développement. \
    Réutilisable, partageable, modifiable à tout moment.
  ]

  #takeaway[
    Specs.md c'est un cahier des charges allégé. C'est un document vivant
    que l'agent IA utilisera comme référence tout au long du projet.
    Insistez : sans ce fichier, l'IA perd le contexte entre les sessions.
  ]
]

// ══════════════════════════════════════════════════════════════
// SLIDE 14 — GÉNÉRATION DU CODE + VALIDATION
// ══════════════════════════════════════════════════════════════
#slide(title: [Étapes 4 & 5 — Code et validation])[
  #slide-tag[Partie 2 — 20 min]
  #v(6pt)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 16pt,
    block(
      fill: rgb("#e8f4e8"),
      inset: 10pt,
      radius: 4pt,
      stroke: 1pt + rgb("#48bb78"),
    )[
      #text(weight: "bold", fill: rgb("#276749"))[💻 Génération du code]
      #v(4pt)
      Prompt : *Exemple de prompt sur MooTSE*
      #v(4pt)
      → Code généré section par section \
      → En s'appuyant sur specs.md
    ],
    block(
      fill: rgb("#fff5f5"),
      inset: 10pt,
      radius: 4pt,
      stroke: 1pt + rgb("#f56565"),
    )[
      #text(weight: "bold", fill: rgb("#742a2a"))[👁️ Validation & Itération]
      #v(4pt)
      - Lecture du code \
      - Test visuel dans le navigateur \
      - Retour possible vers specs.md
      #v(4pt)
      #text(fill: c-grey, size: 10pt, style: "italic")[
        *L'étudiant valide à chaque étape.* L'IA assiste, elle ne décide pas.
      ]
    ],
  )

  #v(8pt)
  #takeaway[
    Le premier résultat n'est jamais le dernier — l'itération est normale et nécessaire.
  ]

  #v(8pt)
  #takeaway[
    IA rédaction ≠ Agent IA. Utilisez le bon outil pour la bonne tâche.
  ]
]

// ══════════════════════════════════════════════════════════════
// SLIDE 15 — LE PROMPT ENGINEERING
// ══════════════════════════════════════════════════════════════
#slide(title: [Le prompt engineering — La compétence clé])[
  #slide-tag[Partie 2 — 20 min]
  #v(6pt)

  #block(
    fill: c-light,
    inset: 10pt,
    radius: 3pt,
    width: 100%,
  )[
    #text(style: "italic")[
      "La qualité du résultat dépend directement de la *qualité du prompt*."
    ]
  ]

  #v(8pt)

  *Les 3 règles d'or :*

  #v(4pt)

  #grid(
    columns: (auto, 1fr),
    column-gutter: 10pt,
    row-gutter: 6pt,
    block(fill: c-navy, inset: (x: 6pt, y: 3pt), radius: 3pt)[
      #text(fill: c-white, weight: "bold", size: 10pt)[1. CONTEXTE]
    ],
    [Qui êtes-vous ? Quel est le projet ? À qui s'adresse le site ?],
    block(fill: c-navy, inset: (x: 6pt, y: 3pt), radius: 3pt)[
      #text(fill: c-white, weight: "bold", size: 10pt)[2. PRÉCISION]
    ],
    [Détaillez les sections, le ton attendu, le contenu],
    block(fill: c-navy, inset: (x: 6pt, y: 3pt), radius: 3pt)[
      #text(fill: c-white, weight: "bold", size: 10pt)[3. ITÉRATION]
    ],
    [Affinez, corrigez, relancez — c'est un dialogue],
  )
]

// ══════════════════════════════════════════════════════════════
// SLIDE 16 — EXEMPLE DE PROMPT BIEN FORMULÉ
// ══════════════════════════════════════════════════════════════
#slide(title: [Exemple : un bon prompt])[
  #slide-tag[Partie 2 — 20 min]
  #v(8pt)

  *Exemple de prompt bien formulé mais basique :*
  #block(
    fill: rgb("#1e1e2e"),
    inset: 14pt,
    radius: 4pt,
    width: 100%,
  )[
    #text(fill: rgb("#cdd6f4"), font: "Courier New", size: 11pt)[
      "Tu es un architecte web. Je prépare un site de médiation
      numérique sur la lecture pour des adolescents.
      #linebreak()
      Le site doit comporter 3 pages : accueil, agenda, contact.
      #linebreak()
      Le ton est dynamique et accessible.
      #linebreak()
      Pour chaque page, donne-moi le titre, les sections principales
      et les composants visuels à intégrer."
    ]
  ]

  #v(10pt)

  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 8pt,
    block(fill: c-light, inset: 8pt, radius: 3pt, height: auto)[
      #text(fill: c-blue, weight: "bold", size: 10pt)[✓ Rôle attribué] \
      #text(size: 10pt)["architecte web"]
    ],
    block(fill: c-light, inset: 8pt, radius: 3pt, height: auto)[
      #text(fill: c-blue, weight: "bold", size: 10pt)[✓ Public cible] \
      #text(size: 10pt)["adolescents"]
    ],
    block(fill: c-light, inset: 8pt, radius: 3pt, height: auto)[
      #text(fill: c-blue, weight: "bold", size: 10pt)[✓ Livrable précis] \
      #text(size: 10pt)[3 pages détaillées]
    ],
  )

  #question-bloc[
    *Que peut-on rajouter pour améliorer ce prompt ?* \
  ]
]

// ══════════════════════════════════════════════════════════════
// SLIDE 17 — SECTION : AVANTAGES & LIMITES
// ══════════════════════════════════════════════════════════════
#section-title-slide(title: [Partie 3 — Avantages, limites et enjeux critiques])

#slide(title: [Quels avantages pour les communicants])[
  #slide-tag[Partie 3 — 15 min]
  #v(6pt)

  #question-bloc[
    *Quels avantages voyez-vous à utiliser des IA coding agents dans votre futur métier ?* \
    En quoi cela pourrait-il changer votre façon de travailler ?
  ]
]
// ══════════════════════════════════════════════════════════════
// SLIDE 18 — AVANTAGES POUR LES COMMUNICANTS
// ══════════════════════════════════════════════════════════════
#slide(title: [Avantages pour les communicants])[
  #slide-tag[Partie 3 — 15 min]
  #v(6pt)

  #table(
    columns: (1.5fr, 2.5fr),
    fill: (col, row) => if row == 0 { c-navy } else if calc.odd(row) { c-light } else { c-white },
    inset: 8pt,
    align: left,
    table.header(
      text(fill: c-white, weight: "bold")[Avantage],
      text(fill: c-white, weight: "bold")[Ce que ça change concrètement],
    ),
    [*Rapidité*],       [Prototypage en heures, pas en jours],
    [*Accessibilité*],  [Pas besoin de maîtriser le code],
    [*Autonomie*],      [Moins dépendant d'un développeur pour des modifications simples],
    [*Créativité (selon profil)*],     [Focus sur le message et l'expérience utilisateur],
    [*Itération*],      [Tester plusieurs approches rapidement, sans coût technique],
  )
]

#slide(title: [Quels risques pour les communicants])[
  #slide-tag[Partie 3 — 15 min]
  #v(6pt)

  #question-bloc[
    *Quels risques voyez-vous à utiliser des IA coding agents dans votre futur métier ?* \
    En quoi cela pourrait-il changer votre façon de travailler ?
  ]
]
// ══════════════════════════════════════════════════════════════
// SLIDE 19 — LIMITES ET RISQUES
// ══════════════════════════════════════════════════════════════
#slide(title: [Limites et risques — Le regard critique])[
  #slide-tag[Partie 3 — 15 min]
  #v(4pt)

  #table(
    columns: (1.6fr, 2.8fr),
    fill: (col, row) => if row == 0 { rgb("#7b1a1a") } else if calc.odd(row) { rgb("#fff5f5") } else { c-white },
    inset: 7pt,
    align: left,
    table.header(
      text(fill: c-white, weight: "bold")[Risque],
      text(fill: c-white, weight: "bold")[Illustration concrète],
    ),
    [*Qualité variable*],         [Code non optimisé, parfois truffé de bugs],
    [*Effet boîte noire*],        [Vous déployez du code que vous ne comprenez pas],
    [*Propriété intellectuelle*], [Qui détient le code généré ? (débat ouvert)],
    [*Accessibilité ignorée*],    [Le site peut ne pas respecter les standards WCAG],
    [*Non-conformité RGPD*],      [Un formulaire peut collecter sans consentement valide],
    [*Impact environnemental*],   [Chaque inférence LLM a un coût énergétique non négligeable],
  )

  #takeaway[
    La boîte noire est comme un pilote automatique.
  ]
]

// ══════════════════════════════════════════════════════════════
// SLIDE 20 — MINI-DÉBAT
// ══════════════════════════════════════════════════════════════
#slide(title: [Mini-débat — 5 minutes])[
  #slide-tag[Partie 3 — 15 min]
  #v(12pt)

  #question-bloc[
    *Vous recevez un site généré par IA pour un client.* \
    Vous ne savez pas coder.

    #v(6pt)
    *Comment vérifiez-vous qu'il est :*
    - conforme aux attentes de la marque ?
    - accessible à tous les utilisateurs ?
    - conforme au RGPD ?
  ]

  #v(12pt)

  #text(fill: c-grey, style: "italic", size: 11pt)[
    Consigne : 2 minutes de réflexion individuelle, puis échange en groupe.
  ]

  #takeaway[
    Le regard critique du communicant reste indispensable.
  ]
]

// ══════════════════════════════════════════════════════════════
// SLIDE 21 — SECTION : SYNTHÈSE
// ══════════════════════════════════════════════════════════════
#section-title-slide(title: [Synthèse et transition vers le TP])

// ══════════════════════════════════════════════════════════════
// SLIDE 22 — TABLEAU COMPARATIF
// ══════════════════════════════════════════════════════════════
#slide(title: [Tableau comparatif — À compléter ensemble])[
  #slide-tag[Synthèse — 5 min]
  #v(4pt)

  #table(
    columns: (2fr, 1.3fr, 1.3fr, 1.7fr),
    fill: (col, row) => if row == 0 { c-navy } else if calc.odd(row) { c-light } else { c-white },
    inset: 7pt,
    align: left,
    table.header(
      text(fill: c-white, weight: "bold")[Critère],
      text(fill: c-white, weight: "bold")[Codage pur],
      text(fill: c-white, weight: "bold")[CMS (WordPress)],
      text(fill: c-white, weight: "bold")[IA coding agent],
    ),
    [Temps de mise en œuvre], [...], [...], [...],
    [Compétences requises],   [...], [...], [...],
    [Flexibilité / contrôle], [...], [...], [...],
    [Qualité du code],        [...], [...], [...],
    [Accessibilité / RGPD],   [...], [...], [...],
  )
]

// ══════════════════════════════════════════════════════════════
// SLIDE 23 — CE QU'ON RETIENT
// ══════════════════════════════════════════════════════════════
#slide(title: [Ce qu'on retient avant le TP])[
  #slide-tag[Synthèse — 5 min]
  #v(8pt)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 14pt,
    row-gutter: 10pt,
    takeaway[
      Un IA coding agent ne remplace pas la *réflexion stratégique* c'est votre rôle.
    ],
    takeaway[
      Le *brief humain* est la fondation de tout le workflow.
    ],
    takeaway[
      Votre valeur ajoutée : *briefer, valider, porter un regard critique*.
    ],
    takeaway[
      *specs.md* = la mémoire du projet. Un document unique, vivant, partageable.
    ],
  )
]

// ══════════════════════════════════════════════════════════════
// SLIDE 24 — RESSOURCES & GLOSSAIRE
// ══════════════════════════════════════════════════════════════
#slide(title: [Ressources & Glossaire (sélection)])[
  #v(4pt)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 16pt,
    [
      *Outils abordés :*
      #v(4pt)
      - *ChatGPT / Claude / Mistral* — LLM généralistes
      - *GitHub Copilot* — Agent IA (VS Code)
      - *Framer AI* — Générateur no-code par prompt
      - *PageSpeed Insights* — Qualité technique
      - *WAVE* — Accessibilité web
    ],
    [
      *Glossaire :*
      #v(4pt)
      #set text(size: 11pt)
      / Prompt: Instruction en langage naturel à un IA
      / LLM: Large Language Model — IA entraîné sur du texte
      / Wireframe: Maquette schématique d'une page web
      / Responsive: Site adapté à toutes les tailles d'écran
      / RGPD: Protection des données personnelles (UE)
      / WCAG: Standards d'accessibilité web
      / Agent mode: L'IA agit sur plusieurs fichiers en autonomie
    ],
  )
]

// ══════════════════════════════════════════════════════════════
// SLIDE 25 — QUESTIONS
// ══════════════════════════════════════════════════════════════
#set page(
  width: slide-w,
  height: slide-h,
  margin: 0pt,
  fill: c-navy,
  header: none,
  footer: none,
)

#align(center + horizon)[
  #text(fill: c-accent, size: 48pt, weight: "bold")[?]
  #v(10pt)
  #text(fill: c-white, size: 28pt, weight: "bold")[Questions]
  #v(16pt)
  #line(length: 30%, stroke: 2pt + c-accent)
  #v(16pt)
  #text(fill: rgb("#b0c4d8"), size: 12pt)[
    Master Design de Communication, Innovation Médiation Numérique 1 — M1 \
    TD Langages du Web — Produire du web avec des agents IA
  ]
]
