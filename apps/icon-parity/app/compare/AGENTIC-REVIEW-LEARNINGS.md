# Agentic Icon Review: Working Learnings

This document captures observations from the first matching passes. It is an explanation and experiment log, not yet the mandatory review procedure. Rules should move into `REVIEW-PROCEDURE.md` only after repeated experiments and human validation support them.

## Objective

Build a useful Solar replacement map for Lucide, Phosphor, Hugeicons, Material Symbols, and Tabler.

The target is not thematic similarity, naming similarity, or visual resemblance alone. A reference should be usable as a replacement in the same interface without changing the user's interpretation. The standard is strict and binary at decision time:

- same concept and specificity: `equivalent`;
- same underlying concept with a meaningful drawing/style difference: `variant`, not a strict replacement;
- close subject but not interchangeable: `related`, not a replacement;
- no safe replacement: `no-match`.

## What The First Pass Taught Us

### Retrieval and decision are different problems

Text is useful for finding candidates, but it is not evidence that a candidate is correct. A direct name match can be wrong, while a candidate with a completely different name can be the correct replacement.

Examples:

- Solar `alt-arrow-up` is a chevron. `a-arrow-up` is a letter A with an arrow and is not a match.
- Solar `face-scan-square` has candidates such as Lucide `scan-face`, Tabler `face-id`, Hugeicons `scan-face`, and Phosphor `scan-smiley`. A generic `scan` candidate loses essential face specificity.
- Solar `tea-cup` is not interchangeable with Tabler `teapot` or Hugeicons `bubble-tea-01`.
- Solar `clouds` can be interchangeable with Material `cloudy`: the number of clouds is decorative when both communicate cloudy weather.

The review agent must therefore use two mental phases even when one agent performs both:

1. Gather a broad, diverse candidate set.
2. Forget the ranking and decide from the rendered concepts.

### Candidate recall is currently the main weakness

The first retrieval strategy overweights shared name tokens. This hides candidates whose source library uses a different vocabulary:

- `chevron`, `caret`, `expand`, and `keyboard-arrow` for directional symbols;
- `scan-face`, `face-id`, `scan-smiley`, and `ar-on-you` for face scanning;
- `bandage`, `healing`, and `first-aid` for adhesive plaster;
- source-specific numbered families such as Hugeicons `arrow-up-01` and `arrow-up-02`.

Candidate discovery should combine names, tags, categories, synonyms, descriptions, source conventions, and shape families. A top-N lexical ranking must never be treated as a complete search.

### Specificity matters more than shared theme

The following distinctions repeatedly change the decision:

- face scan versus generic scan;
- object scan versus document scan or generic scan;
- tea cup versus teapot versus bubble tea;
- earbud versus earbud case versus headphones;
- arrow with shaft versus chevron/caret;
- archive with upward state versus archive with downward state;
- backspace key versus delete/trash can;
- money bag versus travel bag or shopping bag.

The question is not “are these in the same category?” It is “could a user mistake one for the other in the intended interface?”

### Source conventions cannot be generalized

The same suffix or naming pattern has different meanings in different libraries. For example, Hugeicons `arrow-up-01` is a chevron-like form while `arrow-up-02` includes an arrow shaft. A suffix is a retrieval hint only. It must be rendered before being used in a decision.

## Agent Behavior

The desired agent is not a fixed pipeline that blindly executes identical steps. It should behave like a human investigator:

- form an initial concept hypothesis from the Solar render;
- use language and general icon-set knowledge to search for candidates;
- notice when the candidate set is suspiciously narrow or generic;
- change search vocabulary when the first search fails;
- compare the most plausible candidates visually;
- ask whether the difference changes meaning, specificity, or only decoration;
- investigate further when evidence conflicts;
- make a durable decision only when the evidence is sufficient.

The agent must be allowed to spend more effort on ambiguous icons and less effort on obvious exact matches. Uniform effort per icon is less useful than adaptive investigation.

## Evidence Model

For each Solar icon, the agent should build an internal concept brief containing:

- object or symbol;
- action or state;
- direction and orientation;
- count or multiplicity;
- enclosure or container;
- visual family;
- meaningful qualifiers such as open, closed, charged, checked, removed, minimalistic, or rounded.

Candidate evidence should then come from several independent signals:

- lexical name match;
- Solar tags and category;
- synonyms and domain vocabulary;
- source-specific metadata;
- source naming conventions;
- shape-family search;
- rendered visual comparison.

The signals are for recall and investigation. They do not add up to a confidence score and must not be converted into a percentage.

## Candidate Discovery Questions

When the shortlist looks weak, the agent should ask itself simple questions rather than accepting failure:

- What is the object actually drawn, independent of its name?
- Is this a shape family with another common name, such as chevron or caret?
- Is the source library likely to classify this under a different domain, such as Material's AR or scan vocabulary?
- Does the icon have a state or modifier that the current candidates omit?
- Am I seeing a generic candidate where a specialized candidate should exist?
- Does the source have numbered, filled, outline, sharp, or rounded siblings that need rendering?
- Is this candidate merely related, or would it really replace the Solar icon?

## Visual Grid Experiment

One promising alternative to icon-by-icon candidate search is to give vision-capable agents a visual index of an entire icon set.

### Basic idea

- Render a fixed number of icons into a labeled contact sheet.
- Put the icon name directly below or beside each glyph.
- Use a predictable grid, for example 10 by 10 icons per image.
- Cover one complete source set across a sequence of images.
- Give the agent one Solar icon or a small Solar batch and ask it to search the visual index for interchangeable references.

This gives the agent context that a lexical shortlist cannot provide. It can notice that the correct candidate is visually present even when the source name is unrelated.

### Initial sizing hypothesis

- Start with approximately 100 icons per sheet.
- Keep labels readable at the model's image resolution.
- Use consistent glyph size, cell size, stroke rendering, and background.
- Include the source name and sheet range in the image metadata or filename.
- Generate a machine-readable index mapping sheet position to source icon name.

Solar would require roughly 13 sheets at 100 icons per sheet. Smaller reference sets would require more or fewer sheets according to their inventory.

### Hugeicons constraint

Hugeicons has close to 6,000 unique icons, so a single flat sequence would be inefficient. A useful experiment may need coarse grouping before rendering:

- source categories when available;
- semantic families such as arrows, devices, people, weather, and objects;
- name and tag partitions only as navigation aids, not as matching decisions;
- a first index of category sheets followed by targeted detail sheets.

The category index must not hide icons from the agent. It should only reduce the number of sheets it needs to inspect.

### What the experiment should measure

- whether agents find candidates absent from lexical retrieval;
- whether visual grids reduce false `no-match` decisions;
- whether readable labels are sufficient for returning exact source names;
- whether 100 icons per sheet is too dense;
- whether category grouping helps or creates category bias;
- how often a second sheet is needed to resolve an ambiguous concept.

This is an experiment proposal, not an implementation requirement.

## Metadata Investigation

Rich source metadata could improve candidate recall before any image analysis. Useful fields include:

- canonical name and aliases;
- category and subcategory;
- tags and search keywords;
- human description;
- related or alternate icons;
- style and variant information;
- source-specific family membership.

Metadata should be collected per library rather than normalized into one assumed vocabulary. A Material category, a Lucide tag, and a Hugeicons name suffix do not necessarily mean the same thing.

## Current Experiment Log

Confirmed anomaly patterns so far:

- lexical arrow matches selected instead of chevrons;
- generic `scan` selected instead of face/object-specific scan icons;
- tea cup matched to teapot or bubble tea;
- generic alarm selected for `alarm-remove` even though source sets provide `alarm-clock-minus`, `alarm-off`, or `alarm-minus` candidates;
- generic shield selected for `shield-cross` even though `shield-x` candidates exist;
- state or modifier symbols omitted from `gamepad-charge`, `text-underline-cross`, and `text-cross-circle` matches;
- source inventory expanded beyond the actual application inventory and had to be scoped back to the real 1,247 Solar icons.

Validated non-anomaly:

- `clouds` and `cloudy` can be interchangeable despite different cloud counts because the count is decorative and the weather concept is the same.

- `text-underline-cross` is itself a naming anomaly: the visible symbol is a text underline enclosed by a square, not a cross. This is tracked in Autonomos issue `ICON-NAMING-AUDIT`.

This log should grow only from reviewed experiments. Do not turn every suspicion into a global rule.
