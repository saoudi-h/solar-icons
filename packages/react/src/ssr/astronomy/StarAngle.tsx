/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import SSRBase from "../../lib/SSRBase"
import weights from "../../defs/astronomy/StarAngle"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik03LjQwNTUgNi4wNzI3MkM3Ljk3Nzk5IDUuNDM0IDguMzY5OTggNC45OTg2NCA4LjY4NjI4IDQuNzM1MzZDOS4wMDY1OSA0LjQ2ODc0IDkuMTExMiA0LjQ5NjE3IDkuMTQzNjMgNC41MDU1N0M5LjE4NzQ4IDQuNTE4MjkgOS4zMDE0MyA0LjU2ODYyIDkuNDU5MDggNC45ODE3OUM5LjYxMzE2IDUuMzg1NTcgOS43NTI0NiA1Ljk3OTI3IDkuOTUyODMgNi44NDA0OUwxMC4wNzI4IDcuMzU2MzdDMTAuMTY2IDcuNzU5MyAxMC4yNDM1IDguMDk0MDYgMTAuNDM2NyA4LjM2MzhDMTAuNjM1OSA4LjY0MTggMTAuOTI1MSA4LjgwNTkyIDExLjI1NDggOC45OTMwNkwxMS4zMTg3IDkuMDI5MzhMMTEuNjc2NCA5LjIzMzA5QzEyLjM4MyA5LjYzNTU0IDEyLjg1OTIgOS45MDg1MSAxMy4xNjk1IDEwLjE1NzFDMTMuNDY2NSAxMC4zOTUyIDEzLjUxNzYgMTAuNTM3MyAxMy41MjIxIDEwLjY1ODNDMTMuNTI2OCAxMC43ODU2IDEzLjQ4MDMgMTAuOTQ1NCAxMy4xOTQ4IDExLjIzMThDMTIuOTAwOSAxMS41MjY1IDEyLjQ0MzMgMTEuODY4MSAxMS43NzEzIDEyLjM2NzVMMTEuMzcyMyAxMi42NjM5QzExLjA1NDcgMTIuODk5MiAxMC43ODc4IDEzLjA5NyAxMC42MTU3IDEzLjM5MjJDMTAuNDQ3MyAxMy42ODA4IDEwLjM5NTYgMTQuMDE4NyAxMC4zMzE2IDE0LjQzNzFMMTAuMjUwNiAxNC45NjM1QzEwLjExNDQgMTUuODQ3OCAxMC4wMTkgMTYuNDYwMSA5Ljg5NDY1IDE2Ljg4NThDOS44MjQ2NyAxNy4xMjU0IDkuNzU4MDggMTcuMjU5MSA5LjcwMTg4IDE3LjMzNTRDOS41OTM1MiAxNy4yOTUxIDkuNDQ5MTggMTcuMjM2MyA5LjI3ODgyIDE3LjE1NDdDOC44NzM2NSAxNi45NjA3IDguMzI0NzEgMTYuNjM5MSA3Ljc2MjQ5IDE2LjEzMzRMNy40NDk5OCAxNS44NTIzTDcuNDM2MjYgMTUuODRDNy4yNzYzOCAxNS42OTYxIDcuMTM0MjMgMTUuNTY4MyA3LjAwNTU0IDE1LjQ3MDdDNi44NjYzNiAxNS4zNjUyIDYuNzE2MjIgMTUuMjczOCA2LjUzMjQ4IDE1LjIyMDVDNi4yMDc2MyAxNS4xMjYzIDUuODczMTcgMTUuMTg5IDUuNTEyNTMgMTUuMjU2N0w1LjQzNDY1IDE1LjI3MTNMNS4wMzQxOCAxNS4zNDU2QzQuMjQxNDcgMTUuNDkyNiAzLjcxMDEzIDE1LjU4OTUgMy4zMjg5NyAxNS41OTY2QzIuOTYyOTMgMTUuNjAzNCAyLjg4NTk4IDE1LjUyNDUgMi44NDQ4MiAxNS40NjcxQzIuNzg3MzEgMTUuMzg2OCAyLjczMzY3IDE1LjIzMTMgMi44MjI5OSAxNC43OTMzQzIuOTExOTEgMTQuMzU3MiAzLjExMjAxIDEzLjc3NTcgMy40MDI0NSAxMi45MzYyTDMuNTc0NTkgMTIuNDM4OUMzLjcxMzM0IDEyLjAzOTEgMy44MjQzIDExLjcxOTQgMy44MTE5MiAxMS4zODE5QzMuNzk5NDYgMTEuMDQyMSAzLjY2MzkxIDEwLjczNTggMy40OTY1OCAxMC4zNTc2TDMuMjg4OTMgOS44ODcyMUMyLjkzODI1IDkuMDkyNTUgMi42OTc2OCA4LjU0NDU4IDIuNTc3OTQgOC4xMjU1NUMyLjQ1OTQyIDcuNzEwODMgMi40OTYyOCA3LjU0MjggMi41NTU4OSA3LjQ0MDYxQzIuNjA1MzYgNy4zNTU4MiAyLjY5NDk1IDcuMjY1NTMgMy4wNTU4MSA3LjIyMDk2QzMuNDM1NTUgNy4xNzQwNiAzLjk3MDc0IDcuMTk1MTYgNC43NzAwMiA3LjIyOTE3TDUuMTczODUgNy4yNDYzNUw1LjI1MDA2IDcuMjQ5NjlDNS42MTY5IDcuMjY2MDEgNS45NTI3NyA3LjI4MDk1IDYuMjY0NTggNy4xNDMxOEM2LjU2Nzg5IDcuMDA5MTUgNi43OTcyNCA2Ljc1MjQ0IDcuMDYwMzggNi40NTc5TDcuMTE1MTkgNi4zOTY2Mkw3LjQwNTUgNi4wNzI3MloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEwLjkxNzYgNi41NzQ0N0MxMC43NjIyIDUuOTA2MDcgMTAuNjMwNCA1LjMzOTkzIDEwLjQ4NzYgNC44OTU0M0wxNy4xMjEzIDYuODE5NzFDMTcuMTY1MSA2LjgzMjQzIDE3LjI3OTEgNi44ODI3NSAxNy40MzY3IDcuMjk1OTJDMTcuNTkwOCA3LjY5OTcxIDE3LjczMDEgOC4yOTM0MSAxNy45MzA1IDkuMTU0NjNMMTguMDUwNCA5LjY3MDVDMTguMDc3IDkuNzg1MjUgMTguMTAyMyA5Ljg5NDcgMTguMTI5MyA5Ljk5ODQ3TDEyLjExNzIgOC4zMzMzNkwxMS44MTM2IDguMTYwNDRDMTEuMzg0MSA3LjkxNTgyIDExLjMwNTIgNy44NTg5NSAxMS4yNDk2IDcuNzgxNDFDMTEuMTg3NyA3LjY5NTA1IDExLjE1MDQgNy41NzQ5MyAxMS4wMjg2IDcuMDUxNTRMMTAuOTE3NiA2LjU3NDQ3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTQuMzQyNyA5Ljk4NzM3TDE5LjM1MDQgMTEuMzc0M0wxOS42NTQgMTEuNTQ3MkMyMC4zNjA2IDExLjk0OTcgMjAuODM2OCAxMi4yMjI3IDIxLjE0NzEgMTIuNDcxM0MyMS40NDQyIDEyLjcwOTMgMjEuNDk1MyAxMi44NTE0IDIxLjQ5OTcgMTIuOTcyNEMyMS41MDQ0IDEzLjA5OTcgMjEuNDU3OSAxMy4yNTk2IDIxLjE3MjQgMTMuNTQ1OUMyMC44Nzg1IDEzLjg0MDYgMjAuNDIxIDE0LjE4MjIgMTkuNzQ4OSAxNC42ODE2TDE5LjM0OTkgMTQuOTc4QzE5LjE2MTMgMTUuMTE3OCAxOC45OTA1IDE1LjI0NDQgMTguODQ2OSAxNS4zODU5TDEyLjA0MjIgMTMuNDEyTDEyLjQwMDggMTMuMTQ1NUMxMy4wMzE0IDEyLjY3NyAxMy41NTAxIDEyLjI5MTYgMTMuOTAyOSAxMS45Mzc5QzE0LjI3MDEgMTEuNTY5NiAxNC41NDEgMTEuMTU0NSAxNC41MjE0IDEwLjYyMTZDMTQuNTEyNiAxMC4zODI1IDE0LjQ0NzQgMTAuMTczNyAxNC4zNDI3IDkuOTg3MzdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMS4zNzQ0IDE0LjI1OTVMMTguMzg2NyAxNi4yOTM3QzE4LjM1NzYgMTYuNDM1IDE4LjMzNDQgMTYuNTg2OSAxOC4zMDkyIDE2Ljc1MTJMMTguMjI4MiAxNy4yNzc3QzE4LjE1MTEgMTcuNzc4NSAxOC4wMzczIDE4LjIyNDYgMTcuOTE2MyAxOC42MDI1QzE3LjcwMzMgMTkuMjY4MiAxNy42NDg4IDE5LjM2MDcgMTcuNDg4NyAxOS40NTI2QzE3LjQxOTkgMTkuNDkyMSAxNy4zNTUyIDE5LjUwOTQgMTcuMjE5NiAxOS40OTQxQzE3LjA1MzYgMTkuNDc1NSAxNi44NDA4IDE5LjQxNTUgMTYuNDc3OCAxOS4zMTAyTDEwLjY4MzIgMTcuNjI5M0MxMC43NTI4IDE3LjQ4MjggMTAuODA3OSAxNy4zMjU5IDEwLjg1NDUgMTcuMTY2M0MxMC45OTk3IDE2LjY2OTMgMTEuMTA0MiAxNS45OTA5IDExLjIzMyAxNS4xNTQxTDExLjMwODIgMTQuNjY1OUMxMS4zMzQ5IDE0LjQ5MjMgMTEuMzU2IDE0LjM2MTEgMTEuMzc0NCAxNC4yNTk1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxnIG9wYWNpdHk9IjAuNSI+CjxwYXRoIGQ9Ik0xMC45MTc0IDYuNTc0NTVDMTAuNzYxOSA1LjkwNjE1IDEwLjYzMDIgNS4zNDAwMSAxMC40ODczIDQuODk1NTFMMTcuMTIxIDYuODE5NzlDMTcuMTY0OCA2LjgzMjUxIDE3LjI3ODggNi44ODI4MyAxNy40MzY0IDcuMjk2QzE3LjU5MDUgNy42OTk3OSAxNy43Mjk4IDguMjkzNDggMTcuOTMwMiA5LjE1NDcxTDE4LjA1MDEgOS42NzA1OEMxOC4wNzY3IDkuNzg1MzMgMTguMTAyIDkuODk0NzggMTguMTI5IDkuOTk4NTVMMTIuMTE2OSA4LjMzMzQ0TDExLjgxMzMgOC4xNjA1MkMxMS4zODM4IDcuOTE1OSAxMS4zMDQ5IDcuODU5MDMgMTEuMjQ5MyA3Ljc4MTQ5QzExLjE4NzQgNy42OTUxMyAxMS4xNTAxIDcuNTc1MDEgMTEuMDI4MyA3LjA1MTYyTDEwLjkxNzQgNi41NzQ1NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE0LjM0MjQgOS45ODc0NUwxOS4zNTAxIDExLjM3NDRMMTkuNjUzNyAxMS41NDczQzIwLjM2MDMgMTEuOTQ5OCAyMC44MzY1IDEyLjIyMjcgMjEuMTQ2OCAxMi40NzE0QzIxLjQ0MzkgMTIuNzA5NCAyMS40OTUgMTIuODUxNSAyMS40OTk0IDEyLjk3MjVDMjEuNTA0MSAxMy4wOTk4IDIxLjQ1NzYgMTMuMjU5NiAyMS4xNzIxIDEzLjU0NkMyMC44NzgyIDEzLjg0MDcgMjAuNDIwNyAxNC4xODIzIDE5Ljc0ODYgMTQuNjgxN0wxOS4zNDk2IDE0Ljk3ODFDMTkuMTYxIDE1LjExNzkgMTguOTkwMiAxNS4yNDQ0IDE4Ljg0NjYgMTUuMzg2TDEyLjA0MTkgMTMuNDEyMUwxMi40MDA1IDEzLjE0NTZDMTMuMDMxMSAxMi42NzcxIDEzLjU0OTkgMTIuMjkxNyAxMy45MDI2IDExLjkzOEMxNC4yNjk4IDExLjU2OTcgMTQuNTQwNyAxMS4xNTQ2IDE0LjUyMTEgMTAuNjIxN0MxNC41MTIzIDEwLjM4MjUgMTQuNDQ3MSAxMC4xNzM3IDE0LjM0MjQgOS45ODc0NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTExLjM3NDEgMTQuMjU5NkwxOC4zODY0IDE2LjI5MzdDMTguMzU3MyAxNi40MzUxIDE4LjMzNDEgMTYuNTg3IDE4LjMwODkgMTYuNzUxMkwxOC4yMjc5IDE3LjI3NzhDMTguMTUwOCAxNy43Nzg2IDE4LjAzNyAxOC4yMjQ2IDE3LjkxNiAxOC42MDI1QzE3LjcwMyAxOS4yNjgzIDE3LjY0ODUgMTkuMzYwOCAxNy40ODg0IDE5LjQ1MjdDMTcuNDE5NiAxOS40OTIyIDE3LjM1NDkgMTkuNTA5NSAxNy4yMTkzIDE5LjQ5NDJDMTcuMDUzMyAxOS40NzU1IDE2Ljg0MDUgMTkuNDE1NiAxNi40Nzc1IDE5LjMxMDNMMTAuNjgyOSAxNy42Mjk0QzEwLjc1MjUgMTcuNDgyOCAxMC44MDc2IDE3LjMyNiAxMC44NTQyIDE3LjE2NjNDMTAuOTk5NCAxNi42Njk0IDExLjEwMzkgMTUuOTkwOSAxMS4yMzI3IDE1LjE1NDJMMTEuMzA3OSAxNC42NjZDMTEuMzM0NiAxNC40OTI0IDExLjM1NTcgMTQuMzYxMiAxMS4zNzQxIDE0LjI1OTZaIiBmaWxsPSIjMUMyNzRDIi8+CjwvZz4KPHBhdGggZD0iTTcuNDA1NSA2LjA3MjcyQzcuOTc3OTkgNS40MzQgOC4zNjk5OCA0Ljk5ODY0IDguNjg2MjggNC43MzUzNkM5LjAwNjU5IDQuNDY4NzQgOS4xMTEyIDQuNDk2MTcgOS4xNDM2MyA0LjUwNTU3QzkuMTg3NDggNC41MTgyOSA5LjMwMTQzIDQuNTY4NjIgOS40NTkwOCA0Ljk4MTc5QzkuNjEzMTYgNS4zODU1NyA5Ljc1MjQ2IDUuOTc5MjcgOS45NTI4MyA2Ljg0MDQ5TDEwLjA3MjggNy4zNTYzN0MxMC4xNjYgNy43NTkzIDEwLjI0MzUgOC4wOTQwNiAxMC40MzY3IDguMzYzOEMxMC42MzU5IDguNjQxOCAxMC45MjUxIDguODA1OTIgMTEuMjU0OCA4Ljk5MzA2TDExLjMxODcgOS4wMjkzOEwxMS42NzY0IDkuMjMzMDlDMTIuMzgzIDkuNjM1NTQgMTIuODU5MiA5LjkwODUxIDEzLjE2OTUgMTAuMTU3MUMxMy40NjY1IDEwLjM5NTIgMTMuNTE3NiAxMC41MzczIDEzLjUyMjEgMTAuNjU4M0MxMy41MjY4IDEwLjc4NTYgMTMuNDgwMyAxMC45NDU0IDEzLjE5NDggMTEuMjMxOEMxMi45MDA5IDExLjUyNjUgMTIuNDQzMyAxMS44NjgxIDExLjc3MTMgMTIuMzY3NUwxMS4zNzIzIDEyLjY2MzlDMTEuMDU0NyAxMi44OTkyIDEwLjc4NzggMTMuMDk3IDEwLjYxNTcgMTMuMzkyMkMxMC40NDczIDEzLjY4MDggMTAuMzk1NiAxNC4wMTg3IDEwLjMzMTYgMTQuNDM3MUwxMC4yNTA2IDE0Ljk2MzVDMTAuMTE0NCAxNS44NDc4IDEwLjAxOSAxNi40NjAxIDkuODk0NjUgMTYuODg1OEM5LjgyNDY3IDE3LjEyNTQgOS43NTgwOCAxNy4yNTkxIDkuNzAxODggMTcuMzM1NEM5LjU5MzUyIDE3LjI5NTEgOS40NDkxOCAxNy4yMzYzIDkuMjc4ODIgMTcuMTU0N0M4Ljg3MzY1IDE2Ljk2MDcgOC4zMjQ3MSAxNi42MzkxIDcuNzYyNDkgMTYuMTMzNEw3LjQ0OTk4IDE1Ljg1MjNMNy40MzYyNiAxNS44NEM3LjI3NjM4IDE1LjY5NjEgNy4xMzQyMyAxNS41NjgzIDcuMDA1NTQgMTUuNDcwN0M2Ljg2NjM2IDE1LjM2NTIgNi43MTYyMiAxNS4yNzM4IDYuNTMyNDggMTUuMjIwNUM2LjIwNzYzIDE1LjEyNjMgNS44NzMxNyAxNS4xODkgNS41MTI1MyAxNS4yNTY3TDUuNDM0NjUgMTUuMjcxM0w1LjAzNDE4IDE1LjM0NTZDNC4yNDE0NyAxNS40OTI2IDMuNzEwMTMgMTUuNTg5NSAzLjMyODk3IDE1LjU5NjZDMi45NjI5MyAxNS42MDM0IDIuODg1OTggMTUuNTI0NSAyLjg0NDgyIDE1LjQ2NzFDMi43ODczMSAxNS4zODY4IDIuNzMzNjcgMTUuMjMxMyAyLjgyMjk5IDE0Ljc5MzNDMi45MTE5MSAxNC4zNTcyIDMuMTEyMDEgMTMuNzc1NyAzLjQwMjQ1IDEyLjkzNjJMMy41NzQ1OSAxMi40Mzg5QzMuNzEzMzQgMTIuMDM5MSAzLjgyNDMgMTEuNzE5NCAzLjgxMTkyIDExLjM4MTlDMy43OTk0NiAxMS4wNDIxIDMuNjYzOTEgMTAuNzM1OCAzLjQ5NjU4IDEwLjM1NzZMMy4yODg5MyA5Ljg4NzIxQzIuOTM4MjUgOS4wOTI1NSAyLjY5NzY4IDguNTQ0NTggMi41Nzc5NCA4LjEyNTU1QzIuNDU5NDIgNy43MTA4MyAyLjQ5NjI4IDcuNTQyOCAyLjU1NTg5IDcuNDQwNjFDMi42MDUzNiA3LjM1NTgyIDIuNjk0OTUgNy4yNjU1MyAzLjA1NTgxIDcuMjIwOTZDMy40MzU1NSA3LjE3NDA2IDMuOTcwNzQgNy4xOTUxNiA0Ljc3MDAyIDcuMjI5MTdMNS4xNzM4NSA3LjI0NjM1TDUuMjUwMDYgNy4yNDk2OUM1LjYxNjkgNy4yNjYwMSA1Ljk1Mjc3IDcuMjgwOTUgNi4yNjQ1OCA3LjE0MzE4QzYuNTY3ODkgNy4wMDkxNSA2Ljc5NzI0IDYuNzUyNDQgNy4wNjAzOCA2LjQ1NzlMNy4xMTUxOSA2LjM5NjYyTDcuNDA1NSA2LjA3MjcyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yLjkyOTkyIDEyLjc3MzJDMi4zNTg4IDE0LjQyMzggMi4wNzMyNSAxNS4yNDkxIDIuNDM4MzUgMTUuNzU4N0MyLjgwMzQ1IDE2LjI2ODMgMy41Nzc0MiAxNi4xMjQ4IDUuMTI1MzUgMTUuODM3Nkw1LjUyNTgyIDE1Ljc2MzRDNS45NjU3IDE1LjY4MTggNi4xODU2MyAxNS42NDEgNi4zOTMxNiAxNS43MDEyQzYuNjAwNjkgMTUuNzYxNCA2Ljc3MjMyIDE1LjkxNTcgNy4xMTU1OCAxNi4yMjQ1TDcuNDI4MDkgMTYuNTA1NkM4LjYzNjAyIDE3LjU5MjIgOS43OTE1NSAxNy44OTE3IDkuNzkxNTUgMTcuODkxN0MxMC4zNDMxIDE3LjY0OCAxMC40NzcgMTYuNzc4NyAxMC43NDQ3IDE1LjA0MDFMMTAuODE0IDE0LjU5MDNDMTAuODkwMSAxNC4wOTYyIDEwLjkyODEgMTMuODQ5MiAxMS4wNDc1IDEzLjY0NDZDMTEuMTY2OSAxMy40Mzk5IDExLjM1NDEgMTMuMzAwOCAxMS43Mjg2IDEzLjAyMjZMMTIuMDY5NSAxMi43NjkzQzEzLjM4NzEgMTEuNzkwMiAxNC4wNDU5IDExLjMwMDYgMTQuMDIxNyAxMC42NDA0QzEzLjk5NzUgOS45ODAxNCAxMy4zMDYzIDkuNTg2NDUgMTEuOTIzOCA4Ljc5OTA3TDExLjU2NjIgOC41OTUzNkMxMS4xNzMzIDguMzcxNjEgMTAuOTc2OSA4LjI1OTc0IDEwLjg0MzEgOC4wNzMwNUMxMC43MDk0IDcuODg2MzcgMTAuNjUzNSA3LjY0NiAxMC41NDE2IDcuMTY1MjlMMTAuNDM5OCA2LjcyNzY0QzEwLjA0NjIgNS4wMzU5OCA5Ljg0OTQ0IDQuMTkwMTUgOS4yODI5MSA0LjAyNTgyQzguNzE2MzggMy44NjE0OCA4LjE1NTMgNC40ODc0NyA3LjAzMzE1IDUuNzM5NDVMNi43NDI4NCA2LjA2MzM1QzYuNDIzOTYgNi40MTkxMiA2LjI2NDUyIDYuNTk3MDEgNi4wNjI0NyA2LjY4NjI4QzUuODYwNDIgNi43NzU1NiA1LjYzODY0IDYuNzY2MTMgNS4xOTUwOCA2Ljc0NzI1TDQuNzkxMjYgNi43MzAwN0MzLjIzMDM1IDYuNjYzNjUgMi40NDk5IDYuNjMwNDQgMi4xMjM5OSA3LjE4OTEyQzEuNzk4MDcgNy43NDc4IDIuMTQyNTQgOC41MjgzNyAyLjgzMTQ3IDEwLjA4OTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTEuOTIzOSA4Ljc5ODY0TDE1IDkuNjUwNjFNOS43OTE2IDE3Ljg5MTNMMTMuMDY1MSAxOC44NDA5TTExLjA0NzYgMTMuNjQ0MUwxOS4wMjUyIDE1Ljk1ODNNOS4yODI5NiA0LjAyNTM5TDE3LjI2MDYgNi4zMzk1M0MxNy44MjcxIDYuNTAzODcgMTguMDIzOSA3LjM0OTY5IDE4LjQxNzUgOS4wNDEzNUwxOC41MTkzIDkuNDc5QzE4LjYzMTIgOS45NTk3MiAxOC42ODcxIDEwLjIwMDEgMTguODIwOCAxMC4zODY4QzE4Ljk1NDYgMTAuNTczNCAxOS4xNTEgMTAuNjg1MyAxOS41NDM4IDEwLjkwOTFNMTkuNTQzOCAxMC45MDkxTDE5LjkwMTUgMTEuMTEyOEMyMS4yODQgMTEuOTAwMiAyMS45NzUyIDEyLjI5MzkgMjEuOTk5NCAxMi45NTQxQzIyLjAyMzYgMTMuNjE0MyAyMS4zNjQ4IDE0LjEwMzkgMjAuMDQ3MSAxNS4wODNMMTkuNzA2MiAxNS4zMzYzQzE5LjMzMTggMTUuNjE0NSAxOS4xNDQ2IDE1Ljc1MzYgMTkuMDI1MiAxNS45NTgzTTE5LjU0MzggMTAuOTA5MUwxNy42Mzg4IDEwLjM4MTVNMTkuMDI1MiAxNS45NTgzQzE4LjkwNTggMTYuMTYyOSAxOC44Njc4IDE2LjQwOTkgMTguNzkxNyAxNi45MDRMMTguNzIyNCAxNy4zNTM4QzE4LjY0MDggMTcuODgzNSAxOC41MjA1IDE4LjM1NTEgMTguMzkyNiAxOC43NTQ5QzE4LjE5NTIgMTkuMzcxNyAxOC4wOTY1IDE5LjY4MDEgMTcuNzM3OCAxOS44ODYyQzE3LjM3OSAyMC4wOTIyIDE3LjAzMjIgMTkuOTkxNiAxNi4zMzg1IDE5Ljc5MDQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMS45MjM4IDguNzk5MDdMMTEuNTY2MiA4LjU5NTM2QzExLjE3MzMgOC4zNzE2MSAxMC45NzY5IDguMjU5NzQgMTAuODQzMSA4LjA3MzA1QzEwLjcwOTQgNy44ODYzNyAxMC42NTM1IDcuNjQ2IDEwLjU0MTYgNy4xNjUyOUwxMC40Mzk4IDYuNzI3NjRDMTAuMDQ2MiA1LjAzNTk4IDkuODQ5NDQgNC4xOTAxNSA5LjI4MjkxIDQuMDI1ODJNMTEuOTIzOCA4Ljc5OTA3QzEzLjMwNjMgOS41ODY0NSAxMy45OTc1IDkuOTgwMTQgMTQuMDIxNyAxMC42NDA0QzE0LjA0NTkgMTEuMzAwNiAxMy4zODcxIDExLjc5MDIgMTIuMDY5NSAxMi43NjkzTDExLjcyODYgMTMuMDIyNkMxMS4zNTQxIDEzLjMwMDggMTEuMTY2OSAxMy40Mzk5IDExLjA0NzUgMTMuNjQ0Nk0xMS45MjM4IDguNzk5MDdMMTkuNTQzOCAxMC45MDk1TTkuNzkxNTUgMTcuODkxN0MxMC4zNDMxIDE3LjY0OCAxMC40NzcgMTYuNzc4NyAxMC43NDQ3IDE1LjA0MDFMMTAuODE0IDE0LjU5MDNDMTAuODkwMSAxNC4wOTYyIDEwLjkyODEgMTMuODQ5MiAxMS4wNDc1IDEzLjY0NDZNOS43OTE1NSAxNy44OTE3QzkuNzkxNTUgMTcuODkxNyA4LjYzNjAyIDE3LjU5MjIgNy40MjgwOSAxNi41MDU2TDcuMTE1NTggMTYuMjI0NUM2Ljc3MjMyIDE1LjkxNTcgNi42MDA2OSAxNS43NjE0IDYuMzkzMTYgMTUuNzAxMkM2LjE4NTYzIDE1LjY0MSA1Ljk2NTcgMTUuNjgxOCA1LjUyNTgyIDE1Ljc2MzRMNS4xMjUzNSAxNS44Mzc2QzMuNTc3NDIgMTYuMTI0OCAyLjgwMzQ1IDE2LjI2ODMgMi40MzgzNSAxNS43NTg3QzIuMDczMjUgMTUuMjQ5MSAyLjM1ODggMTQuNDIzOCAyLjkyOTkyIDEyLjc3MzJMMy4wNzc2NyAxMi4zNDYyQzMuMjM5OTYgMTEuODc3MSAzLjMyMTExIDExLjY0MjYgMy4zMTIyNCAxMS40MDA3QzMuMzAzMzcgMTEuMTU4OSAzLjIwNTQ4IDEwLjkzNyAzLjAwOTcxIDEwLjQ5MzRMMi44MzE0NyAxMC4wODk1QzIuMTQyNTQgOC41MjgzNyAxLjc5ODA3IDcuNzQ3OCAyLjEyMzk5IDcuMTg5MTJDMi40NDk5IDYuNjMwNDQgMy4yMzAzNSA2LjY2MzY1IDQuNzkxMjYgNi43MzAwN0w1LjE5NTA4IDYuNzQ3MjVDNS42Mzg2NCA2Ljc2NjEzIDUuODYwNDIgNi43NzU1NiA2LjA2MjQ3IDYuNjg2MjhDNi4yNjQ1MiA2LjU5NzAxIDYuNDIzOTYgNi40MTkxMiA2Ljc0Mjg0IDYuMDYzMzVMNy4wMzMxNSA1LjczOTQ1QzguMTU1MyA0LjQ4NzQ3IDguNzE2MzggMy44NjE0OCA5LjI4MjkxIDQuMDI1ODJNOS43OTE1NSAxNy44OTE3TDE2LjMzODUgMTkuNzkwOEMxNy4wMzIxIDE5Ljk5MjEgMTcuMzc5IDIwLjA5MjcgMTcuNzM3NyAxOS44ODY2QzE4LjA5NjUgMTkuNjgwNiAxOC4xOTUyIDE5LjM3MjEgMTguMzkyNSAxOC43NTUzQzE4LjUyMDUgMTguMzU1NSAxOC42NDA4IDE3Ljg4MzkgMTguNzIyNCAxNy4zNTQyTDE4Ljc5MTYgMTYuOTA0NEMxOC44Njc3IDE2LjQxMDQgMTguOTA1OCAxNi4xNjMzIDE5LjAyNTEgMTUuOTU4N00xMS4wNDc1IDEzLjY0NDZMMTkuMDI1MSAxNS45NTg3TTkuMjgyOTEgNC4wMjU4MkwxNy4yNjA1IDYuMzM5OTVDMTcuODI3MSA2LjUwNDI5IDE4LjAyMzkgNy4zNTAxMiAxOC40MTc0IDkuMDQxNzhMMTguNTE5MyA5LjQ3OTQzQzE4LjYzMTEgOS45NjAxNSAxOC42ODcgMTAuMjAwNSAxOC44MjA4IDEwLjM4NzJDMTguOTU0NSAxMC41NzM5IDE5LjE1MDkgMTAuNjg1NyAxOS41NDM4IDEwLjkwOTVNMTkuNTQzOCAxMC45MDk1TDE5LjkwMTQgMTEuMTEzMkMyMS4yODM5IDExLjkwMDYgMjEuOTc1MSAxMi4yOTQzIDIxLjk5OTQgMTIuOTU0NUMyMi4wMjM2IDEzLjYxNDggMjEuMzY0NyAxNC4xMDQzIDIwLjA0NzEgMTUuMDgzNEwxOS43MDYyIDE1LjMzNjdDMTkuMzMxOCAxNS42MTQ5IDE5LjE0NDUgMTUuNzU0IDE5LjAyNTEgMTUuOTU4NyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNy4yNjA1IDYuMzM5OTVDMTcuODI3MSA2LjUwNDI5IDE4LjAyMzkgNy4zNTAxMiAxOC40MTc0IDkuMDQxNzhMMTguNTE5MyA5LjQ3OTQzQzE4LjYzMTEgOS45NjAxNSAxOC42ODcgMTAuMjAwNSAxOC44MjA4IDEwLjM4NzJDMTguOTU0NSAxMC41NzM5IDE5LjE1MDkgMTAuNjg1NyAxOS41NDM4IDEwLjkwOTVMMTkuOTAxNCAxMS4xMTMyQzIxLjI4MzkgMTEuOTAwNiAyMS45NzUxIDEyLjI5NDMgMjEuOTk5NCAxMi45NTQ1QzIyLjAyMzYgMTMuNjE0OCAyMS4zNjQ3IDE0LjEwNDMgMjAuMDQ3MSAxNS4wODM0TDE5LjcwNjIgMTUuMzM2N0MxOS4zMzE4IDE1LjYxNDkgMTkuMTQ0NSAxNS43NTQgMTkuMDI1MSAxNS45NTg3QzE4LjkwNTggMTYuMTYzMyAxOC44Njc3IDE2LjQxMDQgMTguNzkxNiAxNi45MDQ0TDE4LjcyMjQgMTcuMzU0MkMxOC42NDA4IDE3Ljg4MzkgMTguNTIwNSAxOC4zNTU1IDE4LjM5MjUgMTguNzU1M0MxOC4xOTUyIDE5LjM3MjEgMTguMDk2NSAxOS42ODA2IDE3LjczNzcgMTkuODg2NkMxNy4zNzkgMjAuMDkyNyAxNy4wMzIxIDE5Ljk5MjEgMTYuMzM4NSAxOS43OTA4TTEwLjQzOTggNi43Mjc2NEwxMC41NDE2IDcuMTY1MjlDMTAuNjUzNSA3LjY0NiAxMC43MDk0IDcuODg2MzcgMTAuODQzMSA4LjA3MzA1QzEwLjk3NjkgOC4yNTk3NCAxMS4xNzMzIDguMzcxNjEgMTEuNTY2MiA4LjU5NTM2TDExLjkyMzggOC43OTkwN0MxMy4zMDYzIDkuNTg2NDUgMTMuOTk3NSA5Ljk4MDE0IDE0LjAyMTcgMTAuNjQwNEMxNC4wNDU5IDExLjMwMDYgMTMuMzg3MSAxMS43OTAyIDEyLjA2OTUgMTIuNzY5M0wxMS43Mjg2IDEzLjAyMjZDMTEuMzU0MSAxMy4zMDA4IDExLjE2NjkgMTMuNDM5OSAxMS4wNDc1IDEzLjY0NDZDMTAuOTI4MSAxMy44NDkyIDEwLjg5MDEgMTQuMDk2MiAxMC44MTQgMTQuNTkwM0wxMC43NDQ3IDE1LjA0MDFDMTAuNDc3IDE2Ljc3ODcgMTAuMzQzMSAxNy42NDggOS43OTE1NSAxNy44OTE3QzkuNzkxNTUgMTcuODkxNyA4LjYzNjAyIDE3LjU5MjIgNy40MjgwOSAxNi41MDU2TDcuMTE1NTggMTYuMjI0NUM2Ljc3MjMyIDE1LjkxNTcgNi42MDA2OSAxNS43NjE0IDYuMzkzMTYgMTUuNzAxMkM2LjE4NTYzIDE1LjY0MSA1Ljk2NTcgMTUuNjgxOCA1LjUyNTgyIDE1Ljc2MzRMNS4xMjUzNSAxNS44Mzc2QzMuNTc3NDIgMTYuMTI0OCAyLjgwMzQ1IDE2LjI2ODMgMi40MzgzNSAxNS43NTg3QzIuMDczMjUgMTUuMjQ5MSAyLjM1ODggMTQuNDIzOCAyLjkyOTkyIDEyLjc3MzJMMy4wNzc2NyAxMi4zNDYyQzMuMjM5OTYgMTEuODc3MSAzLjMyMTExIDExLjY0MjYgMy4zMTIyNCAxMS40MDA3QzMuMzAzMzcgMTEuMTU4OSAzLjIwNTQ4IDEwLjkzNyAzLjAwOTcxIDEwLjQ5MzRMMi44MzE0NyAxMC4wODk1QzIuMTQyNTQgOC41MjgzNyAxLjc5ODA3IDcuNzQ3OCAyLjEyMzk5IDcuMTg5MTJDMi40NDk5IDYuNjMwNDQgMy4yMzAzNSA2LjY2MzY1IDQuNzkxMjYgNi43MzAwN0w1LjE5NTA4IDYuNzQ3MjVDNS42Mzg2NCA2Ljc2NjEzIDUuODYwNDIgNi43NzU1NiA2LjA2MjQ3IDYuNjg2MjhDNi4yNjQ1MiA2LjU5NzAxIDYuNDIzOTYgNi40MTkxMiA2Ljc0Mjg0IDYuMDYzMzVMNy4wMzMxNSA1LjczOTQ1QzguMTU1MyA0LjQ4NzQ3IDguNzE2MzggMy44NjE0OCA5LjI4MjkxIDQuMDI1ODJDOS44NDk0NCA0LjE5MDE1IDEwLjA0NjIgNS4wMzU5OCAxMC40Mzk4IDYuNzI3NjRaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTExLjkyMzkgOC43OTg2NEwxOS41NDM4IDEwLjkwOTFNOS43OTE2IDE3Ljg5MTNMMTYuMzM4NSAxOS43OTA0TTExLjA0NzYgMTMuNjQ0MUwxOS4wMjUyIDE1Ljk1ODNNOS4yODI5NiA0LjAyNTM5TDE3LjI2MDYgNi4zMzk1MyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMS45MjM4IDguNzk5MDdMMTEuNTY2MiA4LjU5NTM2QzExLjE3MzMgOC4zNzE2MSAxMC45NzY5IDguMjU5NzMgMTAuODQzMSA4LjA3MzA1QzEwLjcwOTQgNy44ODYzNyAxMC42NTM1IDcuNjQ2IDEwLjU0MTYgNy4xNjUyOUwxMC40Mzk4IDYuNzI3NjRDMTAuMDQ2MiA1LjAzNTk4IDkuODQ5NDQgNC4xOTAxNSA5LjI4MjkxIDQuMDI1ODJNMTEuOTIzOCA4Ljc5OTA3QzEzLjMwNjMgOS41ODY0NSAxMy45OTc1IDkuOTgwMTQgMTQuMDIxNyAxMC42NDA0QzE0LjA0NTkgMTEuMzAwNiAxMy4zODcxIDExLjc5MDIgMTIuMDY5NSAxMi43NjkzTDExLjcyODYgMTMuMDIyNkMxMS4zNTQxIDEzLjMwMDggMTEuMTY2OSAxMy40Mzk5IDExLjA0NzUgMTMuNjQ0Nk0xMS45MjM4IDguNzk5MDdMMTkuNTQzOCAxMC45MDk1TTkuNzkxNTUgMTcuODkxN0MxMC4zNDMxIDE3LjY0OCAxMC40NzcgMTYuNzc4NyAxMC43NDQ3IDE1LjA0MDFMMTAuODE0IDE0LjU5MDNDMTAuODkwMSAxNC4wOTYyIDEwLjkyODEgMTMuODQ5MiAxMS4wNDc1IDEzLjY0NDZNOS43OTE1NSAxNy44OTE3QzkuNzkxNTUgMTcuODkxNyA4LjYzNjAyIDE3LjU5MjIgNy40MjgwOSAxNi41MDU2TDcuMTE1NTggMTYuMjI0NUM2Ljc3MjMyIDE1LjkxNTcgNi42MDA3IDE1Ljc2MTQgNi4zOTMxNiAxNS43MDEyQzYuMTg1NjQgMTUuNjQxIDUuOTY1NjggMTUuNjgxOCA1LjUyNTgyIDE1Ljc2MzRMNS4xMjUzNSAxNS44Mzc2QzMuNTc3NDIgMTYuMTI0OCAyLjgwMzQ1IDE2LjI2ODMgMi40MzgzNSAxNS43NTg3QzIuMDczMjUgMTUuMjQ5MSAyLjM1ODggMTQuNDIzOCAyLjkyOTkyIDEyLjc3MzJMMy4wNzc2NyAxMi4zNDYyQzMuMjM5OTYgMTEuODc3MSAzLjMyMTExIDExLjY0MjYgMy4zMTIyNCAxMS40MDA3QzMuMzAzMzcgMTEuMTU4OSAzLjIwNTQ4IDEwLjkzNyAzLjAwOTcxIDEwLjQ5MzRMMi44MzE0NyAxMC4wODk1QzIuMTQyNTQgOC41MjgzNyAxLjc5ODA3IDcuNzQ3OCAyLjEyMzk5IDcuMTg5MTJDMi40NDk5IDYuNjMwNDQgMy4yMzAzNSA2LjY2MzY1IDQuNzkxMjYgNi43MzAwN0w1LjE5NTA4IDYuNzQ3MjVDNS42Mzg2NCA2Ljc2NjEzIDUuODYwNDIgNi43NzU1NiA2LjA2MjQ3IDYuNjg2MjhDNi4yNjQ1MiA2LjU5NzAxIDYuNDIzOTYgNi40MTkxMiA2Ljc0Mjg0IDYuMDYzMzVMNy4wMzMxNSA1LjczOTQ1QzguMTU1MyA0LjQ4NzQ3IDguNzE2MzggMy44NjE0OCA5LjI4MjkxIDQuMDI1ODJNOS43OTE1NSAxNy44OTE3TDE2LjMzODUgMTkuNzkwOEMxNy4wMzIxIDE5Ljk5MjEgMTcuMzc5IDIwLjA5MjcgMTcuNzM3NyAxOS44ODY2QzE4LjA5NjUgMTkuNjgwNiAxOC4xOTUyIDE5LjM3MjEgMTguMzkyNSAxOC43NTUzQzE4LjUyMDUgMTguMzU1NSAxOC42NDA4IDE3Ljg4MzkgMTguNzIyNCAxNy4zNTQyTDE4Ljc5MTYgMTYuOTA0NEMxOC44Njc3IDE2LjQxMDQgMTguOTA1OCAxNi4xNjMzIDE5LjAyNTEgMTUuOTU4N00xMS4wNDc1IDEzLjY0NDZMMTkuMDI1MSAxNS45NTg3TTkuMjgyOTEgNC4wMjU4MkwxNy4yNjA1IDYuMzM5OTVDMTcuODI3MSA2LjUwNDI5IDE4LjAyMzkgNy4zNTAxMiAxOC40MTc0IDkuMDQxNzhMMTguNTE5MyA5LjQ3OTQzQzE4LjYzMTEgOS45NjAxNSAxOC42ODcgMTAuMjAwNSAxOC44MjA4IDEwLjM4NzJDMTguOTU0NSAxMC41NzM5IDE5LjE1MDkgMTAuNjg1NyAxOS41NDM4IDEwLjkwOTVNMTkuNTQzOCAxMC45MDk1TDE5LjkwMTQgMTEuMTEzMkMyMS4yODM5IDExLjkwMDYgMjEuOTc1MSAxMi4yOTQzIDIxLjk5OTQgMTIuOTU0NUMyMi4wMjM2IDEzLjYxNDggMjEuMzY0NyAxNC4xMDQzIDIwLjA0NzEgMTUuMDgzNEwxOS43MDYyIDE1LjMzNjdDMTkuMzMxOCAxNS42MTQ5IDE5LjE0NDUgMTUuNzU0IDE5LjAyNTEgMTUuOTU4NyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K) Outline
 */
const StarAngle: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <SSRBase ref={ref} {...props} weights={weights} />
))

StarAngle.displayName = "StarAngle"
export default StarAngle
