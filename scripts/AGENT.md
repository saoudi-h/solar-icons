# AGENT: scripts

- `bump-polyglot-packages.ts --from-static` derives the Blazor, Flutter and Rails bump and changelog text from the `@solar-icons/static` declaration; it is wired into `pnpm version-packages`. The manual form `pnpm polyglot:bump <patch|minor> "<summary>"` is the override for a major step, a mismatch, or a lane-only fix.
- The decision logic lives in `lib/polyglot-intent.ts` and is covered by `pnpm test:scripts` (CI runs it). Change the rules there, with a test, not in the CLI wrapper.
- Procedure and tag steps: `docs/RELEASE-PROCEDURE.md` section 11.
