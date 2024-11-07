/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import SSRBase from "../../lib/SSRBase"
import weights from "../../defs/map/PointOnMapPerspective"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNyAyQzE1LjM0MzEgMiAxNCAzLjM0MzE1IDE0IDVDMTQgNi4zOTc4OCAxNC45NTYxIDcuNTcyNDYgMTYuMjUgNy45MDU0OUwxNi4yNSAxM0MxNi4yNSAxMy40MTQyIDE2LjU4NTggMTMuNzUgMTcgMTMuNzVDMTcuNDE0MiAxMy43NSAxNy43NSAxMy40MTQyIDE3Ljc1IDEzVjcuOTA1NDlDMTkuMDQzOSA3LjU3MjQ1IDIwIDYuMzk3ODggMjAgNUMyMCAzLjM0MzE1IDE4LjY1NjkgMiAxNyAyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNOCAyMkgxNkMxOC40ODIyIDIyIDE5Ljg3NTIgMjIgMjAuNzczIDIxLjQwNjFMMTIuMjU5MSAxNi43MjM0TDQuMjE1NzggMjEuODAzNEM1LjA4NzA1IDIyIDYuMjgyOTMgMjIgOCAyMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEwLjc1NzYgMTUuODk3NkwyLjUxMTEyIDExLjM2MjFDMiAxMi4yNjMzIDIgMTMuNjM4OSAyIDE2QzIgMTguNjY1NyAyIDIwLjA3NTIgMi43MzU1NyAyMC45NjQyTDEwLjc1NzYgMTUuODk3NloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIyIDE2QzIyIDEzLjE3MTYgMjIgMTEuNzU3NCAyMS4xMjEzIDEwLjg3ODdDMjAuNjMxNCAxMC4zODg4IDE5Ljk3NTEgMTAuMTcyIDE5IDEwLjA3NjFWMTNDMTkgMTQuMTA0NiAxOC4xMDQ2IDE1IDE3IDE1QzE1Ljg5NTQgMTUgMTUgMTQuMTA0NiAxNSAxM1YxMEg4QzUuOTU1MTIgMTAgNC42NDk0NCAxMCAzLjc1MDkxIDEwLjMzMkwyMS42ODY4IDIwLjE5NjhDMjIgMTkuMyAyMiAxOC4wMDU1IDIyIDE2WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIyLjAwMDEgMTZDMjIuMDAwMSAxMy4xNzE2IDIyLjAwMDEgMTEuNzU3NCAyMS4xMjE0IDEwLjg3ODdDMjAuNjMxNSAxMC4zODg4IDE5Ljk3NTIgMTAuMTcyIDE5LjAwMDEgMTAuMDc2MUMxOC4xNjY4IDEwLjA1MDcgMTYuMjAwMSAxMCAxNS4wMDAxIDEwSDguMDAwMDdDNS45NTUxOSAxMCA0LjY0OTUxIDEwIDMuNzUwOTggMTAuMzMyTDIxLjY4NjggMjAuMTk2OEMyMi4wMDAxIDE5LjMgMjIuMDAwMSAxOC4wMDU1IDIyLjAwMDEgMTZaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMC43NTc2IDE1Ljg5NzlMMi41MTExMiAxMS4zNjIzQzIgMTIuMjYzNiAyIDEzLjYzOTIgMiAxNi4wMDAyQzIgMTguNjY1OSAyIDIwLjA3NTQgMi43MzU1NyAyMC45NjQ0TDEwLjc1NzYgMTUuODk3OVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTguMDAwMDQgMjIuMDAwMkgxNkMxOC40ODIzIDIyLjAwMDIgMTkuODc1MyAyMi4wMDAyIDIwLjc3MyAyMS40MDYzTDEyLjI1OTEgMTYuNzIzNkw0LjIxNTgyIDIxLjgwMzZDNS4wODcwOSAyMi4wMDAyIDYuMjgyOTYgMjIuMDAwMiA4LjAwMDA0IDIyLjAwMDJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNyAyQzE1LjM0MzEgMiAxNCAzLjM0MzE1IDE0IDVDMTQgNi4zOTc4OCAxNC45NTYxIDcuNTcyNDYgMTYuMjUgNy45MDU0OUwxNi4yNSAxM0MxNi4yNSAxMy40MTQyIDE2LjU4NTggMTMuNzUgMTcgMTMuNzVDMTcuNDE0MiAxMy43NSAxNy43NSAxMy40MTQyIDE3Ljc1IDEzVjcuOTA1NDlDMTkuMDQzOSA3LjU3MjQ1IDIwIDYuMzk3ODggMjAgNUMyMCAzLjM0MzE1IDE4LjY1NjkgMiAxNyAyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDE2QzIgMTguODI4NCAyIDIwLjI0MjYgMi44Nzg2OCAyMS4xMjEzQzMuNzU3MzYgMjIgNS4xNzE1NyAyMiA4IDIySDE2QzE4LjgyODQgMjIgMjAuMjQyNiAyMiAyMS4xMjEzIDIxLjEyMTNDMjIgMjAuMjQyNiAyMiAxOC44Mjg0IDIyIDE2QzIyIDEzLjE3MTYgMjIgMTEuNzU3NCAyMS4xMjEzIDEwLjg3ODdDMjAuMjQyNiAxMCAxOC44Mjg0IDEwIDE2IDEwTDggMTBDNS4xNzE1NyAxMCAzLjc1NzM2IDEwIDIuODc4NjggMTAuODc4N0MyLjU3ODg4IDExLjE3ODUgMi4zODEzNyAxMS41NDA2IDIuMjUxMjUgMTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjEgMjFMMTcuMjM2IDE4LjkwODlNMyAxMUwxNCAxNy4xMTExIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTMuNSAyMUw5Ljg1Nzg2IDE3LjI2MDFMMTIgMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTcgMTNMMTcgOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNi41IDIuMDQxNDhDMTYuNjYyNiAyLjAxNDIgMTYuODI5NiAyIDE3IDJDMTguNjU2OSAyIDIwIDMuMzQzMTUgMjAgNUMyMCA2LjY1Njg1IDE4LjY1NjkgOCAxNyA4QzE1LjM0MzEgOCAxNCA2LjY1Njg1IDE0IDVDMTQgNC44Mjk2NCAxNC4wMTQyIDQuNjYyNiAxNC4wNDE1IDQuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMS4xMjEzIDIxLjEyMTNDMjIgMjAuMjQyNiAyMiAxOC44Mjg0IDIyIDE2QzIyIDEzLjE3MTYgMjIgMTEuNzU3NCAyMS4xMjEzIDEwLjg3ODdNMjEuMTIxMyAyMS4xMjEzQzIwLjI0MjYgMjIgMTguODI4NCAyMiAxNiAyMkg4QzUuMTcxNTcgMjIgMy43NTczNiAyMiAyLjg3ODY4IDIxLjEyMTNNMjEuMTIxMyAyMS4xMjEzQzIxLjEyMTMgMjEuMTIxMyAyMS4xMjEzIDIxLjEyMTMgMjEuMTIxMyAyMS4xMjEzWk0yMS4xMjEzIDEwLjg3ODdDMjAuMjQyNiAxMCAxOC44Mjg0IDEwIDE2IDEwTDggMTBDNS4xNzE1NyAxMCAzLjc1NzM2IDEwIDIuODc4NjggMTAuODc4N00yMS4xMjEzIDEwLjg3ODdDMjEuMTIxMyAxMC44Nzg3IDIxLjEyMTMgMTAuODc4NyAyMS4xMjEzIDEwLjg3ODdaTTIuODc4NjggMTAuODc4N0MyIDExLjc1NzQgMiAxMy4xNzE2IDIgMTZDMiAxOC44Mjg0IDIgMjAuMjQyNiAyLjg3ODY4IDIxLjEyMTNNMi44Nzg2OCAxMC44Nzg3QzIuODc4NjggMTAuODc4NyAyLjg3ODY4IDEwLjg3ODcgMi44Nzg2OCAxMC44Nzg3Wk0yLjg3ODY4IDIxLjEyMTNDMi44Nzg2OCAyMS4xMjEzIDIuODc4NjggMjEuMTIxMyAyLjg3ODY4IDIxLjEyMTNaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIGQ9Ik0yMSAyMUwzIDExIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTMuNSAyMUwxMiAxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjE3IiBjeT0iNSIgcj0iMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNMTcgMTNMMTcgOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIxIDIxTDMgMTFNMy41IDIxTDEyIDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTcgOEMxOC42NTY5IDggMjAgNi42NTY4NSAyMCA1QzIwIDMuMzQzMTUgMTguNjU2OSAyIDE3IDJDMTUuMzQzMSAyIDE0IDMuMzQzMTUgMTQgNUMxNCA2LjY1Njg1IDE1LjM0MzEgOCAxNyA4Wk0xNyA4VjEzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIxLjEyMTMgMjEuMTIxM0MyMiAyMC4yNDI2IDIyIDE4LjgyODQgMjIgMTZDMjIgMTMuMTcxNiAyMiAxMS43NTc0IDIxLjEyMTMgMTAuODc4N00yMS4xMjEzIDIxLjEyMTNDMjAuMjQyNiAyMiAxOC44Mjg0IDIyIDE2IDIySDhDNS4xNzE1NyAyMiAzLjc1NzM2IDIyIDIuODc4NjggMjEuMTIxM00yMS4xMjEzIDIxLjEyMTNWMjEuMTIxM1pNMjEuMTIxMyAxMC44Nzg3QzIwLjI0MjYgMTAgMTguODI4NCAxMCAxNiAxMEw4IDEwQzUuMTcxNTcgMTAgMy43NTczNiAxMCAyLjg3ODY4IDEwLjg3ODdNMjEuMTIxMyAxMC44Nzg3VjEwLjg3ODdaTTIuODc4NjggMTAuODc4N0MyIDExLjc1NzQgMiAxMy4xNzE2IDIgMTZDMiAxOC44Mjg0IDIgMjAuMjQyNiAyLjg3ODY4IDIxLjEyMTNNMi44Nzg2OCAxMC44Nzg3VjEwLjg3ODdaTTIuODc4NjggMjEuMTIxM1YyMS4xMjEzWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTcgMi43NUMxNS43NTc0IDIuNzUgMTQuNzUgMy43NTczNiAxNC43NSA1QzE0Ljc1IDYuMjQyNjQgMTUuNzU3NCA3LjI1IDE3IDcuMjVDMTguMjQyNiA3LjI1IDE5LjI1IDYuMjQyNjQgMTkuMjUgNUMxOS4yNSAzLjc1NzM2IDE4LjI0MjYgMi43NSAxNyAyLjc1Wk0xMy4yNSA1QzEzLjI1IDIuOTI4OTMgMTQuOTI4OSAxLjI1IDE3IDEuMjVDMTkuMDcxMSAxLjI1IDIwLjc1IDIuOTI4OTMgMjAuNzUgNUMyMC43NSA2LjgxNDIyIDE5LjQ2MTcgOC4zMjc1MyAxNy43NSA4LjY3NDk5VjkuMjYwNzVDMTguMzcxMiA5LjI3MzggMTguOTE2OCA5LjMwMjY2IDE5LjM5MTggOS4zNjY1MkMyMC4yOTE5IDkuNDg3NTQgMjEuMDQ5NyA5Ljc0NjQzIDIxLjY1MTcgMTAuMzQ4M0MyMi4yNTM2IDEwLjk1MDMgMjIuNTEyNSAxMS43MDgxIDIyLjYzMzUgMTIuNjA4MkMyMi43NSAxMy40NzUyIDIyLjc1IDE0LjU3NzUgMjIuNzUgMTUuOTQ1MVYxNi4wNTQ5QzIyLjc1IDE3LjQyMjUgMjIuNzUgMTguNTI0OCAyMi42MzM1IDE5LjM5MThDMjIuNTEyNSAyMC4yOTE5IDIyLjI1MzYgMjEuMDQ5NyAyMS42NTE3IDIxLjY1MTZDMjEuMDQ5NyAyMi4yNTM2IDIwLjI5MTkgMjIuNTEyNSAxOS4zOTE4IDIyLjYzMzVDMTguNTI0OCAyMi43NSAxNy40MjI1IDIyLjc1IDE2LjA1NDkgMjIuNzVINy45NDUxM0M2LjU3NzU0IDIyLjc1IDUuNDc1MjIgMjIuNzUgNC42MDgyNSAyMi42MzM1QzMuNzA4MTQgMjIuNTEyNSAyLjk1MDI3IDIyLjI1MzYgMi4zNDgzNSAyMS42NTE2QzEuNzQ2NDMgMjEuMDQ5NyAxLjQ4NzU0IDIwLjI5MTkgMS4zNjY1MiAxOS4zOTE4QzEuMjQ5OTYgMTguNTI0OCAxLjI0OTk4IDE3LjQyMjUgMS4yNSAxNi4wNTQ5VjE1Ljk0NTFDMS4yNDk5OCAxNC41Nzc1IDEuMjQ5OTYgMTMuNDc1MiAxLjM2NjUyIDEyLjYwODJDMS40ODc1NCAxMS43MDgxIDEuNzQ2NDMgMTAuOTUwMyAyLjM0ODM1IDEwLjM0ODRDMi45NTAyNyA5Ljc0NjQzIDMuNzA4MTQgOS40ODc1NCA0LjYwODI1IDkuMzY2NTJDNS40NzUyMiA5LjI0OTk2IDYuNTc3NTQgOS4yNDk5OCA3Ljk0NTEzIDkuMjVIMTYuMDU0OUMxNi4xMjA1IDkuMjUgMTYuMTg1NiA5LjI1IDE2LjI1IDkuMjUwMDFWOC42NzQ5OUMxNC41MzgzIDguMzI3NTMgMTMuMjUgNi44MTQyMiAxMy4yNSA1Wk0xNi4yNSAxMC43NUMxNi4xNjgyIDEwLjc1IDE2LjA4NDggMTAuNzUgMTYgMTAuNzVIOEM2LjU2NDU4IDEwLjc1IDUuNTYzNDcgMTAuNzUxNiA0LjgwODEyIDEwLjg1MzFDNC42NjA1IDEwLjg3MyA0LjUyNjg1IDEwLjg5NjIgNC40MDUyNyAxMC45MjI3TDEyLjM1MzIgMTUuMzM4MkMxMi4zNjEgMTUuMzQyNCAxMi4zNjg4IDE1LjM0NjcgMTIuMzc2NSAxNS4zNTEyTDIwLjkyMDggMjAuMDk4QzIxLjAyMDMgMTkuODY5IDIxLjA5NDkgMTkuNTc4MyAyMS4xNDY5IDE5LjE5MTlDMjEuMjQ4NCAxOC40MzY1IDIxLjI1IDE3LjQzNTQgMjEuMjUgMTZDMjEuMjUgMTQuNTY0NiAyMS4yNDg0IDEzLjU2MzUgMjEuMTQ2OSAxMi44MDgxQzIxLjA0ODIgMTIuMDc0MyAyMC44Njc4IDExLjY4NTggMjAuNTkxIDExLjQwOUMyMC4zMTQyIDExLjEzMjIgMTkuOTI1NyAxMC45NTE4IDE5LjE5MTkgMTAuODUzMUMxOC43OTAyIDEwLjc5OTEgMTguMzE5IDEwLjc3MzQgMTcuNzUgMTAuNzYxMVYxM0MxNy43NSAxMy40MTQyIDE3LjQxNDIgMTMuNzUgMTcgMTMuNzVDMTYuNTg1OCAxMy43NSAxNi4yNSAxMy40MTQyIDE2LjI1IDEzVjEwLjc1Wk0xOS41OTQ3IDIxLjA3NzNMMTIuMDEwNiAxNi44NjM5TDQuNzQ0NjUgMjEuMTM4QzQuNzY1NTIgMjEuMTQxIDQuNzg2NjcgMjEuMTQ0IDQuODA4MTIgMjEuMTQ2OUM1LjU2MzQ3IDIxLjI0ODQgNi41NjQ1OSAyMS4yNSA4IDIxLjI1SDE2QzE3LjQzNTQgMjEuMjUgMTguNDM2NSAyMS4yNDg0IDE5LjE5MTkgMjEuMTQ2OUMxOS4zMzk1IDIxLjEyNyAxOS40NzMxIDIxLjEwMzggMTkuNTk0NyAyMS4wNzczWk0zLjE4OTc2IDIwLjMxMjRMMTAuNDg5MSAxNi4wMTg2TDMuMDc5MTkgMTEuOTAyQzIuOTc5NzQgMTIuMTMxIDIuOTA1MSAxMi40MjE3IDIuODUzMTUgMTIuODA4MUMyLjc1MTU5IDEzLjU2MzUgMi43NSAxNC41NjQ2IDIuNzUgMTZDMi43NSAxNy40MzU0IDIuNzUxNTkgMTguNDM2NSAyLjg1MzE1IDE5LjE5MTlDMi45MjI4MyAxOS43MTAyIDMuMDMzMzMgMjAuMDU2MyAzLjE4OTc2IDIwLjMxMjRaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) Outline
 */
const PointOnMapPerspective: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <SSRBase ref={ref} {...props} weights={weights} />
))

PointOnMapPerspective.displayName = "PointOnMapPerspective"
export default PointOnMapPerspective
