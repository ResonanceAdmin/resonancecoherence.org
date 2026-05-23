# resonancecoherence.org — Site Content & Build Brief

**Version 1.0 | May 2026**
**Purpose:** The organizational spine. The page someone reaches when they search "Resonance" and want to understand who the organization is, what it does, what's published, and what connects to it. Informational, not operational. References Systems, the Institute, ERN, the papers, and everything else — it is the central hub, not a product.

This document contains: (1) the design specification, (2) the global structure (nav, footer, shared elements), and (3) the full copy and layout notes for all six pages. It is written to be handed to Codex as a build brief.

---

## PART 1 — DESIGN SPECIFICATION

### Aesthetic direction: "Observatory"

Refined, institutional, intelligent. The visual register of a serious research organization with real published work behind it — in the spirit of the Santa Fe Institute and the Institute for Fiscal Studies. Restraint is the point: let the work speak, give it space, and signal credibility through care rather than decoration. This is distinct from the dark instrument aesthetic of the Systems/operational site; the spine is the lighter, calmer parent that contains both the dark (Systems) and light (Health, Institute) sub-brands.

### Palette

Use CSS variables. Dominant navy and warm-white fields with rare gold accents — never gold fields or gold buttons.

```
--navy-deep:    #0A1B3D   /* hero fields, dark sections, primary structural color */
--navy:         #12244A   /* secondary dark, cards on dark */
--navy-soft:    #1C3160   /* hover/elevated on dark */
--white-warm:   #FAFAF8   /* primary light background — warm, NOT clinical white */
--white-pure:   #FFFFFF   /* cards/elevated on light */
--ink:          #14213A   /* body text on light */
--ink-soft:     #4A5570   /* secondary text, captions */
--gold:         #C9A227   /* THE accent — antique gold, not bright. Headings rules, dividers, hover states, the mark. Used rarely. */
--gold-soft:    #E3D9B8   /* faint gold for subtle backgrounds/borders if needed */
--line:         #E2E2DC   /* hairline dividers on light */
```

**Gold discipline:** gold appears on at most one or two elements per viewport — a section rule, a hovered link, the logo mark, a single emphasized word. If a viewport has gold buttons AND gold headings AND gold borders, it's wrong. A little, rare, considered.

### Typography

Distinctive, not generic. Pair a refined display serif with a clean humanist sans. Do NOT use Inter, Roboto, Arial, or system fonts. Suggested pairing (all open-source, Google Fonts):

- **Display / headings:** *Fraunces* (a soft, intelligent serif with optical sizing — carries warmth and authority) OR *Newsreader* (editorial, literary). Fraunces preferred.
- **Body / UI:** *Spectral* (a refined serif body that pairs with Fraunces for a fully editorial feel) OR *Public Sans* / *Libre Franklin* (humanist sans for cleaner contrast). For the editorial direction we want, lean serif body (Spectral); if it reads too dense in testing, fall back to a humanist sans.

Type should do real work: large, confident headings with generous line-height and letter-spacing tuned per size. The intelligence of the page comes from the typography.

### Layout & composition

- Generous whitespace. Wide margins. Content max-width ~720–780px for prose, wider for the constellation grid.
- Simple top nav — NO mega-menu, NO overpopulated burger. Six items, flat.
- Single mission sentence above the fold on the home hero (the IPS pattern), nothing competing with it.
- Hairline gold or navy rules to separate sections rather than heavy boxes.
- Status badges (Live / In build / Forming) as small, quiet pills — not loud.
- Subtle atmosphere on the navy hero: a very faint field/gradient texture or a slow, low-opacity animated field-state motif is welcome IF it stays restrained. No literal dashboard imagery.

### Motion

Restraint. One well-orchestrated page-load reveal (staggered fade-up on the hero elements) does more than scattered micro-interactions. Gentle hover states (gold underline grow, subtle lift on constellation cards). Respect `prefers-reduced-motion`.

### Technical

- Multi-page static site. Clean semantic HTML, CSS variables, minimal JS (nav, reveal, reduced-motion guard).
- Fully responsive; mobile nav collapses to a simple clean menu (not a cluttered drawer).
- Accessible: WCAG AA contrast (navy/warm-white passes; check gold-on-navy for text use — gold is for accents/large text, not body), keyboard nav, alt text, semantic landmarks.
- Fast. No heavy frameworks needed. If Codex prefers a static generator (Astro, Eleventy) that's fine; plain HTML/CSS is also fine for six pages.
- Deploy target: `resonancecoherence.org`.

---

## PART 2 — GLOBAL STRUCTURE

### Top navigation (all pages)

`RESONANCE` (wordmark, left, links home) ............ Home · Mission · Research · Systems · Network · Contact

Wordmark in Fraunces, small gold mark or gold period accent permitted. Nav items in body font, current page indicated by a quiet gold underline.

### Footer (all pages)

Three quiet columns on warm-white or a navy footer band:

- **The organization:** Resonance Coherent Holdings, LLC. One line. Link to Mission.
- **Find the work:** Systems (resonancecoherentsystems.com) · Research corpus (GitHub) · ERN (earthresonancenetwork.com) · Zenodo
- **Connect:** Contact · GitHub Discussions

Bottom line: `© 2026 Resonance Coherent Holdings, LLC · Content licensed CC-BY-4.0 · Last updated [date]` and a link to the canonical AI summary (safe-summary.md). Keep it small and calm.

### Shared element: status badge

Small pill, used across Research/Systems/Network and the constellation:
- **Live** — gold dot + "Live"
- **In build** — navy outline + "In build"
- **Forming** — soft grey + "Forming"

---

## PART 3 — PAGE-BY-PAGE CONTENT

---

### PAGE 1 — HOME

**Hero (navy-deep field, single sentence, IPS pattern):**

> # Resonance
> ### Making the field legible.
>
> We build the research and the instruments to see where complex systems are — and where they are heading.

(Staggered fade-up: wordmark, then line, then sentence. Faint field texture behind. One quiet scroll cue.)

**Section: The orienting frame (warm-white)**

> Every system has a configuration space — the full set of states it can occupy. A solar wind, a market, an ecosystem, a body, a community: each is somewhere in its space at any moment, with some directions of movement open and others closed.
>
> Most of the hardest problems we face come down to not knowing where we are. We react to events after they arrive because we cannot see the field they emerged from.
>
> Resonance exists to make the field legible — through research that maps the space, and instruments that show our position within it.

[Quiet text link: Read our mission →]

**Section: The constellation (the heart of the home page)**

Intro line: *One organization, several connected efforts. Each is a way of mapping or navigating a part of the field.*

A grid of cards (responsive: 3-up desktop, 1-up mobile). Each card: name, one-line description, status badge, link. Gold hairline on hover, subtle lift.

| Name | One-liner | Status | Links to |
|---|---|---|---|
| **Resonance Coherent Systems** | The instruments — live field-state monitoring, beginning with heliospheric coherence (RFS-X). | Live | Systems page → resonancecoherentsystems.com |
| **The Research Corpus** | Published, openly-licensed papers describing how coherence and stability emerge across domains. | Live | Research page |
| **Earth Resonance Network** | Coordination infrastructure for transparent flow of community, food, and environmental data. | In build | Network page → earthresonancenetwork.com |
| **Resonance Health** | Personal bio-coherence awareness, beginning with MyCoherence. | In build | (Health page — forming; link to Systems product card for now) |
| **Resonance Financial Intelligence** | Non-advisory financial field-state monitoring (FSFM). | In build | (Research/Systems product card) |
| **Bio-Environmental Coherence** | Public-health environmental coherence; first deployment with a state public health agency. | Live (deployment) | Network or Research |
| **The Institute** | The research arm — long-horizon, open science. | Forming | (no link yet; quiet "forming") |

**Section: Recent work / Published (warm-white, optional teaser)**

A short, quiet list — 3 most foundational papers, title + one line + DOI link. "See the full corpus →" to Research. (This gives the home page immediate credibility — published DOIs visible without a click.)

**Closing band (navy-deep):**

> The understanding of how the field works belongs to everyone. We build the instruments. The knowledge they produce is for the world to navigate by.

[Contact → / Mission →]

---

### PAGE 2 — MISSION

The full Our Mission document, set editorially. Use the five-movement structure already written (Why We Exist / What We Build / The Larger Pattern / What We Will Not Do / The Long View). Set in Spectral with Fraunces section headings, generous spacing, a gold hairline between movements. Pull-quote treatment for the two anchor lines:

- *"A map without a position is philosophy. A position without a map is noise. Together they are navigation."* — set large, gold rule above.
- *"The understanding of how the field works belongs to everyone."*

At the foot: links to the three governance docs (Research Ethics, Open Science, Independence Policy) as "How we hold ourselves to this →".

*(Source copy: governance/our-mission.md — use as written. The "map without a position" line should read exactly: "A map without a position is philosophy. A position without a map is noise. Together they are navigation.")*

---

### PAGE 3 — RESEARCH

**Header (navy-deep, slim):**

> # Research
> Published openly. Cited by DOI. Free to anyone.

**Intro (warm-white):**

> Our research describes the configuration space — how coherence, stability, and lead/lag relationships emerge across domains. Every paper is deposited to an open archive with a permanent identifier and licensed CC-BY-4.0. The full corpus is maintained as a machine-readable repository for both human and AI readers.

[Button-style quiet links: Full corpus on GitHub → · Author ORCID →]

**The papers list** (editorial list, NOT cards — let it read like a real publication list). For each: number, title (Fraunces), one-sentence description, and a row of quiet links (DOI · PDF · Markdown).

1. **Hierarchical Field Theory: A Unified Framework for Physical Reality** — The foundational framework: reality described through nested fields and coherence. *DOI 10.5281/zenodo.19023891*
2. **Four Modes of Black Hole Behavior** — A state-based classification framework for black hole dynamics. *DOI 10.5281/zenodo.19037234*
3. **Hierarchical Field Theory: Solutions to Major Open Problems in Physics** — Applying the framework to ten longstanding open problems. *DOI 10.5281/zenodo.19220715*
4. **Human-AI Collaboration: A Foundational Framework** — How human and AI cognition combine in sustained research work. *DOI 10.5281/zenodo.19402744*
5. **Reality as a Function of Coherence** — From personal experience to physical substrate. *DOI 10.5281/zenodo.19403712*
6. **RFS-X: A Multi-Signal Heliospheric Coherence Monitoring System** — The system description for the live RFS-X instrument. *DOI 10.5281/zenodo.19924289*
7. **Geometric Signatures of Heliospheric Coherence Events** — A preliminary shape library from integrated multi-signal analysis. *DOI 10.5281/zenodo.19924405*

**Foot:** A short note on the open/proprietary boundary:
> The research is open. The computation methodology behind the live instruments — the algorithms that produce field-state values from data — is proprietary. The knowledge is for everyone; the instruments sustain the work that produces it.

---

### PAGE 4 — SYSTEMS

**Header (transitional — this page is the bridge to the dark operational site):**

> # Systems
> The instruments. Where the field becomes visible in real time.

**Intro (warm-white):**

> Where the research maps the configuration space, the systems show our position within it — live. Each instrument reads a domain of the field and presents where it is now, which direction it is moving, and what is structurally constrained. The systems are observational and non-advisory by design: they describe the field; what you do with that is yours to decide.

**The instruments** (cards with status):

- **RFS-X — Heliospheric Coherence** *(Live)* — A live monitoring system producing a bounded measure of heliospheric field-state coherence, with derived metrics and an open event catalog. [Open RFS-X → resonancecoherentsystems.com]
- **RFS-E — Earth-System Coherence** *(In build)* — Earth-system field-state monitoring across electromagnetic, atmospheric, oceanic, and lithospheric domains.
- **MyCoherence — Personal Coherence** *(In build)* — A personal, wellness-framed bio-coherence awareness app. Part of Resonance Health.
- **FSFM — Financial System Flow** *(In build)* — Non-advisory financial field-state monitoring. Field-state maps, never recommendations.

**Foot:** [Visit the live systems → resonancecoherentsystems.com] — the single clear handoff to the operational site.

---

### PAGE 5 — NETWORK (ERN)

**Header (warm-white — ERN is the warmer, community-facing arm):**

> # Earth Resonance Network
> Coordination infrastructure for the systems people actually live inside.

**Body:** Use the ERN product card framing. Key beats:

> The Earth Resonance Network is a coordination and transparency infrastructure for communities, institutions, and businesses — connecting farms, restaurants, community hubs, schools, and researchers around shared data, transparent coordination, and non-extractive economics.
>
> It is the part of this work that touches the ground. Where the research maps the field and the instruments read it, ERN is where measurement becomes concrete coordination and livelihood.

**What it is / is not** (two quiet columns):
- *Is:* open, voluntary, non-extractive coordination infrastructure; independently valuable on its own merit.
- *Is not:* a cryptocurrency or token scheme; a central authority or political movement; dependent on Resonance technology to function.

**Foot:** [Earth Resonance Network → earthresonancenetwork.com] (note: as the network opens.)

---

### PAGE 6 — CONTACT

**Header (navy-deep, minimal):**

> # Contact
> For collaboration, research, and inquiries.

**Body (warm-white) — quiet, routed, no heavy form:**

> **Research & academic inquiries** — Corrections, citation questions, and methodological discussion are welcome through GitHub Discussions on the research corpus. [Open Discussions →]
>
> **Collaboration & partnership** — Resonance works with collaborators under staged trust and clear independence terms. [email link]
>
> **Press & general** — [email link]
>
> **The instruments** — For product access, tiers, and the live systems, visit resonancecoherentsystems.com.

A short closing line tying to independence:
> We accept work that can eventually be shared, under terms that protect research independence. We do not take engagements requiring permanent secrecy. [Our Independence Policy →]

---

## PART 4 — NOTES FOR THE BUILD

- **Forming pages (Health, Institute, RFI):** do NOT build dedicated pages yet. They appear as constellation entries / system cards with "Forming" or "In build" status. When they get their own pages, they inherit: Health → light palette, Institute → light palette, both lighter than the navy spine. Leave the architecture open for them.
- **No founder/about content** anywhere on the site at this stage, per decision. When a team exists, an "About / People" page is added — about the team, not an individual.
- **No succession, no individual names** beyond the org. (Author attribution on papers is fine — that's citation, not bio.)
- **Source-of-truth discipline:** all copy here derives from safe-summary.md, the product cards, and our-mission.md. If those change, the site follows them — not the reverse. The site is downstream of the canonical repo files.
- **Cross-link to the canonical AI summary** in the footer so AI crawlers reach safe-summary.md from the org spine.
- **Institute name:** placeholder "The Institute" until a name + available domain is secured. Single find-replace later.
```

