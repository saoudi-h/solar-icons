/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import IconBase from "../../lib/IconBase"
import weights from "../../defs/call/CallChat"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNC41NTYyIDE1LjU0NzdMMTQuMTAwNyAxNi4wMjcyQzE0LjEwMDcgMTYuMDI3MiAxMy4wMTgxIDE3LjE2NyAxMC4wNjMxIDE0LjA1NTlDNy4xMDgxMiAxMC45NDQ4IDguMTkwNyA5LjgwNTA3IDguMTkwNyA5LjgwNTA3TDguNDc3NTIgOS41MDMxMUM5LjE4NDA3IDguNzU5MjQgOS4yNTA2OCA3LjU2NDk3IDguNjM0MjQgNi42OTMxTDcuMzczMjYgNC45MDk2MUM2LjYxMDI4IDMuODMwNSA1LjEzNTk2IDMuNjg3OTUgNC4yNjE0NSA0LjYwODY0TDIuNjkxODUgNi4yNjExNEMyLjI1ODIzIDYuNzE3NjYgMS45Njc2NSA3LjMwOTQ1IDIuMDAyODkgNy45NjU5NEMyLjA5MzA0IDkuNjQ1NDYgMi44MTA3MSAxMy4yNTkgNi44MTUzNiAxNy40NzUyQzExLjA2MjEgMjEuOTQ2MiAxNS4wNDY4IDIyLjEyMzkgMTYuNjc2MyAyMS45NjMxQzE3LjE5MTcgMjEuOTEyMiAxNy42Mzk5IDIxLjYzNDMgMTguMDAxMSAyMS4yNTRMMTkuNDIxNyAxOS43NTg0QzIwLjM4MDYgMTguNzQ4OSAyMC4xMTAyIDE3LjAxODIgMTguODgzMyAxNi4zMTJMMTYuOTcyOCAxNS4yMTIzQzE2LjE2NzIgMTQuNzQ4NiAxNS4xODU4IDE0Ljg4NDggMTQuNTU2MiAxNS41NDc3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTcgMTJDMTkuNzYxNCAxMiAyMiA5Ljc2MTQyIDIyIDdDMjIgNC4yMzg1OCAxOS43NjE0IDIgMTcgMkMxNC4yMzg2IDIgMTIgNC4yMzg1OCAxMiA3QzEyIDcuNzk5ODQgMTIuMTg3OCA4LjU1NTgyIDEyLjUyMTcgOS4yMjYyNEMxMi42MTA1IDkuNDA0NCAxMi42NCA5LjYwODAzIDEyLjU4ODYgOS44MDAzMUwxMi4yOTA4IDEwLjkxMzNDMTIuMTYxNSAxMS4zOTY1IDEyLjYwMzUgMTEuODM4NSAxMy4wODY3IDExLjcwOTJMMTQuMTk5NyAxMS40MTE0QzE0LjM5MiAxMS4zNiAxNC41OTU2IDExLjM4OTUgMTQuNzczOCAxMS40NzgzQzE1LjQ0NDIgMTEuODEyMiAxNi4yMDAyIDEyIDE3IDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE0LjU1NjIgMTUuNTQ3N0wxNC4xMDA3IDE2LjAyNzJDMTQuMTAwNyAxNi4wMjcyIDEzLjAxODEgMTcuMTY3IDEwLjA2MzEgMTQuMDU1OUM3LjEwODEyIDEwLjk0NDggOC4xOTA3IDkuODA1MDcgOC4xOTA3IDkuODA1MDdMOC40Nzc1MiA5LjUwMzExQzkuMTg0MDcgOC43NTkyNCA5LjI1MDY4IDcuNTY0OTcgOC42MzQyNCA2LjY5MzFMNy4zNzMyNiA0LjkwOTYxQzYuNjEwMjggMy44MzA1IDUuMTM1OTYgMy42ODc5NSA0LjI2MTQ1IDQuNjA4NjRMMi42OTE4NSA2LjI2MTE0QzIuMjU4MjMgNi43MTc2NiAxLjk2NzY1IDcuMzA5NDUgMi4wMDI4OSA3Ljk2NTk0QzIuMDkzMDQgOS42NDU0NiAyLjgxMDcxIDEzLjI1OSA2LjgxNTM2IDE3LjQ3NTJDMTEuMDYyMSAyMS45NDYyIDE1LjA0NjggMjIuMTIzOSAxNi42NzYzIDIxLjk2MzFDMTcuMTkxNyAyMS45MTIyIDE3LjYzOTkgMjEuNjM0MyAxOC4wMDExIDIxLjI1NEwxOS40MjE3IDE5Ljc1ODRDMjAuMzgwNiAxOC43NDg5IDIwLjExMDIgMTcuMDE4MiAxOC44ODMzIDE2LjMxMkwxNi45NzI4IDE1LjIxMjNDMTYuMTY3MiAxNC43NDg2IDE1LjE4NTggMTQuODg0OCAxNC41NTYyIDE1LjU0NzdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNyAxMkMxOS43NjE0IDEyIDIyIDkuNzYxNDIgMjIgN0MyMiA0LjIzODU4IDE5Ljc2MTQgMiAxNyAyQzE0LjIzODYgMiAxMiA0LjIzODU4IDEyIDdDMTIgNy43OTk4NCAxMi4xODc4IDguNTU1ODIgMTIuNTIxNyA5LjIyNjI0QzEyLjYxMDUgOS40MDQ0IDEyLjY0IDkuNjA4MDMgMTIuNTg4NiA5LjgwMDMxTDEyLjI5MDggMTAuOTEzM0MxMi4xNjE1IDExLjM5NjUgMTIuNjAzNSAxMS44Mzg1IDEzLjA4NjcgMTEuNzA5MkwxNC4xOTk3IDExLjQxMTRDMTQuMzkyIDExLjM2IDE0LjU5NTYgMTEuMzg5NSAxNC43NzM4IDExLjQ3ODNDMTUuNDQ0MiAxMS44MTIyIDE2LjIwMDIgMTIgMTcgMTJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNyAxMkMxOS43NjE0IDEyIDIyIDkuNzYxNDIgMjIgN0MyMiA0LjIzODU4IDE5Ljc2MTQgMiAxNyAyQzE0LjIzODYgMiAxMiA0LjIzODU4IDEyIDdDMTIgNy43OTk4NCAxMi4xODc4IDguNTU1ODIgMTIuNTIxNyA5LjIyNjI0QzEyLjYxMDUgOS40MDQ0IDEyLjY0IDkuNjA4MDMgMTIuNTg4NiA5LjgwMDMxTDEyLjI5MDggMTAuOTEzM0MxMi4xNjE1IDExLjM5NjUgMTIuNjAzNSAxMS44Mzg1IDEzLjA4NjcgMTEuNzA5MkwxNC4xOTk3IDExLjQxMTRDMTQuMzkyIDExLjM2IDE0LjU5NTYgMTEuMzg5NSAxNC43NzM4IDExLjQ3ODNDMTUuNDQ0MiAxMS44MTIyIDE2LjIwMDIgMTIgMTcgMTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIGQ9Ik0xNC4xMDA4IDE2LjAyNzJMMTQuNjQ0NiAxNi41NDM3VjE2LjU0MzdMMTQuMTAwOCAxNi4wMjcyWk0xNC41NTYyIDE1LjU0NzdMMTQuMDEyNCAxNS4wMzEyVjE1LjAzMTJMMTQuNTU2MiAxNS41NDc3Wk0xNi45NzI5IDE1LjIxMjNMMTYuNTk4NyAxNS44NjIzSDE2LjU5ODdMMTYuOTcyOSAxNS4yMTIzWk0xOC44ODM0IDE2LjMxMkwxOC41MDkyIDE2Ljk2MkwxOC44ODM0IDE2LjMxMlpNMTkuNDIxNyAxOS43NTg0TDE5Ljk2NTUgMjAuMjc1TDE5Ljk2NTUgMjAuMjc0OUwxOS40MjE3IDE5Ljc1ODRaTTE4LjAwMTIgMjEuMjU0TDE3LjQ1NzQgMjAuNzM3NUwxOC4wMDEyIDIxLjI1NFpNMTYuNjc2MyAyMS45NjMxTDE2Ljc1IDIyLjcwOTVMMTYuNjc2MyAyMS45NjMxWk02LjgxNTQgMTcuNDc1Mkw3LjM1OTIgMTYuOTU4N0w2LjgxNTQgMTcuNDc1MlpNMi43NTE4NSA3LjkyNTc0QzIuNzI5NjUgNy41MTIxMiAyLjM3NjM1IDcuMTk0ODEgMS45NjI3MyA3LjIxNzAxQzEuNTQ5MTEgNy4yMzkyMSAxLjIzMTgxIDcuNTkyNTIgMS4yNTQwMSA4LjAwNjEzTDIuNzUxODUgNy45MjU3NFpNOC4xOTA3NSA5LjgwNTA3TDguNzM0NTQgMTAuMzIxNkw4LjE5MDc1IDkuODA1MDdaTTguNDc3NTYgOS41MDMxMUw5LjAyMTM1IDEwLjAxOTZMOC40Nzc1NiA5LjUwMzExWk04LjYzNDI4IDYuNjkzMUw5LjI0NjY4IDYuMjYwMTJMOC42MzQyOCA2LjY5MzFaTTcuMzczMyA0LjkwOTYxTDYuNzYwOSA1LjM0MjZWNS4zNDI2TDcuMzczMyA0LjkwOTYxWk0zLjcxNzcgNC4wOTIxM0MzLjQzMjQ0IDQuMzkyNDYgMy40NDQ2NSA0Ljg2NzE3IDMuNzQ0OTggNS4xNTI0NEM0LjA0NTMxIDUuNDM3NyA0LjUyMDAyIDUuNDI1NDkgNC44MDUyOSA1LjEyNTE2TDMuNzE3NyA0LjA5MjEzWk0xMC4wNjMyIDE0LjA1NTlMMTAuNjA3IDEzLjUzOTRMMTAuMDYzMiAxNC4wNTU5Wk05LjY2NDEgMjAuODEyM0MxMC4wMTQ4IDIxLjAzMjcgMTAuNDc3OCAyMC45MjcxIDEwLjY5ODIgMjAuNTc2NEMxMC45MTg2IDIwLjIyNTcgMTAuODEyOSAxOS43NjI3IDEwLjQ2MjIgMTkuNTQyM0w5LjY2NDEgMjAuODEyM1pNMTQuMTEzIDIxLjA1ODRDMTMuNzA3NiAyMC45NzM1IDEzLjMxMDEgMjEuMjMzNCAxMy4yMjUyIDIxLjYzODhDMTMuMTQwMyAyMi4wNDQyIDEzLjQwMDEgMjIuNDQxNyAxMy44MDU2IDIyLjUyNjZMMTQuMTEzIDIxLjA1ODRaTTE0LjY0NDYgMTYuNTQzN0wxNS4xIDE2LjA2NDJMMTQuMDEyNCAxNS4wMzEyTDEzLjU1NyAxNS41MTA3TDE0LjY0NDYgMTYuNTQzN1pNMTYuNTk4NyAxNS44NjIzTDE4LjUwOTIgMTYuOTYyTDE5LjI1NzUgMTUuNjYyTDE3LjM0NyAxNC41NjIzTDE2LjU5ODcgMTUuODYyM1pNMTguODc3OSAxOS4yNDE5TDE3LjQ1NzQgMjAuNzM3NUwxOC41NDUgMjEuNzcwNUwxOS45NjU1IDIwLjI3NUwxOC44Nzc5IDE5LjI0MTlaTTcuMzU5MiAxNi45NTg3QzMuNDgzMDcgMTIuODc3OCAyLjgzMjg5IDkuNDM1NTYgMi43NTE4NSA3LjkyNTc0TDEuMjU0MDEgOC4wMDYxM0MxLjM1MzI2IDkuODU1MzYgMi4xMzg0NCAxMy42NDAzIDYuMjcxNjEgMTcuOTkxN0w3LjM1OTIgMTYuOTU4N1pNOC43MzQ1NCAxMC4zMjE2TDkuMDIxMzUgMTAuMDE5Nkw3LjkzMzc3IDguOTg2Nkw3LjY0Njk1IDkuMjg4NTZMOC43MzQ1NCAxMC4zMjE2Wk05LjI0NjY4IDYuMjYwMTJMNy45ODU2OSA0LjQ3NjYzTDYuNzYwOSA1LjM0MjZMOC4wMjE4OSA3LjEyNjA4TDkuMjQ2NjggNi4yNjAxMlpNOC4xOTA3NSA5LjgwNTA3QzcuNjQ2OTUgOS4yODg1NiA3LjY0NjI2IDkuMjg5MjkgNy42NDU1NiA5LjI5MDAyQzcuNjQ1MzMgOS4yOTAyOCA3LjY0NDYzIDkuMjkxMDIgNy42NDQxNSA5LjI5MTUyQzcuNjQzMiA5LjI5MjU0IDcuNjQyMjMgOS4yOTM1NyA3LjY0MTI1IDkuMjk0NjNDNy42MzkyOCA5LjI5Njc1IDcuNjM3MjQgOS4yOTg5NiA3LjYzNTE1IDkuMzAxMjdDNy42MzA5NSA5LjMwNTg4IDcuNjI2NSA5LjMxMDg3IDcuNjIxODIgOS4zMTYyNUM3LjYxMjQ3IDkuMzI3MDEgNy42MDIxOSA5LjMzOTMxIDcuNTkxMiA5LjM1MzJDNy41NjkyMiA5LjM4MDk4IDcuNTQ0MzUgOS40MTUxMSA3LjUxODI2IDkuNDU1ODhDNy40NjU5NSA5LjUzNzY0IDcuNDA5MjEgOS42NDUzMSA3LjM2MTE3IDkuNzgwMzNDNy4yNjM0NiAxMC4wNTQ5IDcuMjEwMjIgMTAuNDE4NSA3LjI3Njc1IDEwLjg3MjZDNy40MDc0NiAxMS43NjQ3IDcuOTkyMDIgMTIuOTY0NCA5LjUxOTM3IDE0LjU3MjRMMTAuNjA3IDEzLjUzOTRDOS4xNzkzIDEyLjAzNjMgOC44Mjc2NSAxMS4xMTA2IDguNzYwOSAxMC42NTUxQzguNzI4NzEgMTAuNDM1NCA4Ljc2MTQyIDEwLjMxOTYgOC43NzQzNiAxMC4yODMyQzguNzgxNjMgMTAuMjYyOCA4Ljc4NjM5IDEwLjI1NzEgOC43ODE3NCAxMC4yNjQ0QzguNzc5NDggMTAuMjY3OSA4Ljc3NDk4IDEwLjI3NDUgOC43Njc0MiAxMC4yODQxQzguNzYzNjMgMTAuMjg4OCA4Ljc1OTA4IDEwLjI5NDQgOC43NTM2NCAxMC4zMDA2QzguNzUwOTIgMTAuMzAzOCA4Ljc0Nzk4IDEwLjMwNzEgOC43NDQ4IDEwLjMxMDZDOC43NDMyMSAxMC4zMTIzIDguNzQxNTYgMTAuMzE0MSA4LjczOTg1IDEwLjMxNTlDOC43MzkgMTAuMzE2OSA4LjczODEzIDEwLjMxNzggOC43MzcyNCAxMC4zMTg3QzguNzM2OCAxMC4zMTkyIDguNzM2MTIgMTAuMzE5OSA4LjczNTkgMTAuMzIwMkM4LjczNTIyIDEwLjMyMDkgOC43MzQ1NCAxMC4zMjE2IDguMTkwNzUgOS44MDUwN1pNOS41MTkzNyAxNC41NzI0QzExLjA0MjIgMTYuMTc1NyAxMi4xOTI0IDE2LjgwNiAxMy4wNjk5IDE2Ljk0ODVDMTMuNTIwMSAxNy4wMjE2IDEzLjg4NDYgMTYuOTYzMiAxNC4xNjA2IDE2Ljg1NDRDMTQuMjk1NSAxNi44MDEyIDE0LjQwMjMgMTYuNzM4NyAxNC40ODI0IDE2LjY4MTlDMTQuNTIyMyAxNi42NTM1IDE0LjU1NTYgMTYuNjI2NiAxNC41ODI1IDE2LjYwMzFDMTQuNTk1OSAxNi41OTEzIDE0LjYwNzggMTYuNTgwMyAxNC42MTgxIDE2LjU3MDNDMTQuNjIzMyAxNi41NjU0IDE0LjYyOCAxNi41NjA2IDE0LjYzMjQgMTYuNTU2MkMxNC42MzQ2IDE2LjU1NCAxNC42MzY4IDE2LjU1MTggMTQuNjM4OCAxNi41NDk3QzE0LjYzOTggMTYuNTQ4NyAxNC42NDA4IDE2LjU0NzcgMTQuNjQxNyAxNi41NDY3QzE0LjY0MjIgMTYuNTQ2MiAxNC42NDI5IDE2LjU0NTQgMTQuNjQzMiAxNi41NDUyQzE0LjY0MzkgMTYuNTQ0NCAxNC42NDQ2IDE2LjU0MzcgMTQuMTAwOCAxNi4wMjcyQzEzLjU1NyAxNS41MTA3IDEzLjU1NzcgMTUuNTEgMTMuNTU4MyAxNS41MDkzQzEzLjU1ODYgMTUuNTA5IDEzLjU1OTIgMTUuNTA4MyAxMy41NTk3IDE1LjUwNzhDMTMuNTYwNiAxNS41MDY5IDEzLjU2MTUgMTUuNTA2IDEzLjU2MjMgMTUuNTA1MUMxMy41NjQxIDE1LjUwMzMgMTMuNTY1OCAxNS41MDE1IDEzLjU2NzUgMTUuNDk5OEMxMy41NzA4IDE1LjQ5NjUgMTMuNTc0IDE1LjQ5MzMgMTMuNTc3IDE1LjQ5MDRDMTMuNTgzMSAxNS40ODQ2IDEzLjU4ODUgMTUuNDc5NiAxMy41OTMzIDE1LjQ3NTRDMTMuNjAyOSAxNS40NjcgMTMuNjEgMTUuNDYxNiAxMy42MTQ2IDE1LjQ1ODRDMTMuNjIzOSAxNS40NTE3IDEzLjYyMyAxNS40NTQgMTMuNjEwMiAxNS40NTlDMTMuNTkwOSAxNS40NjY2IDEzLjUwMDEgMTUuNDk4NyAxMy4zMTAzIDE1LjQ2NzlDMTIuOTA3OCAxNS40MDI1IDEyLjAzOTEgMTUuMDQ3MiAxMC42MDcgMTMuNTM5NEw5LjUxOTM3IDE0LjU3MjRaTTcuOTg1NjkgNC40NzY2M0M2Ljk3MjEgMy4wNDMwNSA0Ljk0Mzg4IDIuODAxMTkgMy43MTc3IDQuMDkyMTNMNC44MDUyOSA1LjEyNTE2QzUuMzI4MTIgNC41NzQ3MSA2LjI0ODU1IDQuNjE3OTUgNi43NjA5IDUuMzQyNkw3Ljk4NTY5IDQuNDc2NjNaTTE3LjQ1NzQgMjAuNzM3NUMxNy4xNzgzIDIxLjAzMTMgMTYuODg2NCAyMS4xODg3IDE2LjYwMjYgMjEuMjE2N0wxNi43NSAyMi43MDk1QzE3LjQ5NyAyMi42MzU3IDE4LjEwMTYgMjIuMjM3MyAxOC41NDUgMjEuNzcwNUwxNy40NTc0IDIwLjczNzVaTTkuMDIxMzUgMTAuMDE5NkM5Ljk4ODkzIDkuMDAwOTUgMTAuMDU3NCA3LjQwNjc4IDkuMjQ2NjggNi4yNjAxMkw4LjAyMTg5IDcuMTI2MDhDOC40NDQwNCA3LjcyMzE1IDguMzc5MyA4LjUxNzUzIDcuOTMzNzcgOC45ODY2TDkuMDIxMzUgMTAuMDE5NlpNMTguNTA5MiAxNi45NjJDMTkuMzMwMSAxNy40MzQ1IDE5LjQ5MDcgMTguNTk2OCAxOC44Nzc5IDE5LjI0MTlMMTkuOTY1NSAyMC4yNzQ5QzIxLjI3MDUgMTguOTAxIDIwLjg5MDQgMTYuNjAxOSAxOS4yNTc1IDE1LjY2MkwxOC41MDkyIDE2Ljk2MlpNMTUuMSAxNi4wNjQyQzE1LjQ4NTQgMTUuNjU4NCAxNi4wODYgMTUuNTY3MiAxNi41OTg3IDE1Ljg2MjNMMTcuMzQ3IDE0LjU2MjNDMTYuMjQ4NSAxMy45MyAxNC44ODYyIDE0LjExMTMgMTQuMDEyNCAxNS4wMzEyTDE1LjEgMTYuMDY0MlpNMTAuNDYyMiAxOS41NDIzQzkuNDc4NDYgMTguOTI0MSA4LjQzMTQ5IDE4LjA4NzYgNy4zNTkyIDE2Ljk1ODdMNi4yNzE2MSAxNy45OTE3QzcuNDI1NjQgMTkuMjA2NyA4LjU2ODk3IDIwLjEyNDEgOS42NjQxIDIwLjgxMjNMMTAuNDYyMiAxOS41NDIzWk0xNi42MDI2IDIxLjIxNjdDMTYuMDU2MSAyMS4yNzA3IDE1LjE5MTIgMjEuMjg0MiAxNC4xMTMgMjEuMDU4NEwxMy44MDU2IDIyLjUyNjZDMTUuMDU0MSAyMi43ODggMTYuMDc0MiAyMi43NzYyIDE2Ljc1IDIyLjcwOTVMMTYuNjAyNiAyMS4yMTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNyAxMkMxOS43NjE0IDEyIDIyIDkuNzYxNDIgMjIgN0MyMiA0LjIzODU4IDE5Ljc2MTQgMiAxNyAyQzE0LjIzODYgMiAxMiA0LjIzODU4IDEyIDdDMTIgNy43OTk4NCAxMi4xODc4IDguNTU1ODIgMTIuNTIxNyA5LjIyNjI0QzEyLjYxMDUgOS40MDQ0IDEyLjY0IDkuNjA4MDMgMTIuNTg4NiA5LjgwMDMxTDEyLjI5MDggMTAuOTEzM0MxMi4xNjE1IDExLjM5NjUgMTIuNjAzNSAxMS44Mzg1IDEzLjA4NjcgMTEuNzA5MkwxNC4xOTk3IDExLjQxMTRDMTQuMzkyIDExLjM2IDE0LjU5NTYgMTEuMzg5NSAxNC43NzM4IDExLjQ3ODNDMTUuNDQ0MiAxMS44MTIyIDE2LjIwMDIgMTIgMTcgMTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIGQ9Ik0xNC4xMDA3IDE2LjAyNzJMMTMuNTU2OSAxNS41MTA3TDE0LjEwMDcgMTYuMDI3MlpNMTQuNTU2MiAxNS41NDc3TDE1LjEgMTYuMDY0MkgxNS4xTDE0LjU1NjIgMTUuNTQ3N1pNMTYuOTcyOCAxNS4yMTIzTDE2LjU5ODcgMTUuODYyM0gxNi41OTg3TDE2Ljk3MjggMTUuMjEyM1pNMTguODgzMyAxNi4zMTJMMTguNTA5MiAxNi45NjJMMTguODgzMyAxNi4zMTJaTTE5LjQyMTcgMTkuNzU4NEwxOS45NjU1IDIwLjI3NDlMMTkuNDIxNyAxOS43NTg0Wk0xOC4wMDExIDIxLjI1NEwxNy40NTczIDIwLjczNzVMMTguMDAxMSAyMS4yNTRaTTE2LjY3NjMgMjEuOTYzMUwxNi43NDk5IDIyLjcwOTVMMTYuNjc2MyAyMS45NjMxWk02LjgxNTM2IDE3LjQ3NTJMNy4zNTkxNSAxNi45NTg3TDYuODE1MzYgMTcuNDc1MlpNMi4wMDI4OSA3Ljk2NTk0TDEuMjUzOTcgOC4wMDYxM0wxLjI1Mzk3IDguMDA2MTNMMi4wMDI4OSA3Ljk2NTk0Wk04LjQ3NzUyIDkuNTAzMTFMOS4wMjEzMSAxMC4wMTk2SDkuMDIxMzFMOC40Nzc1MiA5LjUwMzExWk04LjYzNDI0IDYuNjkzMUw5LjI0NjY0IDYuMjYwMTJMOC42MzQyNCA2LjY5MzFaTTcuMzczMjYgNC45MDk2MUw2Ljc2MDg2IDUuMzQyNlY1LjM0MjZMNy4zNzMyNiA0LjkwOTYxWk00LjI2MTQ1IDQuNjA4NjRMNC44MDUyNCA1LjEyNTE2TDQuMjYxNDUgNC42MDg2NFpNMi42OTE4NSA2LjI2MTE0TDIuMTQ4MDYgNS43NDQ2MkwyLjE0ODA2IDUuNzQ0NjJMMi42OTE4NSA2LjI2MTE0Wk0xMC4wNjMxIDE0LjA1NTlMMTAuNjA2OSAxMy41Mzk0TDEwLjA2MzEgMTQuMDU1OVpNMTQuNjQ0NSAxNi41NDM3TDE1LjEgMTYuMDY0MkwxNC4wMTI0IDE1LjAzMTJMMTMuNTU2OSAxNS41MTA3TDE0LjY0NDUgMTYuNTQzN1pNMTYuNTk4NyAxNS44NjIzTDE4LjUwOTIgMTYuOTYyTDE5LjI1NzUgMTUuNjYyTDE3LjM0NyAxNC41NjIzTDE2LjU5ODcgMTUuODYyM1pNMTguODc3OSAxOS4yNDE5TDE3LjQ1NzMgMjAuNzM3NUwxOC41NDQ5IDIxLjc3MDVMMTkuOTY1NSAyMC4yNzQ5TDE4Ljg3NzkgMTkuMjQxOVpNMTYuNjAyNiAyMS4yMTY3QzE1LjE2NzYgMjEuMzU4NCAxMS40MjMzIDIxLjIzNzUgNy4zNTkxNSAxNi45NTg3TDYuMjcxNTcgMTcuOTkxN0MxMC43MDA5IDIyLjY1NSAxNC45MjYxIDIyLjg4OTUgMTYuNzQ5OSAyMi43MDk1TDE2LjYwMjYgMjEuMjE2N1pNNy4zNTkxNSAxNi45NTg3QzMuNDgzMDMgMTIuODc3OCAyLjgzMjg1IDkuNDM1NTYgMi43NTE4MSA3LjkyNTc0TDEuMjUzOTcgOC4wMDYxM0MxLjM1MzIyIDkuODU1MzYgMi4xMzg0IDEzLjY0MDMgNi4yNzE1NyAxNy45OTE3TDcuMzU5MTUgMTYuOTU4N1pNOC43MzQ1IDEwLjMyMTZMOS4wMjEzMSAxMC4wMTk2TDcuOTMzNzIgOC45ODY2TDcuNjQ2OTEgOS4yODg1Nkw4LjczNDUgMTAuMzIxNlpNOS4yNDY2NCA2LjI2MDEyTDcuOTg1NjUgNC40NzY2M0w2Ljc2MDg2IDUuMzQyNkw4LjAyMTg1IDcuMTI2MDhMOS4yNDY2NCA2LjI2MDEyWk0zLjcxNzY2IDQuMDkyMTNMMi4xNDgwNiA1Ljc0NDYyTDMuMjM1NjQgNi43Nzc2NUw0LjgwNTI0IDUuMTI1MTZMMy43MTc2NiA0LjA5MjEzWk04LjE5MDcgOS44MDUwN0M3LjY0NjkxIDkuMjg4NTYgNy42NDYyMiA5LjI4OTI5IDcuNjQ1NTIgOS4yOTAwMkM3LjY0NTI4IDkuMjkwMjggNy42NDQ1OCA5LjI5MTAyIDcuNjQ0MTEgOS4yOTE1MkM3LjY0MzE2IDkuMjkyNTQgNy42NDIxOSA5LjI5MzU3IDcuNjQxMjEgOS4yOTQ2M0M3LjYzOTI0IDkuMjk2NzUgNy42MzcyIDkuMjk4OTYgNy42MzUxIDkuMzAxMjdDNy42MzA5MSA5LjMwNTg4IDcuNjI2NDYgOS4zMTA4NyA3LjYyMTc4IDkuMzE2MjVDNy42MTI0MyA5LjMyNzAxIDcuNjAyMTUgOS4zMzkzMSA3LjU5MTE2IDkuMzUzMkM3LjU2OTE4IDkuMzgwOTggNy41NDQzMSA5LjQxNTEyIDcuNTE4MjIgOS40NTU4OEM3LjQ2NTkxIDkuNTM3NjQgNy40MDkxNyA5LjY0NTMxIDcuMzYxMTIgOS43ODAzM0M3LjI2MzQyIDEwLjA1NDkgNy4yMTAxOCAxMC40MTg1IDcuMjc2NzEgMTAuODcyNkM3LjQwNzQyIDExLjc2NDcgNy45OTE5OCAxMi45NjQ0IDkuNTE5MzMgMTQuNTcyNEwxMC42MDY5IDEzLjUzOTRDOS4xNzkyNiAxMi4wMzYzIDguODI3NjEgMTEuMTEwNiA4Ljc2MDg2IDEwLjY1NTFDOC43Mjg2NiAxMC40MzU0IDguNzYxMzggMTAuMzE5NiA4Ljc3NDMyIDEwLjI4MzJDOC43ODE1OSAxMC4yNjI4IDguNzg2MzUgMTAuMjU3MSA4Ljc4MTY5IDEwLjI2NDRDOC43Nzk0NCAxMC4yNjc5IDguNzc0OTQgMTAuMjc0NSA4Ljc2NzM4IDEwLjI4NDFDOC43NjM1OSAxMC4yODg4IDguNzU5MDQgMTAuMjk0NCA4Ljc1MzYgMTAuMzAwNkM4Ljc1MDg4IDEwLjMwMzggOC43NDc5MyAxMC4zMDcxIDguNzQ0NzYgMTAuMzEwNkM4Ljc0MzE3IDEwLjMxMjMgOC43NDE1MiAxMC4zMTQxIDguNzM5ODEgMTAuMzE1OUM4LjczODk2IDEwLjMxNjkgOC43MzgwOSAxMC4zMTc4IDguNzM3MiAxMC4zMTg3QzguNzM2NzYgMTAuMzE5MiA4LjczNjA4IDEwLjMxOTkgOC43MzU4NiAxMC4zMjAyQzguNzM1MTggMTAuMzIwOSA4LjczNDUgMTAuMzIxNiA4LjE5MDcgOS44MDUwN1pNOS41MTkzMyAxNC41NzI0QzExLjA0MjIgMTYuMTc1NyAxMi4xOTIzIDE2LjgwNiAxMy4wNjk4IDE2Ljk0ODVDMTMuNTIwMSAxNy4wMjE2IDEzLjg4NDYgMTYuOTYzMiAxNC4xNjA2IDE2Ljg1NDRDMTQuMjk1NSAxNi44MDEyIDE0LjQwMjIgMTYuNzM4NyAxNC40ODIzIDE2LjY4MTlDMTQuNTIyMyAxNi42NTM1IDE0LjU1NTYgMTYuNjI2NiAxNC41ODI0IDE2LjYwMzFDMTQuNTk1OSAxNi41OTEzIDE0LjYwNzcgMTYuNTgwMyAxNC42MTggMTYuNTcwM0MxNC42MjMyIDE2LjU2NTQgMTQuNjI4IDE2LjU2MDYgMTQuNjMyNCAxNi41NTYyQzE0LjYzNDYgMTYuNTU0IDE0LjYzNjcgMTYuNTUxOCAxNC42Mzg3IDE2LjU0OTdDMTQuNjM5NyAxNi41NDg3IDE0LjY0MDcgMTYuNTQ3NyAxNC42NDE3IDE2LjU0NjdDMTQuNjQyMiAxNi41NDYyIDE0LjY0MjkgMTYuNTQ1NCAxNC42NDMxIDE2LjU0NTJDMTQuNjQzOCAxNi41NDQ0IDE0LjY0NDUgMTYuNTQzNyAxNC4xMDA3IDE2LjAyNzJDMTMuNTU2OSAxNS41MTA3IDEzLjU1NzYgMTUuNTEgMTMuNTU4MyAxNS41MDkzQzEzLjU1ODUgMTUuNTA5IDEzLjU1OTIgMTUuNTA4MyAxMy41NTk2IDE1LjUwNzhDMTMuNTYwNSAxNS41MDY5IDEzLjU2MTQgMTUuNTA2IDEzLjU2MjMgMTUuNTA1MUMxMy41NjQxIDE1LjUwMzMgMTMuNTY1OCAxNS41MDE1IDEzLjU2NzQgMTUuNDk5OEMxMy41NzA4IDE1LjQ5NjUgMTMuNTc0IDE1LjQ5MzMgMTMuNTc3IDE1LjQ5MDRDMTMuNTgzIDE1LjQ4NDYgMTMuNTg4NSAxNS40Nzk2IDEzLjU5MzMgMTUuNDc1NEMxMy42MDI4IDE1LjQ2NyAxMy42MDk5IDE1LjQ2MTYgMTMuNjE0NSAxNS40NTg0QzEzLjYyMzkgMTUuNDUxNyAxMy42MjI5IDE1LjQ1NCAxMy42MTAyIDE1LjQ1OUMxMy41OTA5IDE1LjQ2NjYgMTMuNSAxNS40OTg3IDEzLjMxMDMgMTUuNDY3OUMxMi45MDc3IDE1LjQwMjUgMTIuMDM5MSAxNS4wNDcyIDEwLjYwNjkgMTMuNTM5NEw5LjUxOTMzIDE0LjU3MjRaTTcuOTg1NjUgNC40NzY2M0M2Ljk3MjA2IDMuMDQzMDUgNC45NDM4NCAyLjgwMTE5IDMuNzE3NjYgNC4wOTIxM0w0LjgwNTI0IDUuMTI1MTZDNS4zMjgwOCA0LjU3NDcxIDYuMjQ4NTEgNC42MTc5NSA2Ljc2MDg2IDUuMzQyNkw3Ljk4NTY1IDQuNDc2NjNaTTIuNzUxODEgNy45MjU3NEMyLjczMDM4IDcuNTI2NDQgMi45MDQyNSA3LjEyNjU0IDMuMjM1NjQgNi43Nzc2NUwyLjE0ODA2IDUuNzQ0NjJDMS42MTIyMSA2LjMwODc3IDEuMjA0OTMgNy4wOTI0NiAxLjI1Mzk3IDguMDA2MTNMMi43NTE4MSA3LjkyNTc0Wk0xNy40NTczIDIwLjczNzVDMTcuMTc4MyAyMS4wMzEzIDE2Ljg4NjQgMjEuMTg4NyAxNi42MDI2IDIxLjIxNjdMMTYuNzQ5OSAyMi43MDk1QzE3LjQ5NyAyMi42MzU3IDE4LjEwMTYgMjIuMjM3MyAxOC41NDQ5IDIxLjc3MDVMMTcuNDU3MyAyMC43Mzc1Wk05LjAyMTMxIDEwLjAxOTZDOS45ODg4OSA5LjAwMDk1IDEwLjA1NzQgNy40MDY3OCA5LjI0NjY0IDYuMjYwMTJMOC4wMjE4NSA3LjEyNjA4QzguNDQzOTkgNy43MjMxNSA4LjM3OTI2IDguNTE3NTMgNy45MzM3MiA4Ljk4NjZMOS4wMjEzMSAxMC4wMTk2Wk0xOC41MDkyIDE2Ljk2MkMxOS4zMyAxNy40MzQ1IDE5LjQ5MDcgMTguNTk2OCAxOC44Nzc5IDE5LjI0MTlMMTkuOTY1NSAyMC4yNzQ5QzIxLjI3MDQgMTguOTAxIDIwLjg5MDQgMTYuNjAxOSAxOS4yNTc1IDE1LjY2MkwxOC41MDkyIDE2Ljk2MlpNMTUuMSAxNi4wNjQyQzE1LjQ4NTQgMTUuNjU4NCAxNi4wODYgMTUuNTY3MiAxNi41OTg3IDE1Ljg2MjNMMTcuMzQ3IDE0LjU2MjNDMTYuMjQ4NSAxMy45MyAxNC44ODYxIDE0LjExMTMgMTQuMDEyNCAxNS4wMzEyTDE1LjEgMTYuMDY0MloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNyAxMkMxOS43NjE0IDEyIDIyIDkuNzYxNDIgMjIgN0MyMiA0LjIzODU4IDE5Ljc2MTQgMiAxNyAyQzE0LjIzODYgMiAxMiA0LjIzODU4IDEyIDdDMTIgNy43OTk4NCAxMi4xODc4IDguNTU1ODIgMTIuNTIxNyA5LjIyNjI0QzEyLjYxMDUgOS40MDQ0IDEyLjY0IDkuNjA4MDMgMTIuNTg4NiA5LjgwMDMxTDEyLjI5MDggMTAuOTEzM0MxMi4xNjE1IDExLjM5NjUgMTIuNjAzNSAxMS44Mzg1IDEzLjA4NjcgMTEuNzA5MkwxNC4xOTk3IDExLjQxMTRDMTQuMzkyIDExLjM2IDE0LjU5NTYgMTEuMzg5NSAxNC43NzM4IDExLjQ3ODNDMTUuNDQ0MiAxMS44MTIyIDE2LjIwMDIgMTIgMTcgMTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE0LjEwMDcgMTYuMDI3MkwxMy41NTY5IDE1LjUxMDdMMTQuMTAwNyAxNi4wMjcyWk0xNC41NTYyIDE1LjU0NzdMMTUuMSAxNi4wNjQySDE1LjFMMTQuNTU2MiAxNS41NDc3Wk0xNi45NzI4IDE1LjIxMjNMMTYuNTk4NyAxNS44NjIzSDE2LjU5ODdMMTYuOTcyOCAxNS4yMTIzWk0xOC44ODMzIDE2LjMxMkwxOC41MDkyIDE2Ljk2MkwxOC44ODMzIDE2LjMxMlpNMTkuNDIxNyAxOS43NTg0TDE5Ljk2NTUgMjAuMjc0OUwxOS40MjE3IDE5Ljc1ODRaTTE4LjAwMTEgMjEuMjU0TDE3LjQ1NzMgMjAuNzM3NUwxOC4wMDExIDIxLjI1NFpNMTYuNjc2MyAyMS45NjMxTDE2Ljc0OTkgMjIuNzA5NUwxNi42NzYzIDIxLjk2MzFaTTYuODE1MzYgMTcuNDc1Mkw3LjM1OTE1IDE2Ljk1ODdMNi44MTUzNiAxNy40NzUyWk0yLjAwMjg5IDcuOTY1OTRMMS4yNTM5NyA4LjAwNjEzTDEuMjUzOTcgOC4wMDYxM0wyLjAwMjg5IDcuOTY1OTRaTTguNDc3NTIgOS41MDMxMUw5LjAyMTMxIDEwLjAxOTZIOS4wMjEzMUw4LjQ3NzUyIDkuNTAzMTFaTTguNjM0MjQgNi42OTMxTDkuMjQ2NjQgNi4yNjAxMkw4LjYzNDI0IDYuNjkzMVpNNy4zNzMyNiA0LjkwOTYxTDYuNzYwODYgNS4zNDI2VjUuMzQyNkw3LjM3MzI2IDQuOTA5NjFaTTQuMjYxNDUgNC42MDg2NEw0LjgwNTI0IDUuMTI1MTZMNC4yNjE0NSA0LjYwODY0Wk0yLjY5MTg1IDYuMjYxMTRMMi4xNDgwNiA1Ljc0NDYyTDIuMTQ4MDYgNS43NDQ2MkwyLjY5MTg1IDYuMjYxMTRaTTEwLjA2MzEgMTQuMDU1OUwxMC42MDY5IDEzLjUzOTRMMTAuMDYzMSAxNC4wNTU5Wk0xNC42NDQ1IDE2LjU0MzdMMTUuMSAxNi4wNjQyTDE0LjAxMjQgMTUuMDMxMkwxMy41NTY5IDE1LjUxMDdMMTQuNjQ0NSAxNi41NDM3Wk0xNi41OTg3IDE1Ljg2MjNMMTguNTA5MiAxNi45NjJMMTkuMjU3NSAxNS42NjJMMTcuMzQ3IDE0LjU2MjNMMTYuNTk4NyAxNS44NjIzWk0xOC44Nzc5IDE5LjI0MTlMMTcuNDU3MyAyMC43Mzc1TDE4LjU0NDkgMjEuNzcwNUwxOS45NjU1IDIwLjI3NDlMMTguODc3OSAxOS4yNDE5Wk0xNi42MDI2IDIxLjIxNjdDMTUuMTY3NiAyMS4zNTg0IDExLjQyMzMgMjEuMjM3NSA3LjM1OTE1IDE2Ljk1ODdMNi4yNzE1NyAxNy45OTE3QzEwLjcwMDkgMjIuNjU1IDE0LjkyNjEgMjIuODg5NSAxNi43NDk5IDIyLjcwOTVMMTYuNjAyNiAyMS4yMTY3Wk03LjM1OTE1IDE2Ljk1ODdDMy40ODMwMyAxMi44Nzc4IDIuODMyODUgOS40MzU1NiAyLjc1MTgxIDcuOTI1NzRMMS4yNTM5NyA4LjAwNjEzQzEuMzUzMjIgOS44NTUzNiAyLjEzODQgMTMuNjQwMyA2LjI3MTU3IDE3Ljk5MTdMNy4zNTkxNSAxNi45NTg3Wk04LjczNDUgMTAuMzIxNkw5LjAyMTMxIDEwLjAxOTZMNy45MzM3MiA4Ljk4NjZMNy42NDY5MSA5LjI4ODU2TDguNzM0NSAxMC4zMjE2Wk05LjI0NjY0IDYuMjYwMTJMNy45ODU2NSA0LjQ3NjYzTDYuNzYwODYgNS4zNDI2TDguMDIxODUgNy4xMjYwOEw5LjI0NjY0IDYuMjYwMTJaTTMuNzE3NjYgNC4wOTIxM0wyLjE0ODA2IDUuNzQ0NjJMMy4yMzU2NCA2Ljc3NzY1TDQuODA1MjQgNS4xMjUxNkwzLjcxNzY2IDQuMDkyMTNaTTguMTkwNyA5LjgwNTA3QzcuNjQ2OTEgOS4yODg1NiA3LjY0NjIyIDkuMjg5MjkgNy42NDU1MiA5LjI5MDAyQzcuNjQ1MjggOS4yOTAyOCA3LjY0NDU4IDkuMjkxMDIgNy42NDQxMSA5LjI5MTUyQzcuNjQzMTYgOS4yOTI1NCA3LjY0MjE5IDkuMjkzNTcgNy42NDEyMSA5LjI5NDYzQzcuNjM5MjQgOS4yOTY3NSA3LjYzNzIgOS4yOTg5NiA3LjYzNTEgOS4zMDEyN0M3LjYzMDkxIDkuMzA1ODggNy42MjY0NiA5LjMxMDg3IDcuNjIxNzggOS4zMTYyNUM3LjYxMjQzIDkuMzI3MDEgNy42MDIxNSA5LjMzOTMxIDcuNTkxMTYgOS4zNTMyQzcuNTY5MTggOS4zODA5OCA3LjU0NDMxIDkuNDE1MTIgNy41MTgyMiA5LjQ1NTg4QzcuNDY1OTEgOS41Mzc2NCA3LjQwOTE3IDkuNjQ1MzEgNy4zNjExMiA5Ljc4MDMzQzcuMjYzNDIgMTAuMDU0OSA3LjIxMDE4IDEwLjQxODUgNy4yNzY3MSAxMC44NzI2QzcuNDA3NDIgMTEuNzY0NyA3Ljk5MTk4IDEyLjk2NDQgOS41MTkzMyAxNC41NzI0TDEwLjYwNjkgMTMuNTM5NEM5LjE3OTI2IDEyLjAzNjMgOC44Mjc2MSAxMS4xMTA2IDguNzYwODYgMTAuNjU1MUM4LjcyODY2IDEwLjQzNTQgOC43NjEzOCAxMC4zMTk2IDguNzc0MzIgMTAuMjgzMkM4Ljc4MTU5IDEwLjI2MjggOC43ODYzNSAxMC4yNTcxIDguNzgxNjkgMTAuMjY0NEM4Ljc3OTQ0IDEwLjI2NzkgOC43NzQ5NCAxMC4yNzQ1IDguNzY3MzggMTAuMjg0MUM4Ljc2MzU5IDEwLjI4ODggOC43NTkwNCAxMC4yOTQ0IDguNzUzNiAxMC4zMDA2QzguNzUwODggMTAuMzAzOCA4Ljc0NzkzIDEwLjMwNzEgOC43NDQ3NiAxMC4zMTA2QzguNzQzMTcgMTAuMzEyMyA4Ljc0MTUyIDEwLjMxNDEgOC43Mzk4MSAxMC4zMTU5QzguNzM4OTYgMTAuMzE2OSA4LjczODA5IDEwLjMxNzggOC43MzcyIDEwLjMxODdDOC43MzY3NiAxMC4zMTkyIDguNzM2MDggMTAuMzE5OSA4LjczNTg2IDEwLjMyMDJDOC43MzUxOCAxMC4zMjA5IDguNzM0NSAxMC4zMjE2IDguMTkwNyA5LjgwNTA3Wk05LjUxOTMzIDE0LjU3MjRDMTEuMDQyMiAxNi4xNzU3IDEyLjE5MjMgMTYuODA2IDEzLjA2OTggMTYuOTQ4NUMxMy41MjAxIDE3LjAyMTYgMTMuODg0NiAxNi45NjMyIDE0LjE2MDYgMTYuODU0NEMxNC4yOTU1IDE2LjgwMTIgMTQuNDAyMiAxNi43Mzg3IDE0LjQ4MjMgMTYuNjgxOUMxNC41MjIzIDE2LjY1MzUgMTQuNTU1NiAxNi42MjY2IDE0LjU4MjQgMTYuNjAzMUMxNC41OTU5IDE2LjU5MTMgMTQuNjA3NyAxNi41ODAzIDE0LjYxOCAxNi41NzAzQzE0LjYyMzIgMTYuNTY1NCAxNC42MjggMTYuNTYwNiAxNC42MzI0IDE2LjU1NjJDMTQuNjM0NiAxNi41NTQgMTQuNjM2NyAxNi41NTE4IDE0LjYzODcgMTYuNTQ5N0MxNC42Mzk3IDE2LjU0ODcgMTQuNjQwNyAxNi41NDc3IDE0LjY0MTcgMTYuNTQ2N0MxNC42NDIyIDE2LjU0NjIgMTQuNjQyOSAxNi41NDU0IDE0LjY0MzEgMTYuNTQ1MkMxNC42NDM4IDE2LjU0NDQgMTQuNjQ0NSAxNi41NDM3IDE0LjEwMDcgMTYuMDI3MkMxMy41NTY5IDE1LjUxMDcgMTMuNTU3NiAxNS41MSAxMy41NTgzIDE1LjUwOTNDMTMuNTU4NSAxNS41MDkgMTMuNTU5MiAxNS41MDgzIDEzLjU1OTYgMTUuNTA3OEMxMy41NjA1IDE1LjUwNjkgMTMuNTYxNCAxNS41MDYgMTMuNTYyMyAxNS41MDUxQzEzLjU2NDEgMTUuNTAzMyAxMy41NjU4IDE1LjUwMTUgMTMuNTY3NCAxNS40OTk4QzEzLjU3MDggMTUuNDk2NSAxMy41NzQgMTUuNDkzMyAxMy41NzcgMTUuNDkwNEMxMy41ODMgMTUuNDg0NiAxMy41ODg1IDE1LjQ3OTYgMTMuNTkzMyAxNS40NzU0QzEzLjYwMjggMTUuNDY3IDEzLjYwOTkgMTUuNDYxNiAxMy42MTQ1IDE1LjQ1ODRDMTMuNjIzOSAxNS40NTE3IDEzLjYyMjkgMTUuNDU0IDEzLjYxMDIgMTUuNDU5QzEzLjU5MDkgMTUuNDY2NiAxMy41IDE1LjQ5ODcgMTMuMzEwMyAxNS40Njc5QzEyLjkwNzcgMTUuNDAyNSAxMi4wMzkxIDE1LjA0NzIgMTAuNjA2OSAxMy41Mzk0TDkuNTE5MzMgMTQuNTcyNFpNNy45ODU2NSA0LjQ3NjYzQzYuOTcyMDYgMy4wNDMwNSA0Ljk0Mzg0IDIuODAxMTkgMy43MTc2NiA0LjA5MjEzTDQuODA1MjQgNS4xMjUxNkM1LjMyODA4IDQuNTc0NzEgNi4yNDg1MSA0LjYxNzk1IDYuNzYwODYgNS4zNDI2TDcuOTg1NjUgNC40NzY2M1pNMi43NTE4MSA3LjkyNTc0QzIuNzMwMzggNy41MjY0NCAyLjkwNDI1IDcuMTI2NTQgMy4yMzU2NCA2Ljc3NzY1TDIuMTQ4MDYgNS43NDQ2MkMxLjYxMjIxIDYuMzA4NzcgMS4yMDQ5MyA3LjA5MjQ2IDEuMjUzOTcgOC4wMDYxM0wyLjc1MTgxIDcuOTI1NzRaTTE3LjQ1NzMgMjAuNzM3NUMxNy4xNzgzIDIxLjAzMTMgMTYuODg2NCAyMS4xODg3IDE2LjYwMjYgMjEuMjE2N0wxNi43NDk5IDIyLjcwOTVDMTcuNDk3IDIyLjYzNTcgMTguMTAxNiAyMi4yMzczIDE4LjU0NDkgMjEuNzcwNUwxNy40NTczIDIwLjczNzVaTTkuMDIxMzEgMTAuMDE5NkM5Ljk4ODg5IDkuMDAwOTUgMTAuMDU3NCA3LjQwNjc4IDkuMjQ2NjQgNi4yNjAxMkw4LjAyMTg1IDcuMTI2MDhDOC40NDM5OSA3LjcyMzE1IDguMzc5MjYgOC41MTc1MyA3LjkzMzcyIDguOTg2Nkw5LjAyMTMxIDEwLjAxOTZaTTE4LjUwOTIgMTYuOTYyQzE5LjMzIDE3LjQzNDUgMTkuNDkwNyAxOC41OTY4IDE4Ljg3NzkgMTkuMjQxOUwxOS45NjU1IDIwLjI3NDlDMjEuMjcwNCAxOC45MDEgMjAuODkwNCAxNi42MDE5IDE5LjI1NzUgMTUuNjYyTDE4LjUwOTIgMTYuOTYyWk0xNS4xIDE2LjA2NDJDMTUuNDg1NCAxNS42NTg0IDE2LjA4NiAxNS41NjcyIDE2LjU5ODcgMTUuODYyM0wxNy4zNDcgMTQuNTYyM0MxNi4yNDg1IDEzLjkzIDE0Ljg4NjEgMTQuMTExMyAxNC4wMTI0IDE1LjAzMTJMMTUuMSAxNi4wNjQyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTcgMi43NUMxNC42NTI4IDIuNzUgMTIuNzUgNC42NTI3OSAxMi43NSA3QzEyLjc1IDcuNjgxMjIgMTIuOTA5OCA4LjMyMjk4IDEzLjE5MzEgOC44OTE4NkMxMy4zNTIxIDkuMjExMSAxMy40MTggOS42MDIyNCAxMy4zMTMxIDkuOTk0MTZMMTMuMDYgMTAuOTRMMTQuMDA1OSAxMC42ODY5QzE0LjM5NzggMTAuNTgyMSAxNC43ODg5IDEwLjY0NzkgMTUuMTA4MiAxMC44MDY5QzE1LjY3NzEgMTEuMDkwMyAxNi4zMTg4IDExLjI1IDE3IDExLjI1QzE5LjM0NzIgMTEuMjUgMjEuMjUgOS4zNDcyMSAyMS4yNSA3QzIxLjI1IDQuNjUyNzkgMTkuMzQ3MiAyLjc1IDE3IDIuNzVaTTExLjI1IDdDMTEuMjUgMy44MjQzNiAxMy44MjQ0IDEuMjUgMTcgMS4yNUMyMC4xNzU3IDEuMjUgMjIuNzUgMy44MjQzNiAyMi43NSA3QzIyLjc1IDEwLjE3NTYgMjAuMTc1NyAxMi43NSAxNyAxMi43NUMxNi4wODE2IDEyLjc1IDE1LjIxMTQgMTIuNTM0MSAxNC40Mzk0IDEyLjE0OTZDMTQuNDIyMSAxMi4xNDEgMTQuNDA4MiAxMi4xMzc2IDE0LjM5OTggMTIuMTM2NkMxNC4zOTU5IDEyLjEzNjEgMTQuMzkzNiAxMi4xMzYyIDE0LjM5MjYgMTIuMTM2MkwxMy4yODA2IDEyLjQzMzhDMTIuMjM5OSAxMi43MTIyIDExLjI4NzggMTEuNzYwMSAxMS41NjYzIDEwLjcxOTVMMTEuODYzOCA5LjYwNzQ0QzExLjg2MzkgOS42MDY0OSAxMS44NjM5IDkuNjA0MTUgMTEuODYzNCA5LjYwMDJDMTEuODYyNCA5LjU5MTggMTEuODU5IDkuNTc3OSAxMS44NTA0IDkuNTYwNjFDMTEuNDY1OSA4Ljc4ODY2IDExLjI1IDcuOTE4NDcgMTEuMjUgN1pNMy43MTc3IDQuMDkyMTNDNC45NDM4OCAyLjgwMTE5IDYuOTcyMSAzLjA0MzA1IDcuOTg1NjkgNC40NzY2M0w5LjI0NjY4IDYuMjYwMTJDMTAuMDU3NCA3LjQwNjc4IDkuOTg4OTMgOS4wMDA5NSA5LjAyMTM1IDEwLjAxOTZMOC43NzY1IDEwLjI3NzRDOC43NzU4MiAxMC4yNzkyIDguNzc1MSAxMC4yODExIDguNzc0MzYgMTAuMjgzMkM4Ljc2MTQyIDEwLjMxOTYgOC43Mjg3IDEwLjQzNTQgOC43NjA5IDEwLjY1NTFDOC44Mjc2NSAxMS4xMTA2IDkuMTc5MyAxMi4wMzYzIDEwLjYwNyAxMy41Mzk0QzEyLjAzOTEgMTUuMDQ3MiAxMi45MDc4IDE1LjQwMjUgMTMuMzEwMyAxNS40Njc5QzEzLjQ4NCAxNS40OTYxIDEzLjU3NDggMTUuNDcxNiAxMy42MDM4IDE1LjQ2MTRMMTQuMDEyNCAxNS4wMzEyQzE0Ljg4NjIgMTQuMTExMyAxNi4yNDg1IDEzLjkzIDE3LjM0NyAxNC41NjIzTDE5LjI1NzUgMTUuNjYyQzIwLjg5MDQgMTYuNjAxOSAyMS4yNzA1IDE4LjkwMSAxOS45NjU1IDIwLjI3NDlMMTguNTQ1IDIxLjc3MDVDMTguMTAxNiAyMi4yMzczIDE3LjQ5NyAyMi42MzU3IDE2Ljc1IDIyLjcwOTVDMTQuOTI2MSAyMi44ODk1IDEwLjcwMSAyMi42NTUgNi4yNzE2MSAxNy45OTE3QzIuMTM4NDQgMTMuNjQwMyAxLjM1MzI2IDkuODU1MzYgMS4yNTQwMSA4LjAwNjEzQzEuMjA0OTcgNy4wOTI0NiAxLjYxMjI0IDYuMzA4NzcgMi4xNDgwOSA1Ljc0NDYyTDIuNjkxODkgNi4yNjExNEwyLjE0ODEgNS43NDQ2MkwzLjcxNzcgNC4wOTIxM1pNNi43NjA5IDUuMzQyNkM2LjI0ODU1IDQuNjE3OTUgNS4zMjgxMiA0LjU3NDcxIDQuODA1MjggNS4xMjUxNkwzLjIzNTY4IDYuNzc3NjVDMi45MDQyOSA3LjEyNjU0IDIuNzMwNDIgNy41MjY0NCAyLjc1MTg1IDcuOTI1NzRDMi44MzI4OSA5LjQzNTU1IDMuNDgzMDcgMTIuODc3OCA3LjM1OTE5IDE2Ljk1ODdDMTEuNDIzNCAyMS4yMzc1IDE1LjE2NzYgMjEuMzU4NCAxNi42MDI2IDIxLjIxNjdDMTYuODg2NCAyMS4xODg3IDE3LjE3ODMgMjEuMDMxMyAxNy40NTc0IDIwLjczNzVMMTguODc3OSAxOS4yNDE5QzE5LjQ5MDcgMTguNTk2OCAxOS4zMzAxIDE3LjQzNDUgMTguNTA5MiAxNi45NjJMMTYuNTk4NyAxNS44NjIzQzE2LjA4NiAxNS41NjcyIDE1LjQ4NTQgMTUuNjU4NCAxNS4xIDE2LjA2NDJMMTQuNjQ0NSAxNi41NDM3TDE0LjEwMDggMTYuMDI3MkMxNC42NDQ1IDE2LjU0MzcgMTQuNjQzOSAxNi41NDQ0IDE0LjY0MzIgMTYuNTQ1MkwxNC42NDE3IDE2LjU0NjdMMTQuNjM4OCAxNi41NDk3TDE0LjYzMjQgMTYuNTU2MkwxNC42MTgxIDE2LjU3MDNDMTQuNjA3OCAxNi41ODAzIDE0LjU5NTkgMTYuNTkxMyAxNC41ODI1IDE2LjYwMzFDMTQuNTU1NiAxNi42MjY2IDE0LjUyMjMgMTYuNjUzNSAxNC40ODI0IDE2LjY4MTlDMTQuNDAyMiAxNi43Mzg3IDE0LjI5NTUgMTYuODAxMiAxNC4xNjA2IDE2Ljg1NDRDMTMuODg0NiAxNi45NjMyIDEzLjUyMDEgMTcuMDIxNiAxMy4wNjk5IDE2Ljk0ODVDMTIuMTkyMyAxNi44MDYgMTEuMDQyMiAxNi4xNzU3IDkuNTE5MzcgMTQuNTcyNEM3Ljk5MjAyIDEyLjk2NDQgNy40MDc0NiAxMS43NjQ3IDcuMjc2NzUgMTAuODcyNkM3LjIxMDIyIDEwLjQxODUgNy4yNjM0NiAxMC4wNTQ5IDcuMzYxMTYgOS43ODAzM0M3LjQwOTIxIDkuNjQ1MzEgNy40NjU5NCA5LjUzNzY0IDcuNTE4MjYgOS40NTU4OEM3LjU0NDM1IDkuNDE1MTIgNy41NjkyMiA5LjM4MDk4IDcuNTkxMiA5LjM1MzJDNy42MDIxOSA5LjMzOTMxIDcuNjEyNDYgOS4zMjcwMSA3LjYyMTgyIDkuMzE2MjVMNy42MzUxNCA5LjMwMTI3TDcuNjQxMjUgOS4yOTQ2M0w3LjY0NDE1IDkuMjkxNTJMNy42NDU1NiA5LjI5MDAyQzcuNjQ2MjYgOS4yODkyOSA3LjY0Njk1IDkuMjg4NTYgOC4xOTA3NCA5LjgwNTA3TDcuNjQ2OTUgOS4yODg1Nkw3LjkzMzc2IDguOTg2NkM4LjM3OTMgOC41MTc1MyA4LjQ0NDAzIDcuNzIzMTUgOC4wMjE4OSA3LjEyNjA4TDYuNzYwOSA1LjM0MjZaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) Outline
 */
const CallChat: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props} weights={weights} />
))

CallChat.displayName = "CallChat"
export default CallChat
