/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import IconBase from "../../lib/IconBase"
import weights from "../../defs/ui/FerrisWheel"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTMuNjk3NiAzLjA3MzM2QzEzLjUwNzIgMi4zMTMwNyAxMi44MTkzIDEuNzUgMTIgMS43NUMxMS4xODA4IDEuNzUgMTAuNDkzIDIuMzEyOTUgMTAuMzAyNCAzLjA3MzEyQzEwLjI2OTYgMy4wODk3OCAxMC4yMzcgMy4xMDY5NSAxMC4yMDQ2IDMuMTI0NjRMNS40MTAzMyA1LjczODgxQzUuMzI3NjggNS43ODM4NyA1LjI0NzE4IDUuODMxNzkgNS4xNjg5MSA1Ljg4MjM5QzQuOTYyODMgNS43OTcwOCA0LjczNjkxIDUuNzUgNC41IDUuNzVDMy41MzM1IDUuNzUgMi43NSA2LjUzMzUgMi43NSA3LjVDMi43NSA4LjA3NTk2IDMuMDI4MjUgOC41ODY5NCAzLjQ1NzY1IDguOTA1ODRDMy40NTYyNiA4Ljk0NzUxIDMuNDU1NTcgOC45ODkyOCAzLjQ1NTU3IDkuMDMxMTdWMTMuOTY4OEMzLjQ1NTU3IDE0LjE2OTMgMy40NzE1NyAxNC4zNjc1IDMuNTAyNjYgMTQuNTYxOEMzLjA0Nzc5IDE0Ljg3NzkgMi43NSAxNS40MDQxIDIuNzUgMTZDMi43NSAxNi45NjY1IDMuNTMzNSAxNy43NSA0LjUgMTcuNzVDNC45MTU1NiAxNy43NSA1LjI5NzI5IDE3LjYwNTIgNS41OTc0NSAxNy4zNjMyTDYuOTA1MTQgMTguMDc2M0w0Ljg1MTA1IDIxLjYyNDJDNC42NDM1MiAyMS45ODI3IDQuNzY1ODggMjIuNDQxNSA1LjEyNDM1IDIyLjY0OTFDNS40ODI4MiAyMi44NTY2IDUuOTQxNjYgMjIuNzM0MiA2LjE0OTE5IDIyLjM3NThMOC4yMjI1MiAxOC43OTQ2TDEwLjIwNDYgMTkuODc1M0MxMC4yMzcgMTkuODkzIDEwLjI2OTYgMTkuOTEwMiAxMC4zMDI0IDE5LjkyNjlDMTAuNDkzIDIwLjY4NyAxMS4xODA3IDIxLjI1IDEyIDIxLjI1QzEyLjgxOTMgMjEuMjUgMTMuNTA3MiAyMC42ODY5IDEzLjY5NzYgMTkuOTI2NkMxMy43MzAzIDE5LjkxIDEzLjc2MjggMTkuODkyOSAxMy43OTUgMTkuODc1M0wxNS43Nzc2IDE4Ljc5NDNMMTcuODUxMSAyMi4zNzU4QzE4LjA1ODYgMjIuNzM0MiAxOC41MTc0IDIyLjg1NjYgMTguODc1OSAyMi42NDkxQzE5LjIzNDQgMjIuNDQxNSAxOS4zNTY3IDIxLjk4MjcgMTkuMTQ5MiAyMS42MjQyTDE3LjA5NDkgMTguMDc2TDE4LjQwMjQgMTcuMzYzMUMxOC43MDI2IDE3LjYwNTEgMTkuMDg0NCAxNy43NSAxOS41IDE3Ljc1QzIwLjQ2NjUgMTcuNzUgMjEuMjUgMTYuOTY2NSAyMS4yNSAxNkMyMS4yNSAxNS40MDQgMjAuOTUyIDE0Ljg3NzYgMjAuNDk3IDE0LjU2MTZDMjAuNTI4IDE0LjM2NzMgMjAuNTQ0IDE0LjE2OTIgMjAuNTQ0IDEzLjk2ODhWOS4wMzExN0MyMC41NDQgOC45ODkzOCAyMC41NDMzIDguOTQ3NzEgMjAuNTQxOSA4LjkwNjE0QzIwLjk3MTYgOC41ODcyNiAyMS4yNSA4LjA3NjE1IDIxLjI1IDcuNUMyMS4yNSA2LjUzMzUgMjAuNDY2NSA1Ljc1IDE5LjUgNS43NUMxOS4yNjMgNS43NSAxOS4wMzcgNS43OTcxMiAxOC44MzA4IDUuODgyNDlDMTguNzUyNSA1LjgzMTg1IDE4LjY3MiA1Ljc4MzkxIDE4LjU4OTMgNS43Mzg4MUwxMy43OTUgMy4xMjQ2NEMxMy43NjI4IDMuMTA3MDMgMTMuNzMwMyAzLjA4OTk0IDEzLjY5NzYgMy4wNzMzNlpNMTAuNjM2OCA0LjU5NzQ1QzEwLjk1NzYgNC45OTU0IDExLjQ0OTEgNS4yNSAxMiA1LjI1QzEyLjU1MDkgNS4yNSAxMy4wNDIzIDQuOTk1NDcgMTMuMzYzMSA0LjU5NzZMMTcuODE1MiA3LjAyNTIyQzE3Ljc3MjcgNy4xNzYyIDE3Ljc1IDcuMzM1NDUgMTcuNzUgNy41QzE3Ljc1IDguMzA4NzYgMTguMjk4NiA4Ljk4OTM4IDE5LjA0NCA5LjE5VjEzLjk2ODhDMTkuMDQ0IDE0LjA4NjcgMTkuMDM0OCAxNC4yMDMyIDE5LjAxNjkgMTQuMzE3NUMxOC4yODUzIDE0LjUyNzIgMTcuNzUgMTUuMjAxMSAxNy43NSAxNkMxNy43NSAxNi4wMDM0IDE3Ljc1IDE2LjAwNjkgMTcuNzUgMTYuMDEwM0wxNi4zNDMxIDE2Ljc3NzRMMTMuNjUxNiAxMi4xMjg0QzEzLjg3MTUgMTEuODA3MiAxNC4wMDAxIDExLjQxODYgMTQuMDAwMSAxMUMxNC4wMDAxIDkuODk1NDMgMTMuMTA0NyA5IDEyLjAwMDEgOUMxMC44OTU2IDkgMTAuMDAwMSA5Ljg5NTQzIDEwLjAwMDEgMTFDMTAuMDAwMSAxMS40MTg2IDEwLjEyODcgMTEuODA3MiAxMC4zNDg2IDEyLjEyODRMNy42NTY5NCAxNi43Nzc3TDYuMjQ5OTcgMTYuMDEwNUM2LjI0OTk5IDE2LjAwNyA2LjI1IDE2LjAwMzUgNi4yNSAxNkM2LjI1IDE1LjIwMDkgNS43MTQ0NCAxNC41MjY5IDQuOTgyNjkgMTQuMzE3NEM0Ljk2NDc4IDE0LjIwMzEgNC45NTU1NyAxNC4wODY2IDQuOTU1NTcgMTMuOTY4OFY5LjE5MDExQzUuNzAxMTcgOC45ODk2MyA2LjI1IDguMzA4OTEgNi4yNSA3LjVDNi4yNSA3LjMzNTM4IDYuMjI3MjcgNy4xNzYwNiA2LjE4NDc3IDcuMDI1MDNMMTAuNjM2OCA0LjU5NzQ1Wk04Ljk3NDMyIDE3LjQ5NkwxMC42MzY4IDE4LjQwMjVDMTAuOTU3NiAxOC4wMDQ2IDExLjQ0OTEgMTcuNzUgMTIgMTcuNzVDMTIuNTUwOSAxNy43NSAxMy4wNDIzIDE4LjAwNDUgMTMuMzYzMSAxOC40MDI0TDE1LjAyNTggMTcuNDk1N0wxMi4zOTk4IDEyLjk2QzEyLjI3MDcgMTIuOTg2MiAxMi4xMzcgMTMgMTIuMDAwMSAxM0MxMS44NjMyIDEzIDExLjcyOTYgMTIuOTg2MiAxMS42MDA0IDEyLjk2TDguOTc0MzIgMTcuNDk2WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik05LjI1IDExQzkuMjUgOS40ODEyMiAxMC40ODEyIDguMjUgMTIgOC4yNUMxMy41MTg4IDguMjUgMTQuNzUgOS40ODEyMiAxNC43NSAxMUMxNC43NSAxMi41MTg4IDEzLjUxODggMTMuNzUgMTIgMTMuNzVDMTAuNDgxMiAxMy43NSA5LjI1IDEyLjUxODggOS4yNSAxMVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTkuODIxMTIgMTIuNjc3OUw0Ljg0NDUyIDIxLjYzNThDNC42NDMzNiAyMS45OTc5IDQuNzczODIgMjIuNDU0NSA1LjEzNTkgMjIuNjU1N0M1LjQ5Nzk5IDIyLjg1NjggNS45NTQ1OSAyMi43MjY0IDYuMTU1NzUgMjIuMzY0M0wxMS4wMzc3IDEzLjU3NjhDMTAuNTUyNCAxMy4zOTU1IDEwLjEzMjEgMTMuMDgxMSA5LjgyMTEyIDEyLjY3NzlaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMi45NjI2IDEzLjU3NjhMMTcuODQ0NSAyMi4zNjQzQzE4LjA0NTcgMjIuNzI2NCAxOC41MDIzIDIyLjg1NjggMTguODY0NCAyMi42NTU3QzE5LjIyNjUgMjIuNDU0NSAxOS4zNTY5IDIxLjk5NzkgMTkuMTU1OCAyMS42MzU4TDE0LjE3OSAxMi42Nzc3QzEzLjg2ODEgMTMuMDgwOSAxMy40NDc4IDEzLjM5NTQgMTIuOTYyNiAxMy41NzY4WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIgNS4yNUMxMS4wMzM1IDUuMjUgMTAuMjUgNC40NjY1IDEwLjI1IDMuNUMxMC4yNSAyLjUzMzUgMTEuMDMzNSAxLjc1IDEyIDEuNzVDMTIuOTY2NSAxLjc1IDEzLjc1IDIuNTMzNSAxMy43NSAzLjVDMTMuNzUgNC40NjY1IDEyLjk2NjUgNS4yNSAxMiA1LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMi43NSA3LjVDMi43NSA2LjUzMzUgMy41MzM1IDUuNzUgNC41IDUuNzVDNS40NjY1IDUuNzUgNi4yNSA2LjUzMzUgNi4yNSA3LjVDNi4yNSA4LjQ2NjUgNS40NjY1IDkuMjUgNC41IDkuMjVDMy41MzM1IDkuMjUgMi43NSA4LjQ2NjUgMi43NSA3LjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xOS41IDUuNzVDMTguNTMzNSA1Ljc1IDE3Ljc1IDYuNTMzNSAxNy43NSA3LjVDMTcuNzUgOC40NjY1IDE4LjUzMzUgOS4yNSAxOS41IDkuMjVDMjAuNDY2NSA5LjI1IDIxLjI1IDguNDY2NSAyMS4yNSA3LjVDMjEuMjUgNi41MzM1IDIwLjQ2NjUgNS43NSAxOS41IDUuNzVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xOS41IDE0LjI1QzE4LjUzMzUgMTQuMjUgMTcuNzUgMTUuMDMzNSAxNy43NSAxNkMxNy43NSAxNi45NjY1IDE4LjUzMzUgMTcuNzUgMTkuNSAxNy43NUMyMC40NjY1IDE3Ljc1IDIxLjI1IDE2Ljk2NjUgMjEuMjUgMTZDMjEuMjUgMTUuMDMzNSAyMC40NjY1IDE0LjI1IDE5LjUgMTQuMjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik00LjUgMTQuMjVDMy41MzM1IDE0LjI1IDIuNzUgMTUuMDMzNSAyLjc1IDE2QzIuNzUgMTYuOTY2NSAzLjUzMzUgMTcuNzUgNC41IDE3Ljc1QzUuNDY2NSAxNy43NSA2LjI1IDE2Ljk2NjUgNi4yNSAxNkM2LjI1IDE1LjAzMzUgNS40NjY1IDE0LjI1IDQuNSAxNC4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEwLjI1IDE5LjVDMTAuMjUgMjAuNDY2NSAxMS4wMzM1IDIxLjI1IDEyIDIxLjI1QzEyLjk2NjUgMjEuMjUgMTMuNzUgMjAuNDY2NSAxMy43NSAxOS41QzEzLjc1IDE4LjUzMzUgMTIuOTY2NSAxNy43NSAxMiAxNy43NUMxMS4wMzM1IDE3Ljc1IDEwLjI1IDE4LjUzMzUgMTAuMjUgMTkuNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTEwLjYzNjYgNC41OTcxOEMxMC4zOTQ4IDQuMjk3MDUgMTAuMjUgMy45MTUzOSAxMC4yNSAzLjQ5OTkyQzEwLjI1IDMuMzUyNTcgMTAuMjY4MiAzLjIwOTQ3IDEwLjMwMjUgMy4wNzI3NUMxMC4yNjk1IDMuMDg5NSAxMC4yMzY3IDMuMTA2NzcgMTAuMjA0MSAzLjEyNDU2TDUuNDA5ODQgNS43Mzg3M0M1LjMyNzI2IDUuNzgzNzYgNS4yNDY4MiA1LjgzMTYzIDUuMTY4NjEgNS44ODIxOUM1LjY2MDExIDYuMDg1NTUgNi4wMzg4IDYuNTA2MzggNi4xODQ3MSA3LjAyNDcyTDEwLjYzNjYgNC41OTcxOFpNNC45NTUwOCA5LjE5MDE3QzQuODA5OTcgOS4yMjkxNCA0LjY1NzQxIDkuMjQ5OTIgNC41IDkuMjQ5OTJDNC4xMDkyNSA5LjI0OTkyIDMuNzQ4NDIgOS4xMjE4NiAzLjQ1NzE4IDguOTA1NDFDMy40NTU3OCA4Ljk0NzE5IDMuNDU1MDggOC45ODkwOSAzLjQ1NTA4IDkuMDMxMDlWMTMuOTY4N0MzLjQ1NTA4IDE0LjE2OTQgMy40NzExIDE0LjM2NzYgMy41MDIyMyAxNC41NjJDMy43ODUyNiAxNC4zNjUzIDQuMTI5MTYgMTQuMjQ5OSA0LjUgMTQuMjQ5OUM0LjY2NzI0IDE0LjI0OTkgNC44MjkwMSAxNC4yNzM0IDQuOTgyMTggMTQuMzE3MkM0Ljk2NDI5IDE0LjIwMyA0Ljk1NTA4IDE0LjA4NjUgNC45NTUwOCAxMy45Njg3VjkuMTkwMTdaTTYuMjQ5OTcgMTYuMDEwN0M2LjI0NjY4IDE2LjU1NzQgNS45OTI3MyAxNy4wNDQ2IDUuNTk3MjYgMTcuMzYzM0wxMC4yMDQxIDE5Ljg3NTNDMTAuMjM2NyAxOS44OTMgMTAuMjY5NSAxOS45MTAzIDEwLjMwMjUgMTkuOTI3MUMxMC4yNjgyIDE5Ljc5MDQgMTAuMjUgMTkuNjQ3MyAxMC4yNSAxOS40OTk5QzEwLjI1IDE5LjA4NDQgMTAuMzk0OCAxOC43MDI4IDEwLjYzNjcgMTguNDAyNkw2LjI0OTk3IDE2LjAxMDdaTTEzLjM2MjkgMTguNDAyMUMxMy42MDUgMTguNzAyMyAxMy43NSAxOS4wODQyIDEzLjc1IDE5LjQ5OTlDMTMuNzUgMTkuNjQ3IDEzLjczMTkgMTkuNzg5OCAxMy42OTc3IDE5LjkyNjNDMTMuNzMwMiAxOS45MDk4IDEzLjc2MjUgMTkuODkyOCAxMy43OTQ1IDE5Ljg3NTNMMTguNDAyMiAxNy4zNjI4QzE4LjAwNjggMTcuMDQ0IDE3Ljc1MzEgMTYuNTU2NiAxNy43NSAxNi4wMDk5TDEzLjM2MjkgMTguNDAyMVpNMTkuMDE2NCAxNC4zMTc2QzE5LjE3IDE0LjI3MzUgMTkuMzMyMiAxNC4yNDk5IDE5LjUgMTQuMjQ5OUMxOS44NzAzIDE0LjI0OTkgMjAuMjEzNyAxNC4zNjQ5IDIwLjQ5NjUgMTQuNTYxMkMyMC41Mjc2IDE0LjM2NzEgMjAuNTQzNSAxNC4xNjkxIDIwLjU0MzUgMTMuOTY4N1Y5LjAzMTA5QzIwLjU0MzUgOC45ODk0MiAyMC41NDI4IDguOTQ3ODcgMjAuNTQxNSA4LjkwNjQyQzIwLjI1MDUgOS4xMjIyNSAxOS44OTAxIDkuMjQ5OTIgMTkuNSA5LjI0OTkyQzE5LjM0MjEgOS4yNDk5MiAxOS4xODkxIDkuMjI5MDEgMTkuMDQzNSA5LjE4OTc5VjEzLjk2ODdDMTkuMDQzNSAxNC4wODY3IDE5LjAzNDMgMTQuMjAzMiAxOS4wMTY0IDE0LjMxNzZaTTE3LjgxNTEgNy4wMjUzN0MxNy45NjA4IDYuNTA3MDMgMTguMzM5MiA2LjA4NjEyIDE4LjgzMDUgNS44ODI1NEMxOC43NTIyIDUuODMxODUgMTguNjcxNSA1Ljc4Mzg2IDE4LjU4ODggNS43Mzg3M0wxMy43OTQ1IDMuMTI0NTZDMTMuNzYyNSAzLjEwNzA2IDEzLjczMDIgMy4wOTAwNiAxMy42OTc3IDMuMDczNTZDMTMuNzMxOSAzLjIxMDAzIDEzLjc1IDMuMzUyODYgMTMuNzUgMy40OTk5MkMxMy43NSAzLjkxNTYzIDEzLjYwNSA0LjI5NzQ5IDEzLjM2MjkgNC41OTc3MUwxNy44MTUxIDcuMDI1MzdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNCAxMUMxNCAxMi4xMDQ2IDEzLjEwNDYgMTMgMTIgMTNDMTAuODk1NCAxMyAxMCAxMi4xMDQ2IDEwIDExQzEwIDkuODk1NDMgMTAuODk1NCA5IDEyIDkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjAuNSA3LjVDMjAuNSA4LjA1MjI4IDIwLjA1MjMgOC41IDE5LjUgOC41QzE4Ljk0NzcgOC41IDE4LjUgOC4wNTIyOCAxOC41IDcuNUMxOC41IDYuOTQ3NzIgMTguOTQ3NyA2LjUgMTkuNSA2LjVDMjAuMDUyMyA2LjUgMjAuNSA2Ljk0NzcyIDIwLjUgNy41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNMjAuNSAxNkMyMC41IDE2LjU1MjMgMjAuMDUyMyAxNyAxOS41IDE3QzE4Ljk0NzcgMTcgMTguNSAxNi41NTIzIDE4LjUgMTZDMTguNSAxNS40NDc3IDE4Ljk0NzcgMTUgMTkuNSAxNUMyMC4wNTIzIDE1IDIwLjUgMTUuNDQ3NyAyMC41IDE2WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNNS41IDcuNUM1LjUgOC4wNTIyOCA1LjA1MjI4IDguNSA0LjUgOC41QzMuOTQ3NzIgOC41IDMuNSA4LjA1MjI4IDMuNSA3LjVDMy41IDYuOTQ3NzIgMy45NDc3MiA2LjUgNC41IDYuNUM1LjA1MjI4IDYuNSA1LjUgNi45NDc3MiA1LjUgNy41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNNS41IDE2QzUuNSAxNi41NTIzIDUuMDUyMjggMTcgNC41IDE3QzMuOTQ3NzIgMTcgMy41IDE2LjU1MjMgMy41IDE2QzMuNSAxNS40NDc3IDMuOTQ3NzIgMTUgNC41IDE1QzUuMDUyMjggMTUgNS41IDE1LjQ0NzcgNS41IDE2WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNMTIgMi41QzEyLjU1MjMgMi41IDEzIDIuOTQ3NzIgMTMgMy41QzEzIDQuMDUyMjggMTIuNTUyMyA0LjUgMTIgNC41QzExLjQ0NzcgNC41IDExIDQuMDUyMjggMTEgMy41QzExIDIuOTQ3NzIgMTEuNDQ3NyAyLjUgMTIgMi41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNMTIgMTguNUMxMi41NTIzIDE4LjUgMTMgMTguOTQ3NyAxMyAxOS41QzEzIDIwLjA1MjMgMTIuNTUyMyAyMC41IDEyIDIwLjVDMTEuNDQ3NyAyMC41IDExIDIwLjA1MjMgMTEgMTkuNUMxMSAxOC45NDc3IDExLjQ0NzcgMTguNSAxMiAxOC41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNMTguNTAwMSAyMkwxNS4xNjY3IDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwLjUgMTNMNS41IDIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwLjU2MzggMy43ODMxMUMxMS40NTkxIDMuMjk0OTUgMTIuNTQxIDMuMjk0OTUgMTMuNDM2MiAzLjc4MzExTDE4LjIzMDUgNi4zOTcyOEMxOS4xOTQ0IDYuOTIyOTIgMTkuNzk0MyA3LjkzMzE5IDE5Ljc5NDMgOS4wMzExN1YxMy45Njg4QzE5Ljc5NDMgMTUuMDY2OCAxOS4xOTQ0IDE2LjA3NzEgMTguMjMwNSAxNi42MDI3TDEzLjQzNjIgMTkuMjE2OUMxMi41NDEgMTkuNzA1IDExLjQ1OTEgMTkuNzA1IDEwLjU2MzggMTkuMjE2OUw1Ljc2OTYyIDE2LjYwMjdDNC44MDU2MyAxNi4wNzcxIDQuMjA1ODEgMTUuMDY2OCA0LjIwNTgxIDEzLjk2ODhWOS4wMzExN0M0LjIwNTgxIDcuOTMzMTggNC44MDU2MyA2LjkyMjkyIDUuNzY5NjIgNi4zOTcyOEwxMC41NjM4IDMuNzgzMTFaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+Cjwvc3ZnPgo=) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iMTEiIHI9IjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTIwLjUgNy41QzIwLjUgOC4wNTIyOCAyMC4wNTIzIDguNSAxOS41IDguNUMxOC45NDc3IDguNSAxOC41IDguMDUyMjggMTguNSA3LjVDMTguNSA2Ljk0NzcyIDE4Ljk0NzcgNi41IDE5LjUgNi41QzIwLjA1MjMgNi41IDIwLjUgNi45NDc3MiAyMC41IDcuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTIwLjUgMTZDMjAuNSAxNi41NTIzIDIwLjA1MjMgMTcgMTkuNSAxN0MxOC45NDc3IDE3IDE4LjUgMTYuNTUyMyAxOC41IDE2QzE4LjUgMTUuNDQ3NyAxOC45NDc3IDE1IDE5LjUgMTVDMjAuMDUyMyAxNSAyMC41IDE1LjQ0NzcgMjAuNSAxNloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTUuNSA3LjVDNS41IDguMDUyMjggNS4wNTIyOCA4LjUgNC41IDguNUMzLjk0NzcyIDguNSAzLjUgOC4wNTIyOCAzLjUgNy41QzMuNSA2Ljk0NzcyIDMuOTQ3NzIgNi41IDQuNSA2LjVDNS4wNTIyOCA2LjUgNS41IDYuOTQ3NzIgNS41IDcuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTUuNSAxNkM1LjUgMTYuNTUyMyA1LjA1MjI4IDE3IDQuNSAxN0MzLjk0NzcyIDE3IDMuNSAxNi41NTIzIDMuNSAxNkMzLjUgMTUuNDQ3NyAzLjk0NzcyIDE1IDQuNSAxNUM1LjA1MjI4IDE1IDUuNSAxNS40NDc3IDUuNSAxNloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTEyIDIuNUMxMi41NTIzIDIuNSAxMyAyLjk0NzcyIDEzIDMuNUMxMyA0LjA1MjI4IDEyLjU1MjMgNC41IDEyIDQuNUMxMS40NDc3IDQuNSAxMSA0LjA1MjI4IDExIDMuNUMxMSAyLjk0NzcyIDExLjQ0NzcgMi41IDEyIDIuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTEyIDE4LjVDMTIuNTUyMyAxOC41IDEzIDE4Ljk0NzcgMTMgMTkuNUMxMyAyMC4wNTIzIDEyLjU1MjMgMjAuNSAxMiAyMC41QzExLjQ0NzcgMjAuNSAxMSAyMC4wNTIzIDExIDE5LjVDMTEgMTguOTQ3NyAxMS40NDc3IDE4LjUgMTIgMTguNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTEzLjUgMTNMMTguNSAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMC41IDEzTDUuNSAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMC41NjM2IDMuNzgzMTFDMTEuNDU4OCAzLjI5NDk1IDEyLjU0MDcgMy4yOTQ5NSAxMy40MzYgMy43ODMxMUwxOC4yMzAyIDYuMzk3MjhDMTkuMTk0MiA2LjkyMjkyIDE5Ljc5NCA3LjkzMzE5IDE5Ljc5NCA5LjAzMTE3VjEzLjk2ODhDMTkuNzk0IDE1LjA2NjggMTkuMTk0MiAxNi4wNzcxIDE4LjIzMDIgMTYuNjAyN0wxMy40MzYgMTkuMjE2OUMxMi41NDA3IDE5LjcwNSAxMS40NTg4IDE5LjcwNSAxMC41NjM2IDE5LjIxNjlMNS43NjkzNyAxNi42MDI3QzQuODA1MzkgMTYuMDc3MSA0LjIwNTU3IDE1LjA2NjggNC4yMDU1NyAxMy45Njg4VjkuMDMxMTdDNC4yMDU1NyA3LjkzMzE4IDQuODA1MzkgNi45MjI5MiA1Ljc2OTM3IDYuMzk3MjhMMTAuNTYzNiAzLjc4MzExWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iMTEiIHI9IjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTIwLjUgNy41QzIwLjUgOC4wNTIyOCAyMC4wNTIzIDguNSAxOS41IDguNUMxOC45NDc3IDguNSAxOC41IDguMDUyMjggMTguNSA3LjVDMTguNSA2Ljk0NzcyIDE4Ljk0NzcgNi41IDE5LjUgNi41QzIwLjA1MjMgNi41IDIwLjUgNi45NDc3MiAyMC41IDcuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTIwLjUgMTZDMjAuNSAxNi41NTIzIDIwLjA1MjMgMTcgMTkuNSAxN0MxOC45NDc3IDE3IDE4LjUgMTYuNTUyMyAxOC41IDE2QzE4LjUgMTUuNDQ3NyAxOC45NDc3IDE1IDE5LjUgMTVDMjAuMDUyMyAxNSAyMC41IDE1LjQ0NzcgMjAuNSAxNloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTUuNSA3LjVDNS41IDguMDUyMjggNS4wNTIyOCA4LjUgNC41IDguNUMzLjk0NzcyIDguNSAzLjUgOC4wNTIyOCAzLjUgNy41QzMuNSA2Ljk0NzcyIDMuOTQ3NzIgNi41IDQuNSA2LjVDNS4wNTIyOCA2LjUgNS41IDYuOTQ3NzIgNS41IDcuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTUuNSAxNkM1LjUgMTYuNTUyMyA1LjA1MjI4IDE3IDQuNSAxN0MzLjk0NzcyIDE3IDMuNSAxNi41NTIzIDMuNSAxNkMzLjUgMTUuNDQ3NyAzLjk0NzcyIDE1IDQuNSAxNUM1LjA1MjI4IDE1IDUuNSAxNS40NDc3IDUuNSAxNloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTEyIDIuNUMxMi41NTIzIDIuNSAxMyAyLjk0NzcyIDEzIDMuNUMxMyA0LjA1MjI4IDEyLjU1MjMgNC41IDEyIDQuNUMxMS40NDc3IDQuNSAxMSA0LjA1MjI4IDExIDMuNUMxMSAyLjk0NzcyIDExLjQ0NzcgMi41IDEyIDIuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTEyIDE4LjVDMTIuNTUyMyAxOC41IDEzIDE4Ljk0NzcgMTMgMTkuNUMxMyAyMC4wNTIzIDEyLjU1MjMgMjAuNSAxMiAyMC41QzExLjQ0NzcgMjAuNSAxMSAyMC4wNTIzIDExIDE5LjVDMTEgMTguOTQ3NyAxMS40NDc3IDE4LjUgMTIgMTguNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTMuNSAxM0wxOC41IDIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTAuNSAxM0w1LjUgMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xMC41NjM4IDMuNzgzMTFDMTEuNDU5MSAzLjI5NDk1IDEyLjU0MSAzLjI5NDk1IDEzLjQzNjIgMy43ODMxMUwxOC4yMzA1IDYuMzk3MjhDMTkuMTk0NCA2LjkyMjkyIDE5Ljc5NDMgNy45MzMxOSAxOS43OTQzIDkuMDMxMTdWMTMuOTY4OEMxOS43OTQzIDE1LjA2NjggMTkuMTk0NCAxNi4wNzcxIDE4LjIzMDUgMTYuNjAyN0wxMy40MzYyIDE5LjIxNjlDMTIuNTQxIDE5LjcwNSAxMS40NTkxIDE5LjcwNSAxMC41NjM4IDE5LjIxNjlMNS43Njk2MiAxNi42MDI3QzQuODA1NjMgMTYuMDc3MSA0LjIwNTgxIDE1LjA2NjggNC4yMDU4MSAxMy45Njg4VjkuMDMxMTdDNC4yMDU4MSA3LjkzMzE4IDQuODA1NjMgNi45MjI5MiA1Ljc2OTYyIDYuMzk3MjhMMTAuNTYzOCAzLjc4MzExWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTMuNjk3NiAzLjA3MzI1QzEzLjUwNzEgMi4zMTMwMSAxMi44MTkzIDEuNzUgMTIgMS43NUMxMS4xODA3IDEuNzUgMTAuNDkyOSAyLjMxMzAyIDEwLjMwMjQgMy4wNzMyNkMxMC4yNjk3IDMuMDg5ODggMTAuMjM3MSAzLjEwNzAxIDEwLjIwNDggMy4xMjQ2NUw1LjQxMDU0IDUuNzM4ODNDNS4zMjc4NyA1Ljc4MzkgNS4yNDczNCA1LjgzMTgzIDUuMTY5MDYgNS44ODI0NUM0Ljk2Mjk0IDUuNzk3MSA0LjczNjk3IDUuNzUgNC41IDUuNzVDMy41MzM1IDUuNzUgMi43NSA2LjUzMzUgMi43NSA3LjVDMi43NSA4LjA3NjA2IDMuMDI4MzQgOC41ODcxMSAzLjQ1Nzg2IDguOTA2QzMuNDU2NDggOC45NDc2MiAzLjQ1NTc4IDguOTg5MzUgMy40NTU3OCA5LjAzMTE4VjEzLjk2ODhDMy40NTU3OCAxNC4xNjkzIDMuNDcxNzggMTQuMzY3NCAzLjUwMjg2IDE0LjU2MTdDMy4wNDc4NyAxNC44Nzc3IDIuNzUgMTUuNDA0MSAyLjc1IDE2QzIuNzUgMTYuOTY2NSAzLjUzMzUgMTcuNzUgNC41IDE3Ljc1QzQuOTE1NTkgMTcuNzUgNS4yOTczNSAxNy42MDUxIDUuNTk3NTMgMTcuMzYzMUw2Ljg0MTI4IDE4LjA0MTNMNC44NDQzNyAyMS42MzU4QzQuNjQzMjEgMjEuOTk3OSA0Ljc3MzY3IDIyLjQ1NDUgNS4xMzU3NSAyMi42NTU2QzUuNDk3ODQgMjIuODU2OCA1Ljk1NDQ0IDIyLjcyNjMgNi4xNTU2IDIyLjM2NDJMOC4xNTgyNiAxOC43NTk0TDEwLjIwNDggMTkuODc1NEMxMC4yMzcxIDE5Ljg5MyAxMC4yNjk3IDE5LjkxMDEgMTAuMzAyNCAxOS45MjY3QzEwLjQ5MjkgMjAuNjg3IDExLjE4MDcgMjEuMjUgMTIgMjEuMjVDMTIuODE5MyAyMS4yNSAxMy41MDcxIDIwLjY4NyAxMy42OTc2IDE5LjkyNjhDMTMuNzMwMyAxOS45MTAxIDEzLjc2MjkgMTkuODkzIDEzLjc5NTMgMTkuODc1NEwxNS44NDE3IDE4Ljc1OTVMMTcuODQ0NCAyMi4zNjQyQzE4LjA0NTYgMjIuNzI2MyAxOC41MDIyIDIyLjg1NjggMTguODY0MiAyMi42NTU2QzE5LjIyNjMgMjIuNDU0NSAxOS4zNTY4IDIxLjk5NzkgMTkuMTU1NiAyMS42MzU4TDE3LjE1ODcgMTguMDQxM0wxOC40MDI1IDE3LjM2MzFDMTguNzAyNyAxNy42MDUxIDE5LjA4NDQgMTcuNzUgMTkuNSAxNy43NUMyMC40NjY1IDE3Ljc1IDIxLjI1IDE2Ljk2NjUgMjEuMjUgMTZDMjEuMjUgMTUuNDA0MSAyMC45NTIxIDE0Ljg3NzcgMjAuNDk3MiAxNC41NjE3QzIwLjUyODIgMTQuMzY3NCAyMC41NDQyIDE0LjE2OTMgMjAuNTQ0MiAxMy45Njg4VjkuMDMxMThDMjAuNTQ0MiA4Ljk4OTM0IDIwLjU0MzUgOC45NDc2MSAyMC41NDIyIDguOTA1OTlDMjAuOTcxNyA4LjU4NzEgMjEuMjUgOC4wNzYwNSAyMS4yNSA3LjVDMjEuMjUgNi41MzM1IDIwLjQ2NjUgNS43NSAxOS41IDUuNzVDMTkuMjYzIDUuNzUgMTkuMDM3MSA1Ljc5NzEgMTguODMxIDUuODgyNDVDMTguNzUyNyA1LjgzMTgzIDE4LjY3MjEgNS43ODM5IDE4LjU4OTUgNS43Mzg4MkwxMy43OTUyIDMuMTI0NjVDMTMuNzYyOSAzLjEwNzAxIDEzLjczMDMgMy4wODk4NyAxMy42OTc2IDMuMDczMjVaTTEwLjYzNjkgNC41OTc1NEMxMC45NTc3IDQuOTk1NDQgMTEuNDQ5MSA1LjI1IDEyIDUuMjVDMTIuNTUwOSA1LjI1IDEzLjA0MjQgNC45OTU0NCAxMy4zNjMxIDQuNTk3NTNMMTcuODE1MiA3LjAyNTEzQzE3Ljc3MjcgNy4xNzYxNCAxNy43NSA3LjMzNTQyIDE3Ljc1IDcuNUMxNy43NSA4LjMwODg0IDE4LjI5ODcgOC45ODk1MSAxOS4wNDQyIDkuMTkwMDZWMTMuOTY4OEMxOS4wNDQyIDE0LjA4NjcgMTkuMDM1IDE0LjIwMzIgMTkuMDE3MSAxNC4zMTc1QzE4LjI4NTUgMTQuNTI3MSAxNy43NSAxNS4yMDEgMTcuNzUgMTZDMTcuNzUgMTYuMDAzNSAxNy43NSAxNi4wMDY5IDE3Ljc1IDE2LjAxMDRMMTYuNDMwMiAxNi43MzAxTDE0LjE3OSAxMi42Nzc4QzE0LjUzNyAxMi4yMTM2IDE0Ljc1IDExLjYzMTYgMTQuNzUgMTFDMTQuNzUgOS40ODEyMiAxMy41MTg4IDguMjUgMTIgOC4yNUMxMC40ODEyIDguMjUgOS4yNSA5LjQ4MTIyIDkuMjUgMTFDOS4yNSAxMS42MzE2IDkuNDYyOTYgMTIuMjEzNiA5LjgyMDk5IDEyLjY3NzhMNy41Njk3NyAxNi43M0w2LjI0OTk3IDE2LjAxMDRDNi4yNDk5OSAxNi4wMDY5IDYuMjUgMTYuMDAzNSA2LjI1IDE2QzYuMjUgMTUuMjAxIDUuNzE0NTUgMTQuNTI3MSA0Ljk4MjkxIDE0LjMxNzVDNC45NjUgMTQuMjAzMiA0Ljk1NTc4IDE0LjA4NjcgNC45NTU3OCAxMy45Njg4VjkuMTkwMDZDNS43MDEyNyA4Ljk4OTUgNi4yNSA4LjMwODgzIDYuMjUgNy41QzYuMjUgNy4zMzU0MiA2LjIyNzI4IDcuMTc2MTQgNi4xODQ4MSA3LjAyNTE0TDEwLjYzNjkgNC41OTc1NFpNMTUuMTEzMyAxNy40NDgyTDEyLjk2MjUgMTMuNTc2OUMxMi42NjI5IDEzLjY4ODggMTIuMzM4NiAxMy43NSAxMiAxMy43NUMxMS42NjE0IDEzLjc1IDExLjMzNzEgMTMuNjg4OCAxMS4wMzc1IDEzLjU3NjlMOC44ODY3NSAxNy40NDgyTDEwLjYzNjkgMTguNDAyNUMxMC45NTc3IDE4LjAwNDYgMTEuNDQ5MSAxNy43NSAxMiAxNy43NUMxMi41NTA5IDE3Ljc1IDEzLjA0MjQgMTguMDA0NiAxMy4zNjMxIDE4LjQwMjVMMTUuMTEzMyAxNy40NDgyWk0xMC43NSAxMUMxMC43NSAxMC4zMDk2IDExLjMwOTYgOS43NSAxMiA5Ljc1QzEyLjY5MDQgOS43NSAxMy4yNSAxMC4zMDk2IDEzLjI1IDExQzEzLjI1IDExLjY5MDQgMTIuNjkwNCAxMi4yNSAxMiAxMi4yNUMxMS4zMDk2IDEyLjI1IDEwLjc1IDExLjY5MDQgMTAuNzUgMTFaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) Outline
 */
const FerrisWheel: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props} weights={weights} />
))

FerrisWheel.displayName = "FerrisWheel"
export default FerrisWheel
