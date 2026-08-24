# Equivalent Audit: Solar Sheet 12, Batch 01

This batch audits all twenty-four Solar sheet-12 rows labelled `equivalent`. The strict criterion
is semantic interchangeability: object, action, state, modifier, and specificity must survive
replacement; stroke and construction differences are styling only. Candidates remain preserved in
the production sheet.

## Results

All twenty-four rows remain strict matches. No production reference or decision required correction.
The `trash` and `upload` duplicate references remain intentional collision entries; this audit does
not choose a preferred Solar alias for reverse migration.

| Solar ID | Solar                      | Lucide ID | Lucide               | Verdict | Evidence                                                                                    |
| -------- | -------------------------- | --------- | -------------------- | ------- | ------------------------------------------------------------------------------------------- |
| S1104    | `text-underline`           | L1713     | `underline`          | match   | Same underline text-formatting action.                                                      |
| S1110    | `ticket`                   | L1652     | `ticket`             | match   | Same ticket object.                                                                         |
| S1111    | `ticket-sale`              | L1655     | `ticket-percent`     | match   | Same ticket with a percent/sale modifier.                                                   |
| S1112    | `to-pip`                   | L1238     | `picture-in-picture` | match   | Same picture-in-picture transition with an inset frame.                                     |
| S1116    | `traffic-economy`          | L0401     | `circle-fading-plus` | match   | Same circular fading status/economy mark with a plus modifier.                              |
| S1118    | `transfer-horizontal`      | L0084     | `arrow-left-right`   | match   | Same bidirectional horizontal transfer action.                                              |
| S1119    | `transfer-vertical`        | L0079     | `arrow-down-up`      | match   | Same bidirectional vertical transfer action.                                                |
| S1125    | `trash-bin-2`              | L1684     | `trash`              | match   | Same empty-body trash-bin object.                                                           |
| S1126    | `trash-bin-minimalistic`   | L1685     | `trash-2`            | match   | Same trash-bin object with the same minimal vertical-body detail.                           |
| S1127    | `trash-bin-minimalistic-2` | L1684     | `trash`              | match   | Same empty-body trash-bin object; this remains a documented alias collision.                |
| S1128    | `trash-bin-trash`          | L1685     | `trash-2`            | match   | Same trash-bin object with vertical-body detail; this remains a documented alias collision. |
| S1137    | `turntable`                | L1702     | `turntable`          | match   | Same turntable object.                                                                      |
| S1146    | `undo-left-round`          | L1715     | `undo-2`             | match   | Same rounded leftward undo action.                                                          |
| S1150    | `undo-right-round`         | L1311     | `redo-2`             | match   | Same rounded rightward redo/undo action.                                                    |
| S1153    | `unlink`                   | L1721     | `unlink`             | match   | Same broken-link/unlink action.                                                             |
| S1155    | `unread`                   | L0345     | `check`              | match   | Same check-mark glyph used by this Solar state icon.                                        |
| S1156    | `upload`                   | L1724     | `upload`             | match   | Same upward upload action from an open tray.                                                |
| S1157    | `upload-minimalistic`      | L1724     | `upload`             | match   | Same upward upload action with a minimal tray; this remains a documented alias collision.   |
| S1162    | `usb`                      | L1725     | `usb`                | match   | Same USB connector object.                                                                  |
| S1165    | `user`                     | L1726     | `user`               | match   | Same generic user silhouette.                                                               |
| S1170    | `user-circle`              | L0420     | `circle-user`        | match   | Same user silhouette enclosed by a circle.                                                  |
| S1177    | `user-id`                  | L0887     | `id-card`            | match   | Same identity-card object containing a user and identification fields.                      |
| S1188    | `verified-check`           | L0119     | `badge-check`        | match   | Same verified badge with a check modifier.                                                  |
| S1197    | `videocamera`              | L1763     | `video`              | match   | Same video-camera object; body construction differences are stylistic.                      |

## Verification

- Solar atlas inspected: `.atlas/solar/solar-12.png`.
- Selected Lucide references were inspected in `.atlas/lucide/lucide-01.png`, `lucide-02.png`,
  `lucide-04.png`, `lucide-08.png`, `lucide-09.png`, `lucide-13.png`, `lucide-17.png`, and
  `lucide-18.png`.
- Directional transfer, ticket, picture-in-picture, turntable, undo/redo, unlink, USB, user,
  identity-card, verification, and video-camera semantics are preserved. Naming differences such
  as `ticket-sale`/`ticket-percent`, `to-pip`/`picture-in-picture`, and `videocamera`/`video` do
  not change replacement meaning.
- The `trash` and `trash-2` and the `upload` collisions remain recorded in
  `lucide-coverage/COLLISION-AUDIT.md`; no one-to-many reference was auto-resolved.
- All candidate arrays in `sheet-12.json` remain intact; `verified-matches.json` was not modified.
- The 24 audited rows in `sheet-12.json` remain `equivalent`; no other sheet-12 decisions were
  changed in this batch.

```bash
pnpm --filter icon-parity production:validate -- 12
pnpm --filter icon-parity lucide:coverage:check
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
