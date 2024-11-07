/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import IconBase from "../../lib/IconBase"
import weights from "../../defs/ui/HomeAdd"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMi41MTkyIDcuODIyNzRDMiA4Ljc3MTI4IDIgOS45MTU0OSAyIDEyLjIwMzlWMTMuNzI1QzIgMTcuNjI1OCAyIDE5LjU3NjMgMy4xNzE1NyAyMC43ODgxQzQuMzQzMTUgMjIgNi4yMjg3NiAyMiAxMCAyMkgxNEMxNy43NzEyIDIyIDE5LjY1NjkgMjIgMjAuODI4NCAyMC43ODgxQzIyIDE5LjU3NjMgMjIgMTcuNjI1OCAyMiAxMy43MjVWMTIuMjAzOUMyMiA5LjkxNTQ5IDIyIDguNzcxMjggMjEuNDgwOCA3LjgyMjc0QzIwLjk2MTYgNi44NzQyMSAyMC4wMTMxIDYuMjg1NTEgMTguMTE2IDUuMTA4MTJMMTYuMTE2IDMuODY2ODdDMTQuMTEwNiAyLjYyMjI5IDEzLjEwNzkgMiAxMiAyQzEwLjg5MjEgMiA5Ljg4OTM5IDIuNjIyMjkgNy44ODQwMyAzLjg2Njg3TDUuODg0MDMgNS4xMDgxM0MzLjk4Njk1IDYuMjg1NTEgMy4wMzg0IDYuODc0MjEgMi41MTkyIDcuODIyNzRaTTEyLjc1IDExQzEyLjc1IDEwLjU4NTggMTIuNDE0MiAxMC4yNSAxMiAxMC4yNUMxMS41ODU4IDEwLjI1IDExLjI1IDEwLjU4NTggMTEuMjUgMTFMMTEuMjUgMTMuMjVIOUM4LjU4NTc5IDEzLjI1IDguMjUgMTMuNTg1OCA4LjI1IDE0QzguMjUgMTQuNDE0MiA4LjU4NTc5IDE0Ljc1IDkgMTQuNzVIMTEuMjVWMTdDMTEuMjUgMTcuNDE0MiAxMS41ODU4IDE3Ljc1IDEyIDE3Ljc1QzEyLjQxNDIgMTcuNzUgMTIuNzUgMTcuNDE0MiAxMi43NSAxN1YxNC43NUgxNUMxNS40MTQyIDE0Ljc1IDE1Ljc1IDE0LjQxNDIgMTUuNzUgMTRDMTUuNzUgMTMuNTg1OCAxNS40MTQyIDEzLjI1IDE1IDEzLjI1SDEyLjc1TDEyLjc1IDExWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIgMTIuMjAzOUMyIDkuOTE1NDkgMiA4Ljc3MTI4IDIuNTE5MiA3LjgyMjc0QzMuMDM4NCA2Ljg3NDIxIDMuOTg2OTUgNi4yODU1MSA1Ljg4NDAzIDUuMTA4MTNMNy44ODQwMyAzLjg2Njg3QzkuODg5MzkgMi42MjIyOSAxMC44OTIxIDIgMTIgMkMxMy4xMDc5IDIgMTQuMTEwNiAyLjYyMjI5IDE2LjExNiAzLjg2Njg3TDE4LjExNiA1LjEwODEyQzIwLjAxMzEgNi4yODU1MSAyMC45NjE2IDYuODc0MjEgMjEuNDgwOCA3LjgyMjc0QzIyIDguNzcxMjggMjIgOS45MTU0OSAyMiAxMi4yMDM5VjEzLjcyNUMyMiAxNy42MjU4IDIyIDE5LjU3NjMgMjAuODI4NCAyMC43ODgxQzE5LjY1NjkgMjIgMTcuNzcxMiAyMiAxNCAyMkgxMEM2LjIyODc2IDIyIDQuMzQzMTUgMjIgMy4xNzE1NyAyMC43ODgxQzIgMTkuNTc2MyAyIDE3LjYyNTggMiAxMy43MjVWMTIuMjAzOVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyLjc1IDExQzEyLjc1IDEwLjU4NTggMTIuNDE0MiAxMC4yNSAxMiAxMC4yNUMxMS41ODU4IDEwLjI1IDExLjI1IDEwLjU4NTggMTEuMjUgMTFMMTEuMjUgMTMuMjVIOUM4LjU4NTc5IDEzLjI1IDguMjUgMTMuNTg1OCA4LjI1IDE0QzguMjUgMTQuNDE0MiA4LjU4NTc5IDE0Ljc1IDkgMTQuNzVIMTEuMjVWMTdDMTEuMjUgMTcuNDE0MiAxMS41ODU4IDE3Ljc1IDEyIDE3Ljc1QzEyLjQxNDIgMTcuNzUgMTIuNzUgMTcuNDE0MiAxMi43NSAxN1YxNC43NUgxNUMxNS40MTQyIDE0Ljc1IDE1Ljc1IDE0LjQxNDIgMTUuNzUgMTRDMTUuNzUgMTMuNTg1OCAxNS40MTQyIDEzLjI1IDE1IDEzLjI1SDEyLjc1TDEyLjc1IDExWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNSAxNEwxMiAxNE0xMiAxNEw5IDE0TTEyIDE0TDEyIDExTTEyIDE0TDEyIDE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIyIDEyLjIwMzlWMTMuNzI1QzIyIDE3LjYyNTggMjIgMTkuNTc2MyAyMC44Mjg0IDIwLjc4ODFDMTkuNjU2OSAyMiAxNy43NzEyIDIyIDE0IDIySDEwQzYuMjI4NzYgMjIgNC4zNDMxNSAyMiAzLjE3MTU3IDIwLjc4ODFDMiAxOS41NzYzIDIgMTcuNjI1OCAyIDEzLjcyNVYxMi4yMDM5QzIgOS45MTU0OSAyIDguNzcxMjggMi41MTkyIDcuODIyNzRDMy4wMzg0IDYuODc0MjEgMy45ODY5NSA2LjI4NTUxIDUuODg0MDMgNS4xMDgxM0w3Ljg4NDAzIDMuODY2ODdDOS44ODkzOSAyLjYyMjI5IDEwLjg5MjEgMiAxMiAyQzEzLjEwNzkgMiAxNC4xMTA2IDIuNjIyMjkgMTYuMTE2IDMuODY2ODdMMTguMTE2IDUuMTA4MTJDMjAuMDEzMSA2LjI4NTUxIDIwLjk2MTYgNi44NzQyMSAyMS40ODA4IDcuODIyNzQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDEyLjIwMzlDMiA5LjkxNTQ5IDIgOC43NzEyOCAyLjUxOTIgNy44MjI3NEMzLjAzODQgNi44NzQyMSAzLjk4Njk1IDYuMjg1NTEgNS44ODQwMyA1LjEwODEzTDcuODg0MDMgMy44NjY4N0M5Ljg4OTM5IDIuNjIyMjkgMTAuODkyMSAyIDEyIDJDMTMuMTA3OSAyIDE0LjExMDYgMi42MjIyOSAxNi4xMTYgMy44NjY4N0wxOC4xMTYgNS4xMDgxMkMyMC4wMTMxIDYuMjg1NTEgMjAuOTYxNiA2Ljg3NDIxIDIxLjQ4MDggNy44MjI3NEMyMiA4Ljc3MTI4IDIyIDkuOTE1NDkgMjIgMTIuMjAzOVYxMy43MjVDMjIgMTcuNjI1OCAyMiAxOS41NzYzIDIwLjgyODQgMjAuNzg4MUMxOS42NTY5IDIyIDE3Ljc3MTIgMjIgMTQgMjJIMTBDNi4yMjg3NiAyMiA0LjM0MzE1IDIyIDMuMTcxNTcgMjAuNzg4MUMyIDE5LjU3NjMgMiAxNy42MjU4IDIgMTMuNzI1VjEyLjIwMzlaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIGQ9Ik0xNSAxNEwxMiAxNE0xMiAxNEw5IDE0TTEyIDE0TDEyIDExTTEyIDE0TDEyIDE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIgMTIuMjAzOUMyIDkuOTE1NDkgMiA4Ljc3MTI4IDIuNTE5MiA3LjgyMjc0QzMuMDM4NCA2Ljg3NDIxIDMuOTg2OTUgNi4yODU1MSA1Ljg4NDAzIDUuMTA4MTNMNy44ODQwMyAzLjg2Njg3QzkuODg5MzkgMi42MjIyOSAxMC44OTIxIDIgMTIgMkMxMy4xMDc5IDIgMTQuMTEwNiAyLjYyMjI5IDE2LjExNiAzLjg2Njg3TDE4LjExNiA1LjEwODEyQzIwLjAxMzEgNi4yODU1MSAyMC45NjE2IDYuODc0MjEgMjEuNDgwOCA3LjgyMjc0QzIyIDguNzcxMjggMjIgOS45MTU0OSAyMiAxMi4yMDM5VjEzLjcyNUMyMiAxNy42MjU4IDIyIDE5LjU3NjMgMjAuODI4NCAyMC43ODgxQzE5LjY1NjkgMjIgMTcuNzcxMiAyMiAxNCAyMkgxMEM2LjIyODc2IDIyIDQuMzQzMTUgMjIgMy4xNzE1NyAyMC43ODgxQzIgMTkuNTc2MyAyIDE3LjYyNTggMiAxMy43MjVWMTIuMjAzOVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTE1IDE0TDEyIDE0TTEyIDE0TDkgMTRNMTIgMTRMMTIgMTFNMTIgMTRMMTIgMTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMi43NSAxMC45OTk4QzEyLjc1IDEwLjU4NTYgMTIuNDE0MiAxMC4yNDk4IDEyIDEwLjI0OThDMTEuNTg1OCAxMC4yNDk4IDExLjI1IDEwLjU4NTYgMTEuMjUgMTAuOTk5OEwxMS4yNSAxMy4yNDk4SDlDOC41ODU3OSAxMy4yNDk4IDguMjUgMTMuNTg1NiA4LjI1IDEzLjk5OThDOC4yNSAxNC40MTQgOC41ODU3OSAxNC43NDk4IDkgMTQuNzQ5OEgxMS4yNVYxNi45OTk4QzExLjI1IDE3LjQxNCAxMS41ODU4IDE3Ljc0OTggMTIgMTcuNzQ5OEMxMi40MTQyIDE3Ljc0OTggMTIuNzUgMTcuNDE0IDEyLjc1IDE2Ljk5OThMMTIuNzUgMTQuNzQ5OEgxNUMxNS40MTQyIDE0Ljc0OTggMTUuNzUgMTQuNDE0IDE1Ljc1IDEzLjk5OThDMTUuNzUgMTMuNTg1NiAxNS40MTQyIDEzLjI0OTggMTUgMTMuMjQ5OEgxMi43NVYxMC45OTk4WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDEuMjVDMTEuMjkxOSAxLjI1IDEwLjY0ODUgMS40NTI4MiA5Ljk1MDU1IDEuNzkyMjRDOS4yNzU4NSAyLjEyMDM1IDguNDk2NDIgMi42MDQwOSA3LjUyMjg2IDMuMjA4MzJMNS40NTYyOCA0LjQ5MDlDNC41MzUwOSA1LjA2MjYxIDMuNzk3NDQgNS41MjA0IDMuMjI4OSA1Ljk1NTgxQzIuNjQwMTUgNi40MDY2OSAyLjE4Nzk1IDYuODY1ODkgMS44NjEzMSA3LjQ2MjYzQzEuNTM1MzUgOC4wNTgxMiAxLjM4ODU3IDguNjkxNzQgMS4zMTgxOSA5LjQ0MDdDMS4yNDk5OSAxMC4xNjY1IDEuMjQ5OTkgMTEuMDU0MSAxLjI1IDEyLjE2NzJWMTMuNzc5OUMxLjI0OTk5IDE1LjY4MzcgMS4yNDk5OCAxNy4xODY2IDEuNDAyNyAxOC4zNjE2QzEuNTU5MzcgMTkuNTY3IDEuODg4NTYgMjAuNTQwMSAyLjYzMjM2IDIxLjMwOTRDMy4zNzk1OCAyMi4wODI0IDQuMzMwNDYgMjIuNDI3NyA1LjUwNzYxIDIyLjU5MTRDNi42NDg0OSAyMi43NSA4LjEwNTU2IDIyLjc1IDkuOTQxODUgMjIuNzVIMTQuMDU4MUMxNS44OTQ0IDIyLjc1IDE3LjM1MTUgMjIuNzUgMTguNDkyNCAyMi41OTE0QzE5LjY2OTUgMjIuNDI3NyAyMC42MjA0IDIyLjA4MjQgMjEuMzY3NiAyMS4zMDk0QzIyLjExMTQgMjAuNTQwMSAyMi40NDA2IDE5LjU2NyAyMi41OTczIDE4LjM2MTZDMjIuNzUgMTcuMTg2NiAyMi43NSAxNS42ODM4IDIyLjc1IDEzLjc3OTlWMTIuMTY3MkMyMi43NSAxMS4wNTQxIDIyLjc1IDEwLjE2NjUgMjIuNjgxOCA5LjQ0MDdDMjIuNjExNCA4LjY5MTc0IDIyLjQ2NDYgOC4wNTgxMiAyMi4xMzg3IDcuNDYyNjNDMjEuODEyMSA2Ljg2NTg5IDIxLjM1OTkgNi40MDY2OSAyMC43NzExIDUuOTU1ODFDMjAuMjAyNiA1LjUyMDQgMTkuNDY0OSA1LjA2MjYyIDE4LjU0MzcgNC40OTA5MUwxNi40NzcxIDMuMjA4MzFDMTUuNTAzNiAyLjYwNDA5IDE0LjcyNDEgMi4xMjAzNCAxNC4wNDk0IDEuNzkyMjRDMTMuMzUxNSAxLjQ1MjgyIDEyLjcwODEgMS4yNSAxMiAxLjI1Wk04LjI3OTUzIDQuNTA0MTJDOS4yOTUyOSAzLjg3MzcxIDEwLjAwOTUgMy40MzE1MyAxMC42MDY1IDMuMTQxMkMxMS4xODgyIDIuODU4MzMgMTEuNjAwMiAyLjc1IDEyIDIuNzVDMTIuMzk5OCAyLjc1IDEyLjgxMTggMi44NTgzMyAxMy4zOTM1IDMuMTQxMTlDMTMuOTkwNSAzLjQzMTUzIDE0LjcwNDcgMy44NzM3MSAxNS43MjA1IDQuNTA0MTJMMTcuNzIwNSA1Ljc0NTM3QzE4LjY4MTMgNi4zNDE2OSAxOS4zNTU5IDYuNzYxMzUgMTkuODU5MSA3LjE0NjdDMjAuMzQ4NyA3LjUyMTY0IDIwLjYzMDMgNy44MzEwNiAyMC44MjI5IDguMTgyODVDMjEuMDE2MiA4LjUzNTg5IDIxLjEyOSA4Ljk0ODY1IDIxLjE4ODQgOS41ODEwNEMyMS4yNDkyIDEwLjIyODYgMjEuMjUgMTEuMDQ1OCAyMS4yNSAxMi4yMDM5VjEzLjcyNUMyMS4yNSAxNS42OTU5IDIxLjI0ODUgMTcuMTAxMiAyMS4xMDk4IDE4LjE2ODNDMjAuOTczNiAxOS4yMTYzIDIwLjcxNyAxOS44MjQ0IDIwLjI4OTIgMjAuMjY2OUMxOS44NjQ5IDIwLjcwNTggMTkuMjg3MSAyMC45NjY0IDE4LjI4NTggMjEuMTA1N0MxNy4yNjAyIDIxLjI0ODMgMTUuOTA3NSAyMS4yNSAxNCAyMS4yNUgxMEM4LjA5MjQ3IDIxLjI1IDYuNzM5ODMgMjEuMjQ4MyA1LjcxNDIyIDIxLjEwNTdDNC43MTI4NiAyMC45NjY0IDQuMTM1MTQgMjAuNzA1OCAzLjcxMDc5IDIwLjI2NjlDMy4yODMwMSAxOS44MjQ0IDMuMDI2NDIgMTkuMjE2MyAyLjg5MDE5IDE4LjE2ODNDMi43NTE0OSAxNy4xMDEyIDIuNzUgMTUuNjk1OSAyLjc1IDEzLjcyNVYxMi4yMDM5QzIuNzUgMTEuMDQ1OCAyLjc1MDc2IDEwLjIyODYgMi44MTE2MSA5LjU4MTA0QzIuODcxMDMgOC45NDg2NSAyLjk4Mzg1IDguNTM1ODkgMy4xNzcwOSA4LjE4Mjg1QzMuMzY5NjUgNy44MzEwNiAzLjY1MTMzIDcuNTIxNjQgNC4xNDA5MiA3LjE0NjdDNC42NDQxIDYuNzYxMzUgNS4zMTg2OSA2LjM0MTY5IDYuMjc5NTMgNS43NDUzN0w4LjI3OTUzIDQuNTA0MTJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) Outline
 */
const HomeAdd: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props} weights={weights} />
))

HomeAdd.displayName = "HomeAdd"
export default HomeAdd
