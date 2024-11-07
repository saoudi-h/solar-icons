/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import SSRBase from "../../lib/SSRBase"
import weights from "../../defs/list/PlaaylistMinimalistic"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMi4yNSA2QzIuMjUgNS41ODU3OSAyLjU4NTc5IDUuMjUgMyA1LjI1SDIwQzIwLjQxNDIgNS4yNSAyMC43NSA1LjU4NTc5IDIwLjc1IDZDMjAuNzUgNi40MTQyMSAyMC40MTQyIDYuNzUgMjAgNi43NUgzQzIuNTg1NzkgNi43NSAyLjI1IDYuNDE0MjEgMi4yNSA2Wk0yLjI1IDExQzIuMjUgMTAuNTg1OCAyLjU4NTc5IDEwLjI1IDMgMTAuMjVIMTBDMTAuNDE0MiAxMC4yNSAxMC43NSAxMC41ODU4IDEwLjc1IDExQzEwLjc1IDExLjQxNDIgMTAuNDE0MiAxMS43NSAxMCAxMS43NUgzQzIuNTg1NzkgMTEuNzUgMi4yNSAxMS40MTQyIDIuMjUgMTFaTTIuMjUgMTZDMi4yNSAxNS41ODU4IDIuNTg1NzkgMTUuMjUgMyAxNS4yNUgxMEMxMC40MTQyIDE1LjI1IDEwLjc1IDE1LjU4NTggMTAuNzUgMTZDMTAuNzUgMTYuNDE0MiAxMC40MTQyIDE2Ljc1IDEwIDE2Ljc1SDNDMi41ODU3OSAxNi43NSAyLjI1IDE2LjQxNDIgMi4yNSAxNloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE5LjEyNSAxMC42ODU0QzIwLjc2NyAxMS42MzM0IDIxLjU4OCAxMi4xMDc0IDIxLjg0NzggMTIuNzM0NkMyMi4wNTA3IDEzLjIyNDcgMjIuMDUwNyAxMy43NzUzIDIxLjg0NzggMTQuMjY1NEMyMS41ODggMTQuODkyNiAyMC43NjcgMTUuMzY2NiAxOS4xMjUgMTYuMzE0NkMxNy40ODMgMTcuMjYyNiAxNi42NjIgMTcuNzM2NiAxNS45ODg5IDE3LjY0OEMxNS40NjMxIDE3LjU3ODcgMTQuOTg2MiAxNy4zMDM0IDE0LjY2MzMgMTYuODgyNkMxNC4yNSAxNi4zNDQgMTQuMjUgMTUuMzk2IDE0LjI1IDEzLjVDMTQuMjUgMTEuNjA0IDE0LjI1IDEwLjY1NiAxNC42NjMzIDEwLjExNzRDMTQuOTg2MiA5LjY5NjU5IDE1LjQ2MzEgOS40MjEyOCAxNS45ODg5IDkuMzUyMDVDMTYuNjYyIDkuMjYzNDMgMTcuNDgzIDkuNzM3NDMgMTkuMTI1IDEwLjY4NTRaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxnIG9wYWNpdHk9IjAuNSI+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMi4yNSA2QzIuMjUgNS41ODU3OSAyLjU4NTc5IDUuMjUgMyA1LjI1SDIwQzIwLjQxNDIgNS4yNSAyMC43NSA1LjU4NTc5IDIwLjc1IDZDMjAuNzUgNi40MTQyMSAyMC40MTQyIDYuNzUgMjAgNi43NUgzQzIuNTg1NzkgNi43NSAyLjI1IDYuNDE0MjEgMi4yNSA2Wk0yLjI1IDExQzIuMjUgMTAuNTg1OCAyLjU4NTc5IDEwLjI1IDMgMTAuMjVIMTBDMTAuNDE0MiAxMC4yNSAxMC43NSAxMC41ODU4IDEwLjc1IDExQzEwLjc1IDExLjQxNDIgMTAuNDE0MiAxMS43NSAxMCAxMS43NUgzQzIuNTg1NzkgMTEuNzUgMi4yNSAxMS40MTQyIDIuMjUgMTFaTTIuMjUgMTZDMi4yNSAxNS41ODU4IDIuNTg1NzkgMTUuMjUgMyAxNS4yNUgxMEMxMC40MTQyIDE1LjI1IDEwLjc1IDE1LjU4NTggMTAuNzUgMTZDMTAuNzUgMTYuNDE0MiAxMC40MTQyIDE2Ljc1IDEwIDE2Ljc1SDNDMi41ODU3OSAxNi43NSAyLjI1IDE2LjQxNDIgMi4yNSAxNloiIGZpbGw9IiMxQzI3NEMiLz4KPC9nPgo8cGF0aCBkPSJNMTkuMTI1IDEwLjY4NTJDMjAuNzY3IDExLjYzMzIgMjEuNTg4IDEyLjEwNzIgMjEuODQ3OCAxMi43MzQ0QzIyLjA1MDcgMTMuMjI0NSAyMi4wNTA3IDEzLjc3NTEgMjEuODQ3OCAxNC4yNjUxQzIxLjU4OCAxNC44OTI0IDIwLjc2NyAxNS4zNjY0IDE5LjEyNSAxNi4zMTQ0QzE3LjQ4MyAxNy4yNjIzIDE2LjY2MiAxNy43MzYzIDE1Ljk4ODkgMTcuNjQ3N0MxNS40NjMxIDE3LjU3ODUgMTQuOTg2MiAxNy4zMDMyIDE0LjY2MzMgMTYuODgyNEMxNC4yNSAxNi4zNDM3IDE0LjI1IDE1LjM5NTggMTQuMjUgMTMuNDk5OEMxNC4yNSAxMS42MDM4IDE0LjI1IDEwLjY1NTggMTQuNjYzMyAxMC4xMTcyQzE0Ljk4NjIgOS42OTYzNyAxNS40NjMxIDkuNDIxMDYgMTUuOTg4OSA5LjM1MTgyQzE2LjY2MiA5LjI2MzIxIDE3LjQ4MyA5LjczNzIgMTkuMTI1IDEwLjY4NTJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMCAxNkgzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwIDExSDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTkuMTI1IDEwLjY4NTJDMjAuNzY3IDExLjYzMzIgMjEuNTg4IDEyLjEwNzIgMjEuODQ3OCAxMi43MzQ0QzIyLjA1MDcgMTMuMjI0NSAyMi4wNTA3IDEzLjc3NTEgMjEuODQ3OCAxNC4yNjUxQzIxLjU4OCAxNC44OTI0IDIwLjc2NyAxNS4zNjY0IDE5LjEyNSAxNi4zMTQ0QzE3LjQ4MyAxNy4yNjIzIDE2LjY2MiAxNy43MzYzIDE1Ljk4ODkgMTcuNjQ3N0MxNS40NjMxIDE3LjU3ODUgMTQuOTg2MiAxNy4zMDMyIDE0LjY2MzMgMTYuODgyNEMxNC4yNSAxNi4zNDM3IDE0LjI1IDE1LjM5NTggMTQuMjUgMTMuNDk5OEMxNC4yNSAxMS42MDM4IDE0LjI1IDEwLjY1NTggMTQuNjYzMyAxMC4xMTcyQzE0Ljk4NjIgOS42OTYzNyAxNS40NjMxIDkuNDIxMDYgMTUuOTg4OSA5LjM1MTgyQzE2LjY2MiA5LjI2MzIxIDE3LjQ4MyA5LjczNzIgMTkuMTI1IDEwLjY4NTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIGQ9Ik0yMCA2TDkuNSA2TTMgNkw1LjI1IDYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMCA2TDMgNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMCAxNkgzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwIDExSDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTkuMTI1IDEwLjY4NTJDMjAuNzY3IDExLjYzMzIgMjEuNTg4IDEyLjEwNzIgMjEuODQ3OCAxMi43MzQ0QzIyLjA1MDcgMTMuMjI0NSAyMi4wNTA3IDEzLjc3NTEgMjEuODQ3OCAxNC4yNjUxQzIxLjU4OCAxNC44OTI0IDIwLjc2NyAxNS4zNjY0IDE5LjEyNSAxNi4zMTQ0QzE3LjQ4MyAxNy4yNjIzIDE2LjY2MiAxNy43MzYzIDE1Ljk4ODkgMTcuNjQ3N0MxNS40NjMxIDE3LjU3ODUgMTQuOTg2MiAxNy4zMDMyIDE0LjY2MzMgMTYuODgyNEMxNC4yNSAxNi4zNDM3IDE0LjI1IDE1LjM5NTggMTQuMjUgMTMuNDk5OEMxNC4yNSAxMS42MDM4IDE0LjI1IDEwLjY1NTggMTQuNjYzMyAxMC4xMTcyQzE0Ljk4NjIgOS42OTYzNyAxNS40NjMxIDkuNDIxMDYgMTUuOTg4OSA5LjM1MTgyQzE2LjY2MiA5LjI2MzIxIDE3LjQ4MyA5LjczNzIgMTkuMTI1IDEwLjY4NTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+Cjwvc3ZnPgo=) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIwIDZMMyA2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTAgMTZIMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEwIDExSDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTkuMTI1IDEwLjY4NTJDMjAuNzY3IDExLjYzMzIgMjEuNTg4IDEyLjEwNzIgMjEuODQ3OCAxMi43MzQ0QzIyLjA1MDcgMTMuMjI0NSAyMi4wNTA3IDEzLjc3NTEgMjEuODQ3OCAxNC4yNjUxQzIxLjU4OCAxNC44OTI0IDIwLjc2NyAxNS4zNjY0IDE5LjEyNSAxNi4zMTQ0QzE3LjQ4MyAxNy4yNjIzIDE2LjY2MiAxNy43MzYzIDE1Ljk4ODkgMTcuNjQ3N0MxNS40NjMxIDE3LjU3ODUgMTQuOTg2MiAxNy4zMDMyIDE0LjY2MzMgMTYuODgyNEMxNC4yNSAxNi4zNDM3IDE0LjI1IDE1LjM5NTggMTQuMjUgMTMuNDk5OEMxNC4yNSAxMS42MDM4IDE0LjI1IDEwLjY1NTggMTQuNjYzMyAxMC4xMTcyQzE0Ljk4NjIgOS42OTYzNyAxNS40NjMxIDkuNDIxMDYgMTUuOTg4OSA5LjM1MTgyQzE2LjY2MiA5LjI2MzIxIDE3LjQ4MyA5LjczNzIgMTkuMTI1IDEwLjY4NTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+Cjwvc3ZnPgo=) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMi4yNSA2QzIuMjUgNS41ODU3OSAyLjU4NTc5IDUuMjUgMyA1LjI1SDIwQzIwLjQxNDIgNS4yNSAyMC43NSA1LjU4NTc5IDIwLjc1IDZDMjAuNzUgNi40MTQyMSAyMC40MTQyIDYuNzUgMjAgNi43NUgzQzIuNTg1NzkgNi43NSAyLjI1IDYuNDE0MjEgMi4yNSA2Wk0xOS40NjU2IDEwLjAxNkwxOS41MzQ0IDEwLjA1NTdDMjAuMzI2MiAxMC41MTI5IDIwLjk2NzUgMTAuODgzMSAyMS40Mzk3IDExLjIxOTRDMjEuOTE1NyAxMS41NTgzIDIyLjMyODQgMTEuOTM1MSAyMi41NDA3IDEyLjQ0NzZDMjIuODE5OCAxMy4xMjE0IDIyLjgxOTggMTMuODc4NiAyMi41NDA3IDE0LjU1MjRDMjIuMzI4NCAxNS4wNjQ5IDIxLjkxNTcgMTUuNDQxNyAyMS40Mzk3IDE1Ljc4MDZDMjAuOTY3NSAxNi4xMTY5IDIwLjMyNjIgMTYuNDg3MSAxOS41MzQ0IDE2Ljk0NDNMMTkuNDY1NiAxNi45ODM5QzE4LjY3MzggMTcuNDQxMSAxOC4wMzI2IDE3LjgxMTQgMTcuNTA1MiAxOC4wNTIyQzE2Ljk3MzcgMTguMjk1IDE2LjQ0MTEgMTguNDY0IDE1Ljg5MTEgMTguMzkxNUMxNS4xNjc5IDE4LjI5NjMgMTQuNTEyMyAxNy45MTc4IDE0LjA2ODMgMTcuMzM5MkMxMy43MzA1IDE2Ljg5OSAxMy42MTA2IDE2LjM1MzMgMTMuNTU1MSAxNS43NzE2QzEzLjUgMTUuMTk0NSAxMy41IDE0LjQ1NCAxMy41IDEzLjUzOTdWMTMuNDYwM0MxMy41IDEyLjU0NiAxMy41IDExLjgwNTUgMTMuNTU1MSAxMS4yMjg0QzEzLjYxMDYgMTAuNjQ2NyAxMy43MzA1IDEwLjEwMSAxNC4wNjgzIDkuNjYwODRDMTQuNTEyMyA5LjA4MjIxIDE1LjE2NzkgOC43MDM2NiAxNS44OTExIDguNjA4NDZDMTYuNDQxMSA4LjUzNjA1IDE2Ljk3MzcgOC43MDUwMiAxNy41MDUyIDguOTQ3OEMxOC4wMzI2IDkuMTg4NjQgMTguNjczOCA5LjU1ODkgMTkuNDY1NiAxMC4wMTZaTTE2Ljg4MjEgMTAuMzEyMkMxNi40MjQzIDEwLjEwMzEgMTYuMjA5OSAxMC4wNzk0IDE2LjA4NjggMTAuMDk1NkMxNS43NTgyIDEwLjEzODkgMTUuNDYwMSAxMC4zMTEgMTUuMjU4MyAxMC41NzRDMTUuMTgyOCAxMC42NzI0IDE1LjA5NjEgMTAuODcgMTUuMDQ4MyAxMS4zNzA5QzE1LjAwMDggMTEuODY4MiAxNSAxMi41MzY2IDE1IDEzLjVDMTUgMTQuNDYzNCAxNS4wMDA4IDE1LjEzMTggMTUuMDQ4MyAxNS42MjkxQzE1LjA5NjEgMTYuMTMgMTUuMTgyOCAxNi4zMjc2IDE1LjI1ODMgMTYuNDI2QzE1LjQ2MDEgMTYuNjg5IDE1Ljc1ODIgMTYuODYxMSAxNi4wODY4IDE2LjkwNDRDMTYuMjA5OSAxNi45MjA2IDE2LjQyNDMgMTYuODk2OSAxNi44ODIxIDE2LjY4NzhDMTcuMzM2NCAxNi40ODAzIDE3LjkxNTcgMTYuMTQ2OCAxOC43NSAxNS42NjUxQzE5LjU4NDMgMTUuMTgzNCAyMC4xNjI4IDE0Ljg0ODQgMjAuNTY5NyAxNC41NTg3QzIwLjk3OTYgMTQuMjY2OSAyMS4xMDc0IDE0LjA5MyAyMS4xNTQ5IDEzLjk3ODRDMjEuMjgxNyAxMy42NzIxIDIxLjI4MTcgMTMuMzI3OSAyMS4xNTQ5IDEzLjAyMTZDMjEuMTA3NCAxMi45MDcgMjAuOTc5NiAxMi43MzMxIDIwLjU2OTcgMTIuNDQxM0MyMC4xNjI4IDEyLjE1MTYgMTkuNTg0MyAxMS44MTY2IDE4Ljc1IDExLjMzNDlDMTcuOTE1NyAxMC44NTMyIDE3LjMzNjQgMTAuNTE5NyAxNi44ODIxIDEwLjMxMjJaTTIuMjUgMTFDMi4yNSAxMC41ODU4IDIuNTg1NzkgMTAuMjUgMyAxMC4yNUgxMEMxMC40MTQyIDEwLjI1IDEwLjc1IDEwLjU4NTggMTAuNzUgMTFDMTAuNzUgMTEuNDE0MiAxMC40MTQyIDExLjc1IDEwIDExLjc1SDNDMi41ODU3OSAxMS43NSAyLjI1IDExLjQxNDIgMi4yNSAxMVpNMi4yNSAxNkMyLjI1IDE1LjU4NTggMi41ODU3OSAxNS4yNSAzIDE1LjI1SDEwQzEwLjQxNDIgMTUuMjUgMTAuNzUgMTUuNTg1OCAxMC43NSAxNkMxMC43NSAxNi40MTQyIDEwLjQxNDIgMTYuNzUgMTAgMTYuNzVIM0MyLjU4NTc5IDE2Ljc1IDIuMjUgMTYuNDE0MiAyLjI1IDE2WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) Outline
 */
const PlaaylistMinimalistic: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <SSRBase ref={ref} {...props} weights={weights} />
))

PlaaylistMinimalistic.displayName = "PlaaylistMinimalistic"
export default PlaaylistMinimalistic
