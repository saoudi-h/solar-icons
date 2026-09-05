# Solar Icons Design Direction

> Status: provisional. This document records the working direction accepted on 2026-09-03. It is a decision record for the project, not a generic style guide.

## Purpose

The Solar Icons homepage should help a visitor understand three things in order:

1. what the icon library is;
2. how it fits their workflow;
3. why the project is worth trusting.

Every homepage element must support discovery, integration, workflow, or trust. If an element does not have a clear role, it should be questioned before it is added.

## Working thesis

Solar Icons is an icon system for discovering, integrating, and extending an icon workflow. The homepage should feel like a coherent product surface, not a chronological inventory of features added over time.

The current visual identity is a valid foundation. The work should add hierarchy, regularity, and restraint without replacing the identity for the sake of novelty.

## Accepted direction

- Use a capability-first homepage structure.
- Keep discovery as the primary product story. The icon explorer is the core destination.
- Present integration packages as the second priority.
- Present CLI, MCP, Skill, codemod, typings, and documentation as workflow support, not as unrelated competing products.
- Use community and live project data as supporting evidence, not as the main story.
- Treat newly added functionality as part of an existing capability before considering a new standalone section.

## Selected homepage route

Option A, the natural product path, was selected on 2026-09-03 for the first prototype:

```text
Hero → Discover → Integrate → Extend the workflow → Project proof
```

The first implementation experiment is limited to the capabilities section. The hero, package catalogue, community section, and AI tools section stay unchanged so the effect of the new hierarchy can be judged in isolation.

## Provisional homepage information architecture

The following structure is a direction to test, not a mandate to implement in one pass:

1. **Hero**: one product promise, one primary route to explore icons, and one secondary route to documentation.
2. **Capabilities**: a reduced set of capability groups rather than a list of unrelated feature claims.
   - **Discover**: search, categories, visual styles, and relevant visual previews.
   - **Integrate**: framework packages, static SVGs, JavaScript, and Figma where it helps the integration story.
   - **Extend the workflow**: documentation, typings, codemod, CLI, MCP, and Skill support.
3. **Packages**: a catalogue grouped by role. Framework packages, web platform packages, and developer tools should not compete as if they were the same kind of product.
4. **Project proof**: community, maintenance, usage signals, and contribution paths.
5. **Footer**: direct navigation and legal information.

The exact placement of the AI tools content remains open. It should not repeat the same AI promise in both a feature card and a full-width closing section unless each instance has a different job.

## Design and content rules

### 1. One job per section

Each section must answer one visitor question. Its heading, supporting copy, visual proof, and action must point to that same question.

### 2. One fact, one primary explanation

Do not repeat the same product fact in the hero, section introduction, card copy, and closing CTA. A repeated link is acceptable when the surrounding context changes. Repeated claims need a clear reason to exist.

### 3. Explicit hierarchy

The page has one semantic and visual `h1`. Sections use `h2`, and cards use `h3` unless a different structure is justified. Visual size and semantic level should not drift apart without a reason.

### 4. Surfaces have roles

Noise, colored halos, rounded panels, and the purple accent are part of the Solar Icons identity. They should be assigned roles:

- the hero may carry the strongest atmospheric treatment;
- one additional narrative section may use a related treatment when it earns that emphasis;
- catalogues and utility lists should use quieter surfaces so that the atmospheric treatment retains meaning;
- the same full-width textured panel should not become the default wrapper for every section.

### 5. Visuals must prove something

An illustration, screenshot, or icon composition should demonstrate the claim beside it. Visuals should not be added only to fill a card or equalize heights.

### 6. Actions must express priority

Each section gets one primary action at most. Secondary actions are allowed when they lead to a genuinely different next step. Icon-only actions must remain understandable without relying on hover.

### 7. Package taxonomy must be honest

The copy and layout must distinguish framework packages, platform packages, and workflow tools. Status badges can communicate maturity, but they must not replace categorization.

### 8. Motion cannot carry content

Content must remain available when an observer scrolls quickly, when animations are disabled, and when reduced motion is requested. Entrance animation is decoration, not a visibility mechanism.

### 9. Real information only

Use real package capabilities, real screenshots, and real project signals. Do not invent metrics, testimonials, or filler copy to complete a composition.

### 10. Responsive composition is intentional

Mobile is not only a stacked desktop grid. Section order, card height, copy length, and interaction density must be reviewed at representative widths. Large empty areas need a content or interaction reason at every width.

## Review protocol

Before a consequential homepage change:

1. state the section's job and the information it makes more prominent;
2. describe what existing content remains, moves, or is removed;
3. compare at least two structural options when composition is still open;
4. change one coherent slice at a time;
5. inspect the rendered page at 390, 768, and 1280 px widths, in both themes when the change affects them;
6. review scroll order, keyboard access, reduced-motion behavior, and the first meaningful viewport;
7. keep the change provisional until the rendered result has been discussed.

## Known implementation issues

These are maintenance findings discovered during the initial audit. They should be fixed independently from broad visual changes:

- `SectionMotion` can leave tall sections invisible on mobile because its viewport threshold is larger than the maximum visible portion of the section.
- The homepage currently renders several section headings as `h1`.
- Package card icon buttons need accessible names that do not depend on tooltip content.
- Light-mode contrast and the visual weight of muted text need a focused review before color changes are proposed.

## Open questions

- Is browsing icons, rather than installing a package, the primary first action for the homepage? This document currently assumes yes.
- Does Figma belong inside the integration capability or as a separate acquisition path?
- Should AI tools have a dedicated homepage block, or should they live inside the workflow capability and package taxonomy?
- What single proof should the community section communicate: adoption, maintenance, contribution, or a combination with clear priority?
- What final labels and grouping should the package catalogue use?

## Not decided

This document does not yet decide the final copy, exact section count, color tokens, typography changes, animation style, or whether any existing section should be removed. Those decisions require a rendered comparison and an explicit checkpoint.
