# Introduction aux IA coding agents
### Module Développement Web — Master Communication
**Durée : ~1h | Public : étudiants en communication (non-techniciens)**

---

## Objectifs pédagogiques

À l'issue de cette présentation, les étudiants seront capables de :

- Définir ce qu'est un IA coding agent et le situer dans l'écosystème des outils web
- Comprendre le workflow de production d'un site avec un IA coding agent
- Identifier les avantages, limites et enjeux critiques liés à ces outils
- Adopter un regard critique de communicant sur ces technologies

---

## 1. Accroche et mise en contexte (10 min)

### Accroche

Démonstration live : une page web générée en quelques minutes à partir d'un simple prompt.

**Question ouverte :**
> *"Qui a déjà utilisé un LLM pour rédiger un texte ? Et pour produire quelque chose de visuel ou technique ?"*

**Transition :**
> *"Aujourd'hui, on va aller un cran plus loin — produire du web avec l'IA, de la conception au code."*

### Mise en contexte : pourquoi ce sujet pour des communicants ?

- La production de contenu web ne se limite plus à rédiger — elle implique de plus en plus de concevoir, structurer et parfois déployer des interfaces.
- Les IA coding agents ne remplacent pas les développeurs, mais **réduisent la dépendance aux développeurs pour des tâches simples**.
- En tant que communicant, comprendre ces outils, c'est gagner en **autonomie, en crédibilité et en efficacité** dans les projets numériques.

---

## 2. C'est quoi un IA coding agent ? (10 min)

### Définition accessible

> *"Un IA coding agent est un assistant qui comprend ce que vous lui décrivez en langage naturel — en français — et le traduit en code fonctionnel ou en interface web directement utilisable."*

Pas besoin de savoir coder pour l'utiliser. Mais il faut savoir **lui parler**.

### Cartographie des outils

| Type | Exemples | Usage principal |
|---|---|---|
| LLM généraliste | ChatGPT, Claude, Gemini | Générer du code, expliquer, structurer |
| Copilot intégré | GitHub Copilot (VS Code) | Assistance en temps réel dans l'éditeur |
| Agents autonomes | Cursor, Copilot Agent Mode | Exécuter des tâches multi-fichiers |
| Builders no-code IA | Framer AI, Wix ADI | Génération d'interfaces sans code |

> 💬 **Discussion rapide :** *"Avez-vous déjà entendu parler de l'un de ces outils ? Dans quel contexte ?"*

---

## 3. Comment ça fonctionne ? Le workflow de A à Z (20 min)

### Le workflow complet — de l'idée au site

```
💡 IDÉE / BESOIN
    ↓
📋 BRIEF HUMAIN
    "Qui ? Quoi ? Pour qui ? Quel ton ? Quelles pages ?"
    → Rédigé librement par le communicant, brut, sans contrainte de forme
    → C'est ici que se concentre la réflexion stratégique et éditoriale
    ↓
🤖 LLM 1 — REFORMULATION DU BRIEF
    Prompt : "Reformule ce brief de manière claire et structurée"
    → Le LLM restructure, clarifie, comble les imprécisions
    → L'étudiant relit, corrige, valide — il reste auteur du brief
    ↓
🤖 LLM 2 — GÉNÉRATION DU PLAN DE SITE
    Prompt : "À partir de ce brief, propose une structure de site"
    → Arborescence, liste des pages, sections par page, contenu suggéré
    → Peut être un LLM différent (ex : ChatGPT pour le brief, Claude pour le plan)
    ↓
🖼️ LLM 2 — GÉNÉRATION DE LA MAQUETTE (wireframe textuel)
    Prompt : "Génère un wireframe ASCII de la page d'accueil"
    → Organisation visuelle des blocs, hiérarchie du contenu
    → Toujours dans la même conversation pour garder le contexte
    ↓
📄 FICHIER MAÎTRE — specs.md
    Consolidation de tout ce qui précède :
    → Brief validé + Plan de site + Wireframe(s)
    → Contraintes techniques (HTML/CSS/JS vanilla, responsive, accessibilité)
    → Charte graphique (couleurs, typographie, ton)
    → Ce fichier est le contrat entre la conception et le développement
    ↓
💻 AGENT IA — GitHub Copilot / VS Code
    Prompt : "Voici mes specs, génère le HTML/CSS de la page d'accueil"
    → Code généré section par section, en s'appuyant sur specs.md
    ↓
👁️ VALIDATION & ITÉRATION
    Lecture du code, test visuel dans le navigateur
    → Retour possible vers specs.md si besoin
    ↓
✅ RÉSULTAT FINAL
```

### Ce que ce workflow révèle

- **LLM 1 ≠ LLM 2** : on peut (et on devrait) utiliser différents outils pour différentes tâches — chacun a ses forces.
- **L'étudiant valide à chaque étape** : l'IA assiste, elle ne décide pas.
- **`specs.md` comme mémoire du projet** : un document unique qui centralise toutes les décisions de conception, réutilisable et partageable.

### Le prompt engineering — la compétence clé du communicant

> *"La qualité du résultat dépend directement de la qualité du prompt."*

**Les 3 règles d'or :**

1. **Contexte** : qui êtes-vous, quel est le projet, à qui s'adresse le site ?
2. **Précision** : détaillez le contenu, les sections, le ton attendu
3. **Itération** : le premier résultat n'est jamais le dernier — affinez, corrigez, relancez

**Exemple de prompt bien formulé :**
> *"Tu es un architecte web. Je prépare un site de médiation numérique sur la lecture pour des adolescents. Le site doit comporter 3 pages : accueil, agenda, contact. Le ton est dynamique et accessible. Pour chaque page, donne-moi le titre, les sections principales et les composants visuels à intégrer."*

---

## 4. Avantages, limites et enjeux critiques (15 min)

### Avantages pour les communicants

| Avantage | Ce que ça change concrètement |
|---|---|
| **Rapidité** | Prototypage en heures, pas en jours |
| **Accessibilité** | Pas besoin de maîtriser le code |
| **Autonomie** | Moins dépendant d'un développeur pour des modifications simples |
| **Créativité** | Focus sur le message et l'expérience utilisateur |
| **Itération** | Tester plusieurs approches rapidement, sans coût technique |

### Limites et risques — le regard critique

| Risque | Illustration concrète |
|---|---|
| **Qualité variable** | Code "bloaté", non optimisé, parfois truffé de bugs |
| **Effet boîte noire** | Vous déployez du code que vous ne comprenez pas |
| **Propriété intellectuelle** | Qui détient le code généré ? (débat ouvert sur GitHub Copilot) |
| **Accessibilité ignorée** | Un site généré peut ne pas respecter les standards WCAG |
| **Non-conformité RGPD** | Un formulaire généré peut collecter des données sans consentement valide |
| **Impact environnemental** | Chaque inférence LLM a un coût énergétique non négligeable |

### Mini-débat (5 min)

> *"Vous recevez un site généré par IA pour un client. Vous ne savez pas coder. Comment vérifiez-vous qu'il est conforme, accessible et fidèle à l'image de la marque ?"*

---

## 5. Synthèse et transition vers le TP (5 min)

### Tableau comparatif — à compléter ensemble

| Critère | Codage pur | CMS (WordPress) | IA coding agent |
|---|---|---|---|
| Temps de mise en œuvre | | | |
| Compétences requises | | | |
| Flexibilité / contrôle | | | |
| Qualité du code | | | |
| Risques principaux | | | |
| Accessibilité / RGPD | | | |

### Ce qu'on retient avant le TP

- Un IA coding agent ne remplace pas la **réflexion stratégique** — c'est votre rôle.
- Le brief humain est **la fondation** de tout le workflow.
- La valeur ajoutée du communicant : **savoir briefer, valider et porter un regard critique** sur ce que l'IA produit.
- On ne cherche pas la perfection technique — on cherche la **compréhension de la démarche**.

---

## Ressources

### Outils abordés en cours
- [ChatGPT](https://chat.openai.com) — LLM généraliste (reformulation de brief, plan de site)
- [Claude](https://claude.ai) — LLM généraliste (alternative, souvent plus structuré)
- [GitHub Copilot](https://github.com/features/copilot) — Agent IA intégré à VS Code
- [Framer AI](https://www.framer.com) — Générateur de sites no-code par prompt
- [PageSpeed Insights](https://pagespeed.web.dev) — Vérification de la qualité technique
- [WAVE](https://wave.webaim.org) — Vérification de l'accessibilité web

### Glossaire
| Terme | Définition simple |
|---|---|
| **Prompt** | Instruction donnée en langage naturel à un IA |
| **LLM** | Large Language Model — modèle d'IA entraîné sur du texte |
| **Wireframe** | Maquette schématique d'une page web (structure, pas design) |
| **HTML/CSS/JS** | Les 3 langages de base du web (structure, style, interactivité) |
| **Responsive** | Site qui s'adapte à toutes les tailles d'écran |
| **RGPD** | Règlement européen sur la protection des données personnelles |
| **WCAG** | Standards internationaux d'accessibilité web |
| **Inférence** | Action d'un LLM qui génère une réponse à partir d'un prompt |
| **Agent mode** | Mode avancé où l'IA peut agir sur plusieurs fichiers en autonomie |