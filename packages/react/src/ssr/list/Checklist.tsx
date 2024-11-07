/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import SSRBase from "../../lib/SSRBase"
import weights from "../../defs/list/Checklist"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNOC4wNDgzMiAyLjQ4ODI2QzguMzMwOTQgMi43OTEwOCA4LjMxNDU4IDMuMjY1NjcgOC4wMTE3NiAzLjU0ODI5TDMuNzI2MDUgNy41NDgyOUMzLjU3MzkzIDcuNjkwMjcgMy4zNjk2NyA3Ljc2MjY3IDMuMTYyMSA3Ljc0ODE4QzIuOTU0NTMgNy43MzM3IDIuNzYyMyA3LjYzMzYzIDIuNjMxMzggNy40NzE5TDEuNDE3MDkgNS45NzE5QzEuMTU2NDcgNS42NDk5NiAxLjIwNjE4IDUuMTc3NjkgMS41MjgxMyA0LjkxNzA3QzEuODUwMDcgNC42NTY0NSAyLjMyMjM0IDQuNzA2MTYgMi41ODI5NiA1LjAyODFMMy4yOTA4OSA1LjkwMjYxTDYuOTg4MjkgMi40NTE3MUM3LjI5MTEgMi4xNjkwOSA3Ljc2NTY5IDIuMTg1NDUgOC4wNDgzMiAyLjQ4ODI2Wk0xMS4yNSA1QzExLjI1IDQuNTg1NzkgMTEuNTg1OCA0LjI1IDEyIDQuMjVIMjJDMjIuNDE0MiA0LjI1IDIyLjc1IDQuNTg1NzkgMjIuNzUgNUMyMi43NSA1LjQxNDIyIDIyLjQxNDIgNS43NSAyMiA1Ljc1SDEyQzExLjU4NTggNS43NSAxMS4yNSA1LjQxNDIyIDExLjI1IDVaTTguMDQ4MzIgOS40ODgyNkM4LjMzMDk0IDkuNzkxMDggOC4zMTQ1OCAxMC4yNjU3IDguMDExNzYgMTAuNTQ4M0wzLjcyNjA1IDE0LjU0ODNDMy41NzM5MyAxNC42OTAzIDMuMzY5NjcgMTQuNzYyNyAzLjE2MjEgMTQuNzQ4MkMyLjk1NDUzIDE0LjczMzcgMi43NjIzIDE0LjYzMzYgMi42MzEzOCAxNC40NzE5TDEuNDE3MDkgMTIuOTcxOUMxLjE1NjQ3IDEyLjY1IDEuMjA2MTggMTIuMTc3NyAxLjUyODEzIDExLjkxNzFDMS44NTAwNyAxMS42NTY0IDIuMzIyMzQgMTEuNzA2MiAyLjU4Mjk2IDEyLjAyODFMMy4yOTA4OSAxMi45MDI2TDYuOTg4MjkgOS40NTE3MUM3LjI5MTEgOS4xNjkwOSA3Ljc2NTY5IDkuMTg1NDUgOC4wNDgzMiA5LjQ4ODI2Wk0xMS4yNSAxMkMxMS4yNSAxMS41ODU4IDExLjU4NTggMTEuMjUgMTIgMTEuMjVIMjJDMjIuNDE0MiAxMS4yNSAyMi43NSAxMS41ODU4IDIyLjc1IDEyQzIyLjc1IDEyLjQxNDIgMjIuNDE0MiAxMi43NSAyMiAxMi43NUgxMkMxMS41ODU4IDEyLjc1IDExLjI1IDEyLjQxNDIgMTEuMjUgMTJaTTguMDQ4MzIgMTYuNDg4M0M4LjMzMDk0IDE2Ljc5MTEgOC4zMTQ1OCAxNy4yNjU3IDguMDExNzYgMTcuNTQ4M0wzLjcyNjA1IDIxLjU0ODNDMy41NzM5MyAyMS42OTAzIDMuMzY5NjcgMjEuNzYyNyAzLjE2MjEgMjEuNzQ4MkMyLjk1NDUzIDIxLjczMzcgMi43NjIzIDIxLjYzMzYgMi42MzEzOCAyMS40NzE5TDEuNDE3MDkgMTkuOTcxOUMxLjE1NjQ3IDE5LjY1IDEuMjA2MTggMTkuMTc3NyAxLjUyODEzIDE4LjkxNzFDMS44NTAwNyAxOC42NTY0IDIuMzIyMzQgMTguNzA2MiAyLjU4Mjk2IDE5LjAyODFMMy4yOTA4OSAxOS45MDI2TDYuOTg4MjkgMTYuNDUxN0M3LjI5MTEgMTYuMTY5MSA3Ljc2NTY5IDE2LjE4NTUgOC4wNDgzMiAxNi40ODgzWk0xMS4yNSAxOUMxMS4yNSAxOC41ODU4IDExLjU4NTggMTguMjUgMTIgMTguMjVIMjJDMjIuNDE0MiAxOC4yNSAyMi43NSAxOC41ODU4IDIyLjc1IDE5QzIyLjc1IDE5LjQxNDIgMjIuNDE0MiAxOS43NSAyMiAxOS43NUgxMkMxMS41ODU4IDE5Ljc1IDExLjI1IDE5LjQxNDIgMTEuMjUgMTlaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNOC4wNDgzMiAyLjQ4ODI2QzguMzMwOTQgMi43OTEwOCA4LjMxNDU4IDMuMjY1NjcgOC4wMTE3NiAzLjU0ODI5TDMuNzI2MDUgNy41NDgyOUMzLjU3MzkzIDcuNjkwMjcgMy4zNjk2NyA3Ljc2MjY3IDMuMTYyMSA3Ljc0ODE4QzIuOTU0NTMgNy43MzM3IDIuNzYyMyA3LjYzMzYzIDIuNjMxMzggNy40NzE5TDEuNDE3MDkgNS45NzE5QzEuMTU2NDcgNS42NDk5NiAxLjIwNjE4IDUuMTc3NjkgMS41MjgxMyA0LjkxNzA3QzEuODUwMDcgNC42NTY0NSAyLjMyMjM0IDQuNzA2MTYgMi41ODI5NiA1LjAyODFMMy4yOTA4OSA1LjkwMjYxTDYuOTg4MjkgMi40NTE3MUM3LjI5MTEgMi4xNjkwOSA3Ljc2NTY5IDIuMTg1NDUgOC4wNDgzMiAyLjQ4ODI2Wk0xMS4yNSA1QzExLjI1IDQuNTg1NzkgMTEuNTg1OCA0LjI1IDEyIDQuMjVIMjJDMjIuNDE0MiA0LjI1IDIyLjc1IDQuNTg1NzkgMjIuNzUgNUMyMi43NSA1LjQxNDIyIDIyLjQxNDIgNS43NSAyMiA1Ljc1SDEyQzExLjU4NTggNS43NSAxMS4yNSA1LjQxNDIyIDExLjI1IDVaTTguMDQ4MzIgMTYuNDg4M0M4LjMzMDk0IDE2Ljc5MTEgOC4zMTQ1OCAxNy4yNjU3IDguMDExNzYgMTcuNTQ4M0wzLjcyNjA1IDIxLjU0ODNDMy41NzM5MyAyMS42OTAzIDMuMzY5NjcgMjEuNzYyNyAzLjE2MjEgMjEuNzQ4MkMyLjk1NDUzIDIxLjczMzcgMi43NjIzIDIxLjYzMzYgMi42MzEzOCAyMS40NzE5TDEuNDE3MDkgMTkuOTcxOUMxLjE1NjQ3IDE5LjY1IDEuMjA2MTggMTkuMTc3NyAxLjUyODEzIDE4LjkxNzFDMS44NTAwNyAxOC42NTY0IDIuMzIyMzQgMTguNzA2MiAyLjU4Mjk2IDE5LjAyODFMMy4yOTA4OSAxOS45MDI2TDYuOTg4MjkgMTYuNDUxN0M3LjI5MTEgMTYuMTY5MSA3Ljc2NTY5IDE2LjE4NTUgOC4wNDgzMiAxNi40ODgzWk0xMS4yNSAxOUMxMS4yNSAxOC41ODU4IDExLjU4NTggMTguMjUgMTIgMTguMjVIMjJDMjIuNDE0MiAxOC4yNSAyMi43NSAxOC41ODU4IDIyLjc1IDE5QzIyLjc1IDE5LjQxNDIgMjIuNDE0MiAxOS43NSAyMiAxOS43NUgxMkMxMS41ODU4IDE5Ljc1IDExLjI1IDE5LjQxNDIgMTEuMjUgMTlaIiBmaWxsPSIjMUMyNzRDIi8+CjxnIG9wYWNpdHk9IjAuNSI+CjxwYXRoIGQ9Ik04LjA0ODMyIDkuNDg4MjZDOC4zMzA5NCA5Ljc5MTA4IDguMzE0NTggMTAuMjY1NyA4LjAxMTc2IDEwLjU0ODNMMy43MjYwNSAxNC41NDgzQzMuNTczOTMgMTQuNjkwMyAzLjM2OTY3IDE0Ljc2MjcgMy4xNjIxIDE0Ljc0ODJDMi45NTQ1MyAxNC43MzM3IDIuNzYyMyAxNC42MzM2IDIuNjMxMzggMTQuNDcxOUwxLjQxNzA5IDEyLjk3MTlDMS4xNTY0NyAxMi42NSAxLjIwNjE4IDEyLjE3NzcgMS41MjgxMyAxMS45MTcxQzEuODUwMDcgMTEuNjU2NCAyLjMyMjM0IDExLjcwNjIgMi41ODI5NiAxMi4wMjgxTDMuMjkwODkgMTIuOTAyNkw2Ljk4ODI5IDkuNDUxNzFDNy4yOTExIDkuMTY5MDkgNy43NjU2OSA5LjE4NTQ1IDguMDQ4MzIgOS40ODgyNloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTExLjI1IDEyQzExLjI1IDExLjU4NTggMTEuNTg1OCAxMS4yNSAxMiAxMS4yNUgyMkMyMi40MTQyIDExLjI1IDIyLjc1IDExLjU4NTggMjIuNzUgMTJDMjIuNzUgMTIuNDE0MiAyMi40MTQyIDEyLjc1IDIyIDEyLjc1SDEyQzExLjU4NTggMTIuNzUgMTEuMjUgMTIuNDE0MiAxMS4yNSAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9nPgo8L3N2Zz4K) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDUuNUwzLjIxNDI5IDdMNy41IDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMiAxMi41TDMuMjE0MjkgMTRMNy41IDEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTIgMTkuNUwzLjIxNDI5IDIxTDcuNSAxNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAxMkgxN00xMiAxMkgxMy41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDE5SDE3TTIwLjUgMTlIMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjIgNUwxMiA1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDUuNUwzLjIxNDI5IDdMNy41IDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMiAxMi41TDMuMjE0MjkgMTRMNy41IDEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTIgMTkuNUwzLjIxNDI5IDIxTDcuNSAxNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAxOUwxMiAxOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAxMkwxMiAxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiA1TDEyIDUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDUuNUwzLjIxNDI5IDdMNy41IDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0yIDEyLjVMMy4yMTQyOSAxNEw3LjUgMTAiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMiAxOS41TDMuMjE0MjkgMjFMNy41IDE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTIyIDE5TDEyIDE5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjIgMTJMMTIgMTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjIgNUwxMiA1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNOC4wNDgzMiAyLjQ4ODI2QzguMzMwOTQgMi43OTEwOCA4LjMxNDU4IDMuMjY1NjcgOC4wMTE3NiAzLjU0ODI5TDMuNzI2MDUgNy41NDgyOUMzLjU3MzkzIDcuNjkwMjcgMy4zNjk2NyA3Ljc2MjY3IDMuMTYyMSA3Ljc0ODE4QzIuOTU0NTMgNy43MzM3IDIuNzYyMyA3LjYzMzYzIDIuNjMxMzggNy40NzE5TDEuNDE3MDkgNS45NzE5QzEuMTU2NDcgNS42NDk5NiAxLjIwNjE4IDUuMTc3NjkgMS41MjgxMyA0LjkxNzA3QzEuODUwMDcgNC42NTY0NSAyLjMyMjM0IDQuNzA2MTYgMi41ODI5NiA1LjAyODFMMy4yOTA4OSA1LjkwMjYxTDYuOTg4MjkgMi40NTE3MUM3LjI5MTEgMi4xNjkwOSA3Ljc2NTY5IDIuMTg1NDUgOC4wNDgzMiAyLjQ4ODI2Wk0xMS4yNSA1QzExLjI1IDQuNTg1NzkgMTEuNTg1OCA0LjI1IDEyIDQuMjVIMjJDMjIuNDE0MiA0LjI1IDIyLjc1IDQuNTg1NzkgMjIuNzUgNUMyMi43NSA1LjQxNDIyIDIyLjQxNDIgNS43NSAyMiA1Ljc1SDEyQzExLjU4NTggNS43NSAxMS4yNSA1LjQxNDIyIDExLjI1IDVaTTguMDQ4MzIgOS40ODgyNkM4LjMzMDk0IDkuNzkxMDggOC4zMTQ1OCAxMC4yNjU3IDguMDExNzYgMTAuNTQ4M0wzLjcyNjA1IDE0LjU0ODNDMy41NzM5MyAxNC42OTAzIDMuMzY5NjcgMTQuNzYyNyAzLjE2MjEgMTQuNzQ4MkMyLjk1NDUzIDE0LjczMzcgMi43NjIzIDE0LjYzMzYgMi42MzEzOCAxNC40NzE5TDEuNDE3MDkgMTIuOTcxOUMxLjE1NjQ3IDEyLjY1IDEuMjA2MTggMTIuMTc3NyAxLjUyODEzIDExLjkxNzFDMS44NTAwNyAxMS42NTY0IDIuMzIyMzQgMTEuNzA2MiAyLjU4Mjk2IDEyLjAyODFMMy4yOTA4OSAxMi45MDI2TDYuOTg4MjkgOS40NTE3MUM3LjI5MTEgOS4xNjkwOSA3Ljc2NTY5IDkuMTg1NDUgOC4wNDgzMiA5LjQ4ODI2Wk0xMS4yNSAxMkMxMS4yNSAxMS41ODU4IDExLjU4NTggMTEuMjUgMTIgMTEuMjVIMjJDMjIuNDE0MiAxMS4yNSAyMi43NSAxMS41ODU4IDIyLjc1IDEyQzIyLjc1IDEyLjQxNDIgMjIuNDE0MiAxMi43NSAyMiAxMi43NUgxMkMxMS41ODU4IDEyLjc1IDExLjI1IDEyLjQxNDIgMTEuMjUgMTJaTTguMDQ4MzIgMTYuNDg4M0M4LjMzMDk0IDE2Ljc5MTEgOC4zMTQ1OCAxNy4yNjU3IDguMDExNzYgMTcuNTQ4M0wzLjcyNjA1IDIxLjU0ODNDMy41NzM5MyAyMS42OTAzIDMuMzY5NjcgMjEuNzYyNyAzLjE2MjEgMjEuNzQ4MkMyLjk1NDUzIDIxLjczMzcgMi43NjIzIDIxLjYzMzYgMi42MzEzOCAyMS40NzE5TDEuNDE3MDkgMTkuOTcxOUMxLjE1NjQ3IDE5LjY1IDEuMjA2MTggMTkuMTc3NyAxLjUyODEzIDE4LjkxNzFDMS44NTAwNyAxOC42NTY0IDIuMzIyMzQgMTguNzA2MiAyLjU4Mjk2IDE5LjAyODFMMy4yOTA4OSAxOS45MDI2TDYuOTg4MjkgMTYuNDUxN0M3LjI5MTEgMTYuMTY5MSA3Ljc2NTY5IDE2LjE4NTUgOC4wNDgzMiAxNi40ODgzWk0xMS4yNSAxOUMxMS4yNSAxOC41ODU4IDExLjU4NTggMTguMjUgMTIgMTguMjVIMjJDMjIuNDE0MiAxOC4yNSAyMi43NSAxOC41ODU4IDIyLjc1IDE5QzIyLjc1IDE5LjQxNDIgMjIuNDE0MiAxOS43NSAyMiAxOS43NUgxMkMxMS41ODU4IDE5Ljc1IDExLjI1IDE5LjQxNDIgMTEuMjUgMTlaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) Outline
 */
const Checklist: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <SSRBase ref={ref} {...props} weights={weights} />
))

Checklist.displayName = "Checklist"
export default Checklist