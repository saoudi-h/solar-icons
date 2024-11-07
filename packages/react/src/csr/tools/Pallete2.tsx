/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import IconBase from "../../lib/IconBase"
import weights from "../../defs/tools/Pallete2"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTAuODQ2OCAyMS45MzQyQzUuODY3MTMgMjEuMzYyNCAyIDE3LjEzMjggMiAxMkMyIDYuNDc3MTUgNi40NzcxNSAyIDEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJDMjIgMTcuMTU2NSAxOC43MTczIDE2LjczMjUgMTUuOTEzNSAxNi4zNzAzQzE0LjI5NjQgMTYuMTYxNCAxMi44Mzg2IDE1Ljk3MzEgMTIuMjYxOSAxNi44ODhDMTEuODY3NCAxNy41MTM2IDEyLjI5MzggMTguMjkzOCAxMi44MTY4IDE4LjgxNjhDMTMuNDcwMyAxOS40NzAzIDEzLjQ3MDMgMjAuNTI5NyAxMi44MTY4IDIxLjE4MzJDMTIuMjkzOCAyMS43MDYyIDExLjU4MTYgMjIuMDE4NiAxMC44NDY4IDIxLjkzNDJaTTExLjA4NSA2Ljk5OTc2QzExLjA4NSA3LjgyODE4IDEwLjQxMzQgOC40OTk3NiA5LjU4NSA4LjQ5OTc2QzguNzU2NTggOC40OTk3NiA4LjA4NSA3LjgyODE4IDguMDg1IDYuOTk5NzZDOC4wODUgNi4xNzEzMyA4Ljc1NjU4IDUuNDk5NzYgOS41ODUgNS40OTk3NkMxMC40MTM0IDUuNDk5NzYgMTEuMDg1IDYuMTcxMzMgMTEuMDg1IDYuOTk5NzZaTTYuNSAxM0M3LjMyODQzIDEzIDggMTIuMzI4NCA4IDExLjVDOCAxMC42NzE2IDcuMzI4NDMgOS45OTk5OCA2LjUgOS45OTk5OEM1LjY3MTU3IDkuOTk5OTggNSAxMC42NzE2IDUgMTEuNUM1IDEyLjMyODQgNS42NzE1NyAxMyA2LjUgMTNaTTE3LjUgMTNDMTguMzI4NCAxMyAxOSAxMi4zMjg0IDE5IDExLjVDMTkgMTAuNjcxNiAxOC4zMjg0IDkuOTk5OTggMTcuNSA5Ljk5OTk4QzE2LjY3MTYgOS45OTk5OCAxNiAxMC42NzE2IDE2IDExLjVDMTYgMTIuMzI4NCAxNi42NzE2IDEzIDE3LjUgMTNaTTE0LjUgOC40OTk5OEMxNS4zMjg0IDguNDk5OTggMTYgNy44Mjg0MSAxNiA2Ljk5OTk4QzE2IDYuMTcxNTYgMTUuMzI4NCA1LjQ5OTk4IDE0LjUgNS40OTk5OEMxMy42NzE2IDUuNDk5OTggMTMgNi4xNzE1NiAxMyA2Ljk5OTk4QzEzIDcuODI4NDEgMTMuNjcxNiA4LjQ5OTk4IDE0LjUgOC40OTk5OFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEwLjg0NjggMjEuOTM0MkM1Ljg2NzEzIDIxLjM2MjQgMiAxNy4xMzI4IDIgMTJDMiA2LjQ3NzE1IDYuNDc3MTUgMiAxMiAyQzE3LjUyMjggMiAyMiA2LjQ3NzE1IDIyIDEyQzIyIDE3LjE1NjUgMTguNzE3MyAxNi43MzI1IDE1LjkxMzUgMTYuMzcwM0MxNC4yOTY0IDE2LjE2MTQgMTIuODM4NiAxNS45NzMxIDEyLjI2MTkgMTYuODg4QzExLjg2NzQgMTcuNTEzNiAxMi4yOTM4IDE4LjI5MzggMTIuODE2OCAxOC44MTY4QzEzLjQ3MDMgMTkuNDcwMyAxMy40NzAzIDIwLjUyOTcgMTIuODE2OCAyMS4xODMyQzEyLjI5MzggMjEuNzA2MiAxMS41ODE2IDIyLjAxODYgMTAuODQ2OCAyMS45MzQyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTEuMDg1IDdDMTEuMDg1IDcuODI4NDMgMTAuNDEzNCA4LjUgOS41ODUgOC41QzguNzU2NTggOC41IDguMDg1IDcuODI4NDMgOC4wODUgN0M4LjA4NSA2LjE3MTU3IDguNzU2NTggNS41IDkuNTg1IDUuNUMxMC40MTM0IDUuNSAxMS4wODUgNi4xNzE1NyAxMS4wODUgN1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTYuNSAxMy4wMDAyQzcuMzI4NDMgMTMuMDAwMiA4IDEyLjMyODcgOCAxMS41MDAyQzggMTAuNjcxOCA3LjMyODQzIDEwLjAwMDIgNi41IDEwLjAwMDJDNS42NzE1NyAxMC4wMDAyIDUgMTAuNjcxOCA1IDExLjUwMDJDNSAxMi4zMjg3IDUuNjcxNTcgMTMuMDAwMiA2LjUgMTMuMDAwMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE3LjUgMTMuMDAwMkMxOC4zMjg0IDEzLjAwMDIgMTkgMTIuMzI4NyAxOSAxMS41MDAyQzE5IDEwLjY3MTggMTguMzI4NCAxMC4wMDAyIDE3LjUgMTAuMDAwMkMxNi42NzE2IDEwLjAwMDIgMTYgMTAuNjcxOCAxNiAxMS41MDAyQzE2IDEyLjMyODcgMTYuNjcxNiAxMy4wMDAyIDE3LjUgMTMuMDAwMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE0LjUgOC41MDAyM0MxNS4zMjg0IDguNTAwMjMgMTYgNy44Mjg2NiAxNiA3LjAwMDIzQzE2IDYuMTcxOCAxNS4zMjg0IDUuNTAwMjMgMTQuNSA1LjUwMDIzQzEzLjY3MTYgNS41MDAyMyAxMyA2LjE3MTggMTMgNy4wMDAyM0MxMyA3LjgyODY2IDEzLjY3MTYgOC41MDAyMyAxNC41IDguNTAwMjNaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik03IDMuMzQxMzJDOC40NzA4NyAyLjQ4ODI0IDEwLjE3ODYgMiAxMiAyQzE3LjUyMjggMiAyMiA2LjQ4ODg0IDIyIDEyLjAyNjFDMjIgMjAuMTc4IDEzLjgzODUgMTQuNDE5MiAxMi4yNjE5IDE2LjkyNjhDMTEuODY3NCAxNy41NTQxIDEyLjI5MzggMTguMzM2NCAxMi44MTY4IDE4Ljg2MDdDMTMuNDcwMyAxOS41MTU5IDEzLjQ3MDMgMjAuNTc4MSAxMi44MTY4IDIxLjIzMzNDMTIuMjkzOCAyMS43NTc2IDExLjU4MTYgMjIuMDcwOSAxMC44NDY4IDIxLjk4NjNDNS44NjcxMyAyMS40MTMgMiAxNy4xNzIzIDIgMTIuMDI2MUMyIDEwLjE5NDUgMi40ODk4NSA4LjQ3NzY1IDMuMzQ1MzcgNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjE3LjUiIGN5PSIxMS41IiByPSIxLjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPGNpcmNsZSBjeD0iNi41IiBjeT0iMTEuNSIgcj0iMS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIGQ9Ik0xMS4wODUgNi45OTk3NkMxMS4wODUgNy44MjgxOCAxMC40MTM0IDguNDk5NzYgOS41ODQ5NiA4LjQ5OTc2QzguNzU2NTMgOC40OTk3NiA4LjA4NDk2IDcuODI4MTggOC4wODQ5NiA2Ljk5OTc2QzguMDg0OTYgNi4xNzEzMyA4Ljc1NjUzIDUuNDk5NzYgOS41ODQ5NiA1LjQ5OTc2QzEwLjQxMzQgNS40OTk3NiAxMS4wODUgNi4xNzEzMyAxMS4wODUgNi45OTk3NloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTE2IDdDMTYgNy44Mjg0MyAxNS4zMjg0IDguNSAxNC41IDguNUMxMy42NzE2IDguNSAxMyA3LjgyODQzIDEzIDdDMTMgNi4xNzE1NyAxMy42NzE2IDUuNSAxNC41IDUuNUMxNS4zMjg0IDUuNSAxNiA2LjE3MTU3IDE2IDdaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+Cjwvc3ZnPgo=) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDEyLjAyNjFDMiAxNy4xNzIzIDUuODY3MTMgMjEuNDEzIDEwLjg0NjggMjEuOTg2M0MxMS41ODE2IDIyLjA3MDkgMTIuMjkzOCAyMS43NTc2IDEyLjgxNjggMjEuMjMzM0MxMy40NzAzIDIwLjU3ODEgMTMuNDcwMyAxOS41MTU5IDEyLjgxNjggMTguODYwN0MxMi4yOTM4IDE4LjMzNjQgMTEuODY3NCAxNy41NTQxIDEyLjI2MTkgMTYuOTI2OEMxMy44Mzg1IDE0LjQxOTIgMjIgMjAuMTc4IDIyIDEyLjAyNjFDMjIgNi40ODg4NCAxNy41MjI4IDIgMTIgMkM2LjQ3NzE1IDIgMiA2LjQ4ODg0IDIgMTIuMDI2MVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPGNpcmNsZSBjeD0iMTcuNSIgY3k9IjExLjUiIHI9IjAuNzUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPGNpcmNsZSBjeD0iNi41IiBjeT0iMTEuNSIgcj0iMC43NSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNMTAuMzM1IDYuOTk5NzZDMTAuMzM1IDcuNDEzOTcgOS45OTkxNyA3Ljc0OTc2IDkuNTg0OTYgNy43NDk3NkM5LjE3MDc1IDcuNzQ5NzYgOC44MzQ5NiA3LjQxMzk3IDguODM0OTYgNi45OTk3NkM4LjgzNDk2IDYuNTg1NTQgOS4xNzA3NSA2LjI0OTc2IDkuNTg0OTYgNi4yNDk3NkM5Ljk5OTE3IDYuMjQ5NzYgMTAuMzM1IDYuNTg1NTQgMTAuMzM1IDYuOTk5NzZaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIGQ9Ik0xNS4yNSA3QzE1LjI1IDcuNDE0MjEgMTQuOTE0MiA3Ljc1IDE0LjUgNy43NUMxNC4wODU4IDcuNzUgMTMuNzUgNy40MTQyMSAxMy43NSA3QzEzLjc1IDYuNTg1NzkgMTQuMDg1OCA2LjI1IDE0LjUgNi4yNUMxNC45MTQyIDYuMjUgMTUuMjUgNi41ODU3OSAxNS4yNSA3WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDEyLjAyNjFDMiAxNy4xNzIzIDUuODY3MTMgMjEuNDEzIDEwLjg0NjggMjEuOTg2M0MxMS41ODE2IDIyLjA3MDkgMTIuMjkzOCAyMS43NTc2IDEyLjgxNjggMjEuMjMzM0MxMy40NzAzIDIwLjU3ODEgMTMuNDcwMyAxOS41MTU5IDEyLjgxNjggMTguODYwN0MxMi4yOTM4IDE4LjMzNjQgMTEuODY3NCAxNy41NTQxIDEyLjI2MTkgMTYuOTI2OEMxMy44Mzg1IDE0LjQxOTIgMjIgMjAuMTc4IDIyIDEyLjAyNjFDMjIgNi40ODg4NCAxNy41MjI4IDIgMTIgMkM2LjQ3NzE1IDIgMiA2LjQ4ODg0IDIgMTIuMDI2MVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPGNpcmNsZSBvcGFjaXR5PSIwLjUiIGN4PSIxNy41IiBjeT0iMTEuNSIgcj0iMS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iNi41IiBjeT0iMTEuNSIgcj0iMS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTExIDYuOTk5NzZDMTEgNy44MjgxOCAxMC4zMjg0IDguNDk5NzYgOS41IDguNDk5NzZDOC42NzE1NyA4LjQ5OTc2IDggNy44MjgxOCA4IDYuOTk5NzZDOCA2LjE3MTMzIDguNjcxNTcgNS40OTk3NiA5LjUgNS40OTk3NkMxMC4zMjg0IDUuNDk5NzYgMTEgNi4xNzEzMyAxMSA2Ljk5OTc2WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xNiA3QzE2IDcuODI4NDMgMTUuMzI4NCA4LjUgMTQuNSA4LjVDMTMuNjcxNiA4LjUgMTMgNy44Mjg0MyAxMyA3QzEzIDYuMTcxNTcgMTMuNjcxNiA1LjUgMTQuNSA1LjVDMTUuMzI4NCA1LjUgMTYgNi4xNzE1NyAxNiA3WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMi43NUM2Ljg5MzIxIDIuNzUgMi43NSA2LjkwMTIxIDIuNzUgMTIuMDI2MUMyLjc1IDE2Ljc4ODUgNi4zMjg2MSAyMC43MTEyIDEwLjkzMjYgMjEuMjQxMkMxMS4zOTUgMjEuMjk0NCAxMS44OSAyMS4xMDA0IDEyLjI4NTggMjAuNzAzNkMxMi42NDczIDIwLjM0MTIgMTIuNjQ3MyAxOS43NTI4IDEyLjI4NTggMTkuMzkwNEMxMS45NzM5IDE5LjA3NzYgMTEuNjYxMSAxOC42NjA5IDExLjQ4OTkgMTguMTg3MkMxMS4zMTQ2IDE3LjcwMiAxMS4yNzEzIDE3LjA5MzMgMTEuNjI3IDE2LjUyNzZDMTEuOTQ5OSAxNi4wMTQgMTIuNDM0MSAxNS43MzkgMTIuOTQyMSAxNS42MDUzQzEzLjQzMTMgMTUuNDc2NiAxMy45NzM0IDE1LjQ2OTMgMTQuNDk0IDE1LjUwMDlDMTQuOTc4IDE1LjUzMDMgMTUuNDk5MSAxNS41OTc4IDE2LjAwNDUgMTUuNjYzM0MxNi4wNDcxIDE1LjY2ODkgMTYuMDg5NiAxNS42NzQ0IDE2LjEzMiAxNS42Nzk4QzE2LjY4ODkgMTUuNzUxNyAxNy4yMzI4IDE1LjgxODggMTcuNzU4MSAxNS44NDM5QzE4LjgzMjQgMTUuODk1NCAxOS42NTk5IDE1Ljc2IDIwLjIyNTQgMTUuMjk3NkMyMC43NjY3IDE0Ljg1NTIgMjEuMjUgMTMuOTU2OCAyMS4yNSAxMi4wMjYxQzIxLjI1IDYuOTAxMjEgMTcuMTA2OCAyLjc1IDEyIDIuNzVaTTEuMjUgMTIuMDI2MUMxLjI1IDYuMDc2NDcgNi4wNjExIDEuMjUgMTIgMS4yNUMxNy45Mzg5IDEuMjUgMjIuNzUgNi4wNzY0NyAyMi43NSAxMi4wMjYxQzIyLjc1IDE0LjE3MTMgMjIuMjEzMiAxNS42MTAxIDIxLjE3NDggMTYuNDU5QzIwLjE2MDggMTcuMjg3OSAxOC44NDk1IDE3LjM5OCAxNy42ODYzIDE3LjM0MjJDMTcuMDkyOSAxNy4zMTM4IDE2LjQ5MzQgMTcuMjM5IDE1LjkzOTkgMTcuMTY3NUMxNS45MDEgMTcuMTYyNSAxNS44NjI1IDE3LjE1NzUgMTUuODI0MSAxNy4xNTI1QzE1LjMwNDYgMTcuMDg1MyAxNC44MzM1IDE3LjAyNDMgMTQuNDAzMiAxNi45OTgyQzEzLjkzNyAxNi45Njk5IDEzLjU4MjggMTYuOTg3OCAxMy4zMjM5IDE3LjA1NTlDMTMuMDgzNyAxNy4xMTkxIDEyLjk2OCAxNy4yMTI3IDEyLjg5NjggMTcuMzI2QzEyLjg1OCAxNy4zODc3IDEyLjgzMDcgMTcuNDgzNyAxMi45MDA3IDE3LjY3NzVDMTIuOTc0OSAxNy44ODI5IDEzLjEzNjggMTguMTE5NSAxMy4zNDc4IDE4LjMzMTFDMTQuMjkzMyAxOS4yNzkgMTQuMjkzMyAyMC44MTUgMTMuMzQ3OCAyMS43NjI5QzEyLjY5NzYgMjIuNDE0OCAxMS43NjgyIDIyLjg0NzMgMTAuNzYxIDIyLjczMTRDNS40MDU2NSAyMi4xMTQ4IDEuMjUgMTcuNTU2MiAxLjI1IDEyLjAyNjFaTTkuNTg1IDYuMjQ5NzdDOS4xNzA3OSA2LjI0OTc3IDguODM1IDYuNTg1NTYgOC44MzUgNi45OTk3N0M4LjgzNSA3LjQxMzk5IDkuMTcwNzkgNy43NDk3NyA5LjU4NSA3Ljc0OTc3QzkuOTk5MjIgNy43NDk3NyAxMC4zMzUgNy40MTM5OSAxMC4zMzUgNi45OTk3N0MxMC4zMzUgNi41ODU1NiA5Ljk5OTIyIDYuMjQ5NzcgOS41ODUgNi4yNDk3N1pNNy4zMzUgNi45OTk3N0M3LjMzNSA1Ljc1NzEzIDguMzQyMzYgNC43NDk3NyA5LjU4NSA0Ljc0OTc3QzEwLjgyNzYgNC43NDk3NyAxMS44MzUgNS43NTcxMyAxMS44MzUgNi45OTk3N0MxMS44MzUgOC4yNDI0MSAxMC44Mjc2IDkuMjQ5NzcgOS41ODUgOS4yNDk3N0M4LjM0MjM2IDkuMjQ5NzcgNy4zMzUgOC4yNDI0MSA3LjMzNSA2Ljk5OTc3Wk0xNC41IDYuMjVDMTQuMDg1OCA2LjI1IDEzLjc1IDYuNTg1NzkgMTMuNzUgN0MxMy43NSA3LjQxNDIxIDE0LjA4NTggNy43NSAxNC41IDcuNzVDMTQuOTE0MiA3Ljc1IDE1LjI1IDcuNDE0MjEgMTUuMjUgN0MxNS4yNSA2LjU4NTc5IDE0LjkxNDIgNi4yNSAxNC41IDYuMjVaTTEyLjI1IDdDMTIuMjUgNS43NTczNiAxMy4yNTc0IDQuNzUgMTQuNSA0Ljc1QzE1Ljc0MjYgNC43NSAxNi43NSA1Ljc1NzM2IDE2Ljc1IDdDMTYuNzUgOC4yNDI2NCAxNS43NDI2IDkuMjUgMTQuNSA5LjI1QzEzLjI1NzQgOS4yNSAxMi4yNSA4LjI0MjY0IDEyLjI1IDdaTTYuNSAxMC43NUM2LjA4NTc5IDEwLjc1IDUuNzUgMTEuMDg1OCA1Ljc1IDExLjVDNS43NSAxMS45MTQyIDYuMDg1NzkgMTIuMjUgNi41IDEyLjI1QzYuOTE0MjEgMTIuMjUgNy4yNSAxMS45MTQyIDcuMjUgMTEuNUM3LjI1IDExLjA4NTggNi45MTQyMSAxMC43NSA2LjUgMTAuNzVaTTQuMjUgMTEuNUM0LjI1IDEwLjI1NzQgNS4yNTczNiA5LjI1IDYuNSA5LjI1QzcuNzQyNjQgOS4yNSA4Ljc1IDEwLjI1NzQgOC43NSAxMS41QzguNzUgMTIuNzQyNiA3Ljc0MjY0IDEzLjc1IDYuNSAxMy43NUM1LjI1NzM2IDEzLjc1IDQuMjUgMTIuNzQyNiA0LjI1IDExLjVaTTE3LjUgMTAuNzVDMTcuMDg1OCAxMC43NSAxNi43NSAxMS4wODU4IDE2Ljc1IDExLjVDMTYuNzUgMTEuOTE0MiAxNy4wODU4IDEyLjI1IDE3LjUgMTIuMjVDMTcuOTE0MiAxMi4yNSAxOC4yNSAxMS45MTQyIDE4LjI1IDExLjVDMTguMjUgMTEuMDg1OCAxNy45MTQyIDEwLjc1IDE3LjUgMTAuNzVaTTE1LjI1IDExLjVDMTUuMjUgMTAuMjU3NCAxNi4yNTc0IDkuMjUgMTcuNSA5LjI1QzE4Ljc0MjYgOS4yNSAxOS43NSAxMC4yNTc0IDE5Ljc1IDExLjVDMTkuNzUgMTIuNzQyNiAxOC43NDI2IDEzLjc1IDE3LjUgMTMuNzVDMTYuMjU3NCAxMy43NSAxNS4yNSAxMi43NDI2IDE1LjI1IDExLjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) Outline
 */
const Pallete2: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props} weights={weights} />
))

Pallete2.displayName = "Pallete2"
export default Pallete2
