/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import IconBase from "../../lib/IconBase"
import weights from "../../defs/files/File"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTQgMjJIMTBDNi4yMjg3NiAyMiA0LjM0MzE1IDIyIDMuMTcxNTcgMjAuODI4NEMyIDE5LjY1NjkgMiAxNy43NzEyIDIgMTRWMTBDMiA2LjIyODc2IDIgNC4zNDMxNSAzLjE3MTU3IDMuMTcxNTdDNC4zNDMxNSAyIDYuMjM4NjkgMiAxMC4wMjk4IDJDMTAuNjM1OCAyIDExLjEyMTQgMiAxMS41MyAyLjAxNjY2QzExLjUxNjYgMi4wOTY1OSAxMS41MDk1IDIuMTc4MTMgMTEuNTA5MiAyLjI2MDU3TDExLjUgNS4wOTQ5N0MxMS40OTk5IDYuMTkyMDcgMTEuNDk5OCA3LjE2MTY0IDExLjYwNDkgNy45NDMxNkMxMS43MTg4IDguNzkwMjggMTEuOTgwMyA5LjYzNzI2IDEyLjY3MTYgMTAuMzI4NUMxMy4zNjI4IDExLjAxOTggMTQuMjA5OCAxMS4yODEzIDE1LjA1NjkgMTEuMzk1MkMxNS44Mzg1IDExLjUwMDMgMTYuODA4IDExLjUwMDIgMTcuOTA1MSAxMS41MDAxTDE4IDExLjUwMDFIMjEuOTU3NEMyMiAxMi4wMzQ0IDIyIDEyLjY5MDEgMjIgMTMuNTYyOVYxNEMyMiAxNy43NzEyIDIyIDE5LjY1NjkgMjAuODI4NCAyMC44Mjg0QzE5LjY1NjkgMjIgMTcuNzcxMiAyMiAxNCAyMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE5LjM1MTcgNy42MTY2NUwxNS4zOTI5IDQuMDUzNzVDMTQuMjY1MSAzLjAzODY4IDEzLjcwMTIgMi41MzExNCAxMy4wMDkyIDIuMjY1NjJMMTMgNS4wMDAxMUMxMyA3LjM1NzEzIDEzIDguNTM1NjQgMTMuNzMyMiA5LjI2Nzg3QzE0LjQ2NDUgMTAuMDAwMSAxNS42NDMgMTAuMDAwMSAxOCAxMC4wMDAxSDIxLjU4MDFDMjEuMjE3NSA5LjI5NTg4IDIwLjU2ODQgOC43MTE2NCAxOS4zNTE3IDcuNjE2NjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxnIG9wYWNpdHk9IjAuNSI+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTQgMjJIMTBDNi4yMjg3NiAyMiA0LjM0MzE1IDIyIDMuMTcxNTcgMjAuODI4NEMyIDE5LjY1NjkgMiAxNy43NzEyIDIgMTRWMTBDMiA2LjIyODc2IDIgNC4zNDMxNSAzLjE3MTU3IDMuMTcxNTdDNC4zNDMxNSAyIDYuMjM4NjkgMiAxMC4wMjk4IDJDMTAuNjM1OCAyIDExLjEyMTQgMiAxMS41MyAyLjAxNjY2QzExLjUxNjYgMi4wOTY1OSAxMS41MDk1IDIuMTc4MTMgMTEuNTA5MiAyLjI2MDU3TDExLjUgNS4wOTQ5N0MxMS40OTk5IDYuMTkyMDcgMTEuNDk5OCA3LjE2MTY0IDExLjYwNDkgNy45NDMxNkMxMS43MTg4IDguNzkwMjggMTEuOTgwMyA5LjYzNzI2IDEyLjY3MTYgMTAuMzI4NUMxMy4zNjI4IDExLjAxOTggMTQuMjA5OCAxMS4yODEzIDE1LjA1NjkgMTEuMzk1MkMxNS44Mzg1IDExLjUwMDMgMTYuODA4IDExLjUwMDIgMTcuOTA1MSAxMS41MDAxTDE4IDExLjUwMDFIMjEuOTU3NEMyMiAxMi4wMzQ0IDIyIDEyLjY5MDEgMjIgMTMuNTYyOVYxNEMyMiAxNy43NzEyIDIyIDE5LjY1NjkgMjAuODI4NCAyMC44Mjg0QzE5LjY1NjkgMjIgMTcuNzcxMiAyMiAxNCAyMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9nPgo8cGF0aCBkPSJNMTEuNTA5MiAyLjI2MDFMMTEuNSA1LjA5NDVDMTEuNDk5OSA2LjE5MTYgMTEuNDk5OCA3LjE2MTE3IDExLjYwNDkgNy45NDI2OUMxMS43MTg4IDguNzg5ODEgMTEuOTgwMyA5LjYzNjggMTIuNjcxNiAxMC4zMjgxQzEzLjM2MjkgMTEuMDE5MyAxNC4yMDk4IDExLjI4MDggMTUuMDU3IDExLjM5NDdDMTUuODM4NSAxMS40OTk4IDE2LjgwOCAxMS40OTk3IDE3LjkwNTEgMTEuNDk5NkwyMS45NTc0IDExLjQ5OTZDMjEuOTY5OCAxMS42NTUyIDIxLjk3ODYgMTEuODIxIDIxLjk4NDggMTEuOTk5NUgyMkMyMiAxMS43MzIgMjIgMTEuNTk4MyAyMS45OTAxIDExLjQ0MDhDMjEuOTMzNSAxMC41NDYzIDIxLjU2MTcgOS41MjEyNSAyMS4wMzE1IDguNzk4NTNDMjAuOTM4MiA4LjY3MTMgMjAuODc0MyA4LjU5NDkzIDIwLjc0NjcgOC40NDIxOEMxOS45NTQyIDcuNDkzNTkgMTguOTExIDYuMzExOTMgMTggNS40OTk1M0MxNy4xODkyIDQuNzc2NDUgMTYuMDc4NyAzLjk4NTM2IDE1LjExMDEgMy4zMzg1QzE0LjI3ODEgMi43ODI3NSAxMy44NjIgMi41MDQ4NyAxMy4yOTE1IDIuMjk4MzRDMTMuMTQwMyAyLjI0MzU5IDEyLjk0MDggMi4xODMxMSAxMi43ODQ2IDIuMTQ0NjZDMTIuNDAwNiAyLjA1MDEzIDEyLjAyNjggMi4wMTcyNSAxMS41IDIuMDA1ODZMMTEuNTA5MiAyLjI2MDFaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yLjc1IDEwQzIuNzUgOS41ODU3OSAyLjQxNDIxIDkuMjUgMiA5LjI1QzEuNTg1NzkgOS4yNSAxLjI1IDkuNTg1NzkgMS4yNSAxMEgyLjc1Wk0yMS4yNSAxNEMyMS4yNSAxNC40MTQyIDIxLjU4NTggMTQuNzUgMjIgMTQuNzVDMjIuNDE0MiAxNC43NSAyMi43NSAxNC40MTQyIDIyLjc1IDE0SDIxLjI1Wk0xNS4zOTI5IDQuMDUzNjVMMTQuODkxMiA0LjYxMTEyTDE1LjM5MjkgNC4wNTM2NVpNMTkuMzUxNyA3LjYxNjU0TDE4Ljg1IDguMTc0MDJMMTkuMzUxNyA3LjYxNjU0Wk0yMS42NTQgMTAuMTU0MUwyMC45Njg5IDEwLjQ1OTJWMTAuNDU5MkwyMS42NTQgMTAuMTU0MVpNMy4xNzE1NyAyMC44Mjg0TDMuNzAxOSAyMC4yOTgxSDMuNzAxOUwzLjE3MTU3IDIwLjgyODRaTTIwLjgyODQgMjAuODI4NEwyMC4yOTgxIDIwLjI5ODFMMjAuMjk4MSAyMC4yOTgxTDIwLjgyODQgMjAuODI4NFpNMS4zNTUwOSA1LjkyNjU4QzEuMzE0NTUgNi4zMzg4MSAxLjYxNTg1IDYuNzA1ODUgMi4wMjgwNyA2Ljc0NjRDMi40NDAzIDYuNzg2OTUgMi44MDczNCA2LjQ4NTY0IDIuODQ3ODkgNi4wNzM0MkwxLjM1NTA5IDUuOTI2NThaTTIyLjY0NDkgMTguMDczNEMyMi42ODU1IDE3LjY2MTIgMjIuMzg0MSAxNy4yOTQxIDIxLjk3MTkgMTcuMjUzNkMyMS41NTk3IDE3LjIxMzEgMjEuMTkyNyAxNy41MTQ0IDIxLjE1MjEgMTcuOTI2NkwyMi42NDQ5IDE4LjA3MzRaTTE0IDIxLjI1SDEwVjIyLjc1SDE0VjIxLjI1Wk0yLjc1IDE0VjEwSDEuMjVWMTRIMi43NVpNMjEuMjUgMTMuNTYyOVYxNEgyMi43NVYxMy41NjI5SDIxLjI1Wk0xNC44OTEyIDQuNjExMTJMMTguODUgOC4xNzQwMkwxOS44NTM0IDcuMDU5MDdMMTUuODk0NyAzLjQ5NjE4TDE0Ljg5MTIgNC42MTExMlpNMjIuNzUgMTMuNTYyOUMyMi43NSAxMS44NzQ1IDIyLjc2NTEgMTAuODA1NSAyMi4zMzkxIDkuODQ4OTdMMjAuOTY4OSAxMC40NTkyQzIxLjIzNDkgMTEuMDU2NSAyMS4yNSAxMS43NDIgMjEuMjUgMTMuNTYyOUgyMi43NVpNMTguODUgOC4xNzQwMkMyMC4yMDM0IDkuMzkyMSAyMC43MDI5IDkuODYxOTkgMjAuOTY4OSAxMC40NTkyTDIyLjMzOTEgOS44NDg5N0MyMS45MTMxIDguODkyNDEgMjEuMTA4NCA4LjE4ODUzIDE5Ljg1MzQgNy4wNTkwN0wxOC44NSA4LjE3NDAyWk0xMC4wMjk4IDIuNzVDMTEuNjExNiAyLjc1IDEyLjIwODUgMi43NjE1OCAxMi43NDA1IDIuOTY1NzNMMTMuMjc3OSAxLjU2NTNDMTIuNDI2MSAxLjIzODQyIDExLjQ5OCAxLjI1IDEwLjAyOTggMS4yNVYyLjc1Wk0xNS44OTQ3IDMuNDk2MThDMTQuODA4NyAyLjUxODc4IDE0LjEyOTcgMS44OTIxNCAxMy4yNzc5IDEuNTY1M0wxMi43NDA1IDIuOTY1NzNDMTMuMjcyNyAzLjE2OTkzIDEzLjcyMTUgMy41NTgzNiAxNC44OTEyIDQuNjExMTJMMTUuODk0NyAzLjQ5NjE4Wk0xMCAyMS4yNUM4LjA5MzE4IDIxLjI1IDYuNzM4NTEgMjEuMjQ4NCA1LjcxMDg1IDIxLjExMDJDNC43MDQ3NiAyMC45NzUgNC4xMjUxMSAyMC43MjEzIDMuNzAxOSAyMC4yOTgxTDIuNjQxMjQgMjEuMzU4OEMzLjM4OTYxIDIyLjEwNzEgNC4zMzg1NSAyMi40MzkyIDUuNTEwOTggMjIuNTk2OUM2LjY2MTgyIDIyLjc1MTYgOC4xMzU1OCAyMi43NSAxMCAyMi43NVYyMS4yNVpNMS4yNSAxNEMxLjI1IDE1Ljg2NDQgMS4yNDg0MSAxNy4zMzgyIDEuNDAzMTMgMTguNDg5QzEuNTYwNzYgMTkuNjYxNCAxLjg5Mjg4IDIwLjYxMDQgMi42NDEyNCAyMS4zNTg4TDMuNzAxOSAyMC4yOTgxQzMuMjc4NjkgMTkuODc0OSAzLjAyNTAyIDE5LjI5NTIgMi44ODk3NiAxOC4yODkyQzIuNzUxNTkgMTcuMjYxNSAyLjc1IDE1LjkwNjggMi43NSAxNEgxLjI1Wk0xNCAyMi43NUMxNS44NjQ0IDIyLjc1IDE3LjMzODIgMjIuNzUxNiAxOC40ODkgMjIuNTk2OUMxOS42NjE0IDIyLjQzOTIgMjAuNjEwNCAyMi4xMDcxIDIxLjM1ODggMjEuMzU4OEwyMC4yOTgxIDIwLjI5ODFDMTkuODc0OSAyMC43MjEzIDE5LjI5NTIgMjAuOTc1IDE4LjI4OTIgMjEuMTEwMkMxNy4yNjE1IDIxLjI0ODQgMTUuOTA2OCAyMS4yNSAxNCAyMS4yNVYyMi43NVpNMTAuMDI5OCAxLjI1QzguMTU1MzggMS4yNSA2LjY3NDQyIDEuMjQ4NDIgNS41MTg4NyAxLjQwMzA3QzQuMzQyMzIgMS41NjA1NCAzLjM5MDE5IDEuODkyMyAyLjY0MTI0IDIuNjQxMjRMMy43MDE5IDMuNzAxOUM0LjEyNDUzIDMuMjc5MjggNC43MDU5NiAzLjAyNTI1IDUuNzE3ODUgMi44ODk4MkM2Ljc1MDc1IDIuNzUxNTggOC4xMTMxMSAyLjc1IDEwLjAyOTggMi43NVYxLjI1Wk0yLjg0Nzg5IDYuMDczNDJDMi45NjkzMSA0LjgzOTA1IDMuMjMwNDUgNC4xNzMzNSAzLjcwMTkgMy43MDE5TDIuNjQxMjQgMi42NDEyNEMxLjgwNjMzIDMuNDc2MTYgMS40ODk0NCA0LjU2MDcyIDEuMzU1MDkgNS45MjY1OEwyLjg0Nzg5IDYuMDczNDJaTTIxLjE1MjEgMTcuOTI2NkMyMS4wMzA3IDE5LjE2MDkgMjAuNzY5NSAxOS44MjY2IDIwLjI5ODEgMjAuMjk4MUwyMS4zNTg4IDIxLjM1ODhDMjIuMTkzNyAyMC41MjM4IDIyLjUxMDYgMTkuNDM5MyAyMi42NDQ5IDE4LjA3MzRMMjEuMTUyMSAxNy45MjY2WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTMgMi41VjVDMTMgNy4zNTcwMiAxMyA4LjUzNTUzIDEzLjczMjIgOS4yNjc3N0MxNC40NjQ1IDEwIDE1LjY0MyAxMCAxOCAxMEgyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNS4zOTI5IDQuMDUzNjVMMTQuODkxMiA0LjYxMTEyTDE1LjM5MjkgNC4wNTM2NVpNMTkuMzUxNyA3LjYxNjU0TDE4Ljg1IDguMTc0MDJMMTkuMzUxNyA3LjYxNjU0Wk0yMS42NTQgMTAuMTU0MUwyMC45Njg5IDEwLjQ1OTJWMTAuNDU5MkwyMS42NTQgMTAuMTU0MVpNMy4xNzE1NyAyMC44Mjg0TDMuNzAxOSAyMC4yOTgxSDMuNzAxOUwzLjE3MTU3IDIwLjgyODRaTTIwLjgyODQgMjAuODI4NEwyMC4yOTgxIDIwLjI5ODFMMjAuMjk4MSAyMC4yOTgxTDIwLjgyODQgMjAuODI4NFpNMTQgMjEuMjVIMTBWMjIuNzVIMTRWMjEuMjVaTTIuNzUgMTRWMTBIMS4yNVYxNEgyLjc1Wk0yMS4yNSAxMy41NjI5VjE0SDIyLjc1VjEzLjU2MjlIMjEuMjVaTTE0Ljg5MTIgNC42MTExMkwxOC44NSA4LjE3NDAyTDE5Ljg1MzQgNy4wNTkwN0wxNS44OTQ3IDMuNDk2MThMMTQuODkxMiA0LjYxMTEyWk0yMi43NSAxMy41NjI5QzIyLjc1IDExLjg3NDUgMjIuNzY1MSAxMC44MDU1IDIyLjMzOTEgOS44NDg5N0wyMC45Njg5IDEwLjQ1OTJDMjEuMjM0OSAxMS4wNTY1IDIxLjI1IDExLjc0MiAyMS4yNSAxMy41NjI5SDIyLjc1Wk0xOC44NSA4LjE3NDAyQzIwLjIwMzQgOS4zOTIxIDIwLjcwMjkgOS44NjE5OSAyMC45Njg5IDEwLjQ1OTJMMjIuMzM5MSA5Ljg0ODk3QzIxLjkxMzEgOC44OTI0MSAyMS4xMDg0IDguMTg4NTMgMTkuODUzNCA3LjA1OTA3TDE4Ljg1IDguMTc0MDJaTTEwLjAyOTggMi43NUMxMS42MTE2IDIuNzUgMTIuMjA4NSAyLjc2MTU4IDEyLjc0MDUgMi45NjU3M0wxMy4yNzc5IDEuNTY1M0MxMi40MjYxIDEuMjM4NDIgMTEuNDk4IDEuMjUgMTAuMDI5OCAxLjI1VjIuNzVaTTE1Ljg5NDcgMy40OTYxOEMxNC44MDg3IDIuNTE4NzggMTQuMTI5NyAxLjg5MjE0IDEzLjI3NzkgMS41NjUzTDEyLjc0MDUgMi45NjU3M0MxMy4yNzI3IDMuMTY5OTMgMTMuNzIxNSAzLjU1ODM2IDE0Ljg5MTIgNC42MTExMkwxNS44OTQ3IDMuNDk2MThaTTEwIDIxLjI1QzguMDkzMTggMjEuMjUgNi43Mzg1MSAyMS4yNDg0IDUuNzEwODUgMjEuMTEwMkM0LjcwNDc2IDIwLjk3NSA0LjEyNTExIDIwLjcyMTMgMy43MDE5IDIwLjI5ODFMMi42NDEyNCAyMS4zNTg4QzMuMzg5NjEgMjIuMTA3MSA0LjMzODU1IDIyLjQzOTIgNS41MTA5OCAyMi41OTY5QzYuNjYxODIgMjIuNzUxNiA4LjEzNTU4IDIyLjc1IDEwIDIyLjc1VjIxLjI1Wk0xLjI1IDE0QzEuMjUgMTUuODY0NCAxLjI0ODQxIDE3LjMzODIgMS40MDMxMyAxOC40ODlDMS41NjA3NiAxOS42NjE0IDEuODkyODggMjAuNjEwNCAyLjY0MTI0IDIxLjM1ODhMMy43MDE5IDIwLjI5ODFDMy4yNzg2OSAxOS44NzQ5IDMuMDI1MDIgMTkuMjk1MiAyLjg4OTc2IDE4LjI4OTJDMi43NTE1OSAxNy4yNjE1IDIuNzUgMTUuOTA2OCAyLjc1IDE0SDEuMjVaTTE0IDIyLjc1QzE1Ljg2NDQgMjIuNzUgMTcuMzM4MiAyMi43NTE2IDE4LjQ4OSAyMi41OTY5QzE5LjY2MTQgMjIuNDM5MiAyMC42MTA0IDIyLjEwNzEgMjEuMzU4OCAyMS4zNTg4TDIwLjI5ODEgMjAuMjk4MUMxOS44NzQ5IDIwLjcyMTMgMTkuMjk1MiAyMC45NzUgMTguMjg5MiAyMS4xMTAyQzE3LjI2MTUgMjEuMjQ4NCAxNS45MDY4IDIxLjI1IDE0IDIxLjI1VjIyLjc1Wk0yMS4yNSAxNEMyMS4yNSAxNS45MDY4IDIxLjI0ODQgMTcuMjYxNSAyMS4xMTAyIDE4LjI4OTJDMjAuOTc1IDE5LjI5NTIgMjAuNzIxMyAxOS44NzQ5IDIwLjI5ODEgMjAuMjk4MUwyMS4zNTg4IDIxLjM1ODhDMjIuMTA3MSAyMC42MTA0IDIyLjQzOTIgMTkuNjYxNCAyMi41OTY5IDE4LjQ4OUMyMi43NTE2IDE3LjMzODIgMjIuNzUgMTUuODY0NCAyMi43NSAxNEgyMS4yNVpNMi43NSAxMEMyLjc1IDguMDkzMTggMi43NTE1OSA2LjczODUxIDIuODg5NzYgNS43MTA4NUMzLjAyNTAyIDQuNzA0NzYgMy4yNzg2OSA0LjEyNTExIDMuNzAxOSAzLjcwMTlMMi42NDEyNCAyLjY0MTI0QzEuODkyODggMy4zODk2MSAxLjU2MDc2IDQuMzM4NTUgMS40MDMxMyA1LjUxMDk4QzEuMjQ4NDEgNi42NjE4MiAxLjI1IDguMTM1NTggMS4yNSAxMEgyLjc1Wk0xMC4wMjk4IDEuMjVDOC4xNTUzOCAxLjI1IDYuNjc0NDIgMS4yNDg0MiA1LjUxODg3IDEuNDAzMDdDNC4zNDIzMiAxLjU2MDU0IDMuMzkwMTkgMS44OTIzIDIuNjQxMjQgMi42NDEyNEwzLjcwMTkgMy43MDE5QzQuMTI0NTMgMy4yNzkyOCA0LjcwNTk2IDMuMDI1MjUgNS43MTc4NSAyLjg4OTgyQzYuNzUwNzUgMi43NTE1OCA4LjExMzExIDIuNzUgMTAuMDI5OCAyLjc1VjEuMjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMyAyLjVWNUMxMyA3LjM1NzAyIDEzIDguNTM1NTMgMTMuNzMyMiA5LjI2Nzc3QzE0LjQ2NDUgMTAgMTUuNjQzIDEwIDE4IDEwSDIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+Cjwvc3ZnPgo=) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNS4zOTI5IDQuMDUzNjVMMTQuODkxMiA0LjYxMTEyTDE1LjM5MjkgNC4wNTM2NVpNMTkuMzUxNyA3LjYxNjU0TDE4Ljg1IDguMTc0MDJMMTkuMzUxNyA3LjYxNjU0Wk0yMS42NTQgMTAuMTU0MUwyMC45Njg5IDEwLjQ1OTJWMTAuNDU5MkwyMS42NTQgMTAuMTU0MVpNMy4xNzE1NyAyMC44Mjg0TDMuNzAxOSAyMC4yOTgxSDMuNzAxOUwzLjE3MTU3IDIwLjgyODRaTTIwLjgyODQgMjAuODI4NEwyMC4yOTgxIDIwLjI5ODFMMjAuMjk4MSAyMC4yOTgxTDIwLjgyODQgMjAuODI4NFpNMTQgMjEuMjVIMTBWMjIuNzVIMTRWMjEuMjVaTTIuNzUgMTRWMTBIMS4yNVYxNEgyLjc1Wk0yMS4yNSAxMy41NjI5VjE0SDIyLjc1VjEzLjU2MjlIMjEuMjVaTTE0Ljg5MTIgNC42MTExMkwxOC44NSA4LjE3NDAyTDE5Ljg1MzQgNy4wNTkwN0wxNS44OTQ3IDMuNDk2MThMMTQuODkxMiA0LjYxMTEyWk0yMi43NSAxMy41NjI5QzIyLjc1IDExLjg3NDUgMjIuNzY1MSAxMC44MDU1IDIyLjMzOTEgOS44NDg5N0wyMC45Njg5IDEwLjQ1OTJDMjEuMjM0OSAxMS4wNTY1IDIxLjI1IDExLjc0MiAyMS4yNSAxMy41NjI5SDIyLjc1Wk0xOC44NSA4LjE3NDAyQzIwLjIwMzQgOS4zOTIxIDIwLjcwMjkgOS44NjE5OSAyMC45Njg5IDEwLjQ1OTJMMjIuMzM5MSA5Ljg0ODk3QzIxLjkxMzEgOC44OTI0MSAyMS4xMDg0IDguMTg4NTMgMTkuODUzNCA3LjA1OTA3TDE4Ljg1IDguMTc0MDJaTTEwLjAyOTggMi43NUMxMS42MTE2IDIuNzUgMTIuMjA4NSAyLjc2MTU4IDEyLjc0MDUgMi45NjU3M0wxMy4yNzc5IDEuNTY1M0MxMi40MjYxIDEuMjM4NDIgMTEuNDk4IDEuMjUgMTAuMDI5OCAxLjI1VjIuNzVaTTE1Ljg5NDcgMy40OTYxOEMxNC44MDg3IDIuNTE4NzggMTQuMTI5NyAxLjg5MjE0IDEzLjI3NzkgMS41NjUzTDEyLjc0MDUgMi45NjU3M0MxMy4yNzI3IDMuMTY5OTMgMTMuNzIxNSAzLjU1ODM2IDE0Ljg5MTIgNC42MTExMkwxNS44OTQ3IDMuNDk2MThaTTEwIDIxLjI1QzguMDkzMTggMjEuMjUgNi43Mzg1MSAyMS4yNDg0IDUuNzEwODUgMjEuMTEwMkM0LjcwNDc2IDIwLjk3NSA0LjEyNTExIDIwLjcyMTMgMy43MDE5IDIwLjI5ODFMMi42NDEyNCAyMS4zNTg4QzMuMzg5NjEgMjIuMTA3MSA0LjMzODU1IDIyLjQzOTIgNS41MTA5OCAyMi41OTY5QzYuNjYxODIgMjIuNzUxNiA4LjEzNTU4IDIyLjc1IDEwIDIyLjc1VjIxLjI1Wk0xLjI1IDE0QzEuMjUgMTUuODY0NCAxLjI0ODQxIDE3LjMzODIgMS40MDMxMyAxOC40ODlDMS41NjA3NiAxOS42NjE0IDEuODkyODggMjAuNjEwNCAyLjY0MTI0IDIxLjM1ODhMMy43MDE5IDIwLjI5ODFDMy4yNzg2OSAxOS44NzQ5IDMuMDI1MDIgMTkuMjk1MiAyLjg4OTc2IDE4LjI4OTJDMi43NTE1OSAxNy4yNjE1IDIuNzUgMTUuOTA2OCAyLjc1IDE0SDEuMjVaTTE0IDIyLjc1QzE1Ljg2NDQgMjIuNzUgMTcuMzM4MiAyMi43NTE2IDE4LjQ4OSAyMi41OTY5QzE5LjY2MTQgMjIuNDM5MiAyMC42MTA0IDIyLjEwNzEgMjEuMzU4OCAyMS4zNTg4TDIwLjI5ODEgMjAuMjk4MUMxOS44NzQ5IDIwLjcyMTMgMTkuMjk1MiAyMC45NzUgMTguMjg5MiAyMS4xMTAyQzE3LjI2MTUgMjEuMjQ4NCAxNS45MDY4IDIxLjI1IDE0IDIxLjI1VjIyLjc1Wk0yMS4yNSAxNEMyMS4yNSAxNS45MDY4IDIxLjI0ODQgMTcuMjYxNSAyMS4xMTAyIDE4LjI4OTJDMjAuOTc1IDE5LjI5NTIgMjAuNzIxMyAxOS44NzQ5IDIwLjI5ODEgMjAuMjk4MUwyMS4zNTg4IDIxLjM1ODhDMjIuMTA3MSAyMC42MTA0IDIyLjQzOTIgMTkuNjYxNCAyMi41OTY5IDE4LjQ4OUMyMi43NTE2IDE3LjMzODIgMjIuNzUgMTUuODY0NCAyMi43NSAxNEgyMS4yNVpNMi43NSAxMEMyLjc1IDguMDkzMTggMi43NTE1OSA2LjczODUxIDIuODg5NzYgNS43MTA4NUMzLjAyNTAyIDQuNzA0NzYgMy4yNzg2OSA0LjEyNTExIDMuNzAxOSAzLjcwMTlMMi42NDEyNCAyLjY0MTI0QzEuODkyODggMy4zODk2MSAxLjU2MDc2IDQuMzM4NTUgMS40MDMxMyA1LjUxMDk4QzEuMjQ4NDEgNi42NjE4MiAxLjI1IDguMTM1NTggMS4yNSAxMEgyLjc1Wk0xMC4wMjk4IDEuMjVDOC4xNTUzOCAxLjI1IDYuNjc0NDIgMS4yNDg0MiA1LjUxODg3IDEuNDAzMDdDNC4zNDIzMiAxLjU2MDU0IDMuMzkwMTkgMS44OTIzIDIuNjQxMjQgMi42NDEyNEwzLjcwMTkgMy43MDE5QzQuMTI0NTMgMy4yNzkyOCA0LjcwNTk2IDMuMDI1MjUgNS43MTc4NSAyLjg4OTgyQzYuNzUwNzUgMi43NTE1OCA4LjExMzExIDIuNzUgMTAuMDI5OCAyLjc1VjEuMjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEzIDIuNVY1QzEzIDcuMzU3MDIgMTMgOC41MzU1MyAxMy43MzIyIDkuMjY3NzdDMTQuNDY0NSAxMCAxNS42NDMgMTAgMTggMTBIMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPC9zdmc+Cg==) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIuMjUgMi44MzQyMkMxMS43ODk2IDIuNzU1OTggMTEuMTYyIDIuNzUwMDUgMTAuMDI5OCAyLjc1MDA1QzguMTEzMTEgMi43NTAwNSA2Ljc1MDc1IDIuNzUxNjMgNS43MTc4NSAyLjg4OTg3QzQuNzA1OTYgMy4wMjUzIDQuMTI0NTMgMy4yNzkzMyAzLjcwMTkgMy43MDE5NUMzLjI3ODY5IDQuMTI1MTYgMy4wMjUwMiA0LjcwNDgxIDIuODg5NzYgNS43MTA5QzIuNzUxNTkgNi43Mzg1NiAyLjc1IDguMDkzMjMgMi43NSAxMC4wMDAxVjE0LjAwMDFDMi43NSAxNS45MDY5IDIuNzUxNTkgMTcuMjYxNSAyLjg4OTc2IDE4LjI4OTJDMy4wMjUwMiAxOS4yOTUzIDMuMjc4NjkgMTkuODc0OSAzLjcwMTkgMjAuMjk4MUM0LjEyNTExIDIwLjcyMTQgNC43MDQ3NiAyMC45NzUgNS43MTA4NSAyMS4xMTAzQzYuNzM4NTEgMjEuMjQ4NSA4LjA5MzE4IDIxLjI1MDEgMTAgMjEuMjUwMUgxNEMxNS45MDY4IDIxLjI1MDEgMTcuMjYxNSAyMS4yNDg1IDE4LjI4OTIgMjEuMTEwM0MxOS4yOTUyIDIwLjk3NSAxOS44NzQ5IDIwLjcyMTQgMjAuMjk4MSAyMC4yOTgxQzIwLjcyMTMgMTkuODc0OSAyMC45NzUgMTkuMjk1MyAyMS4xMTAyIDE4LjI4OTJDMjEuMjQ4NCAxNy4yNjE1IDIxLjI1IDE1LjkwNjkgMjEuMjUgMTQuMDAwMVYxMy41NjI5QzIxLjI1IDEyLjAyNjkgMjEuMjM5MiAxMS4yOTg4IDIxLjA3NjIgMTAuNzUwMUgxNy45NDYzQzE2LjgxMzUgMTAuNzUwMSAxNS44ODc3IDEwLjc1MDEgMTUuMTU2OSAxMC42NTE4QzE0LjM5MjkgMTAuNTQ5MSAxMy43MzA2IDEwLjMyNjggMTMuMjAxOSA5Ljc5ODE1QzEyLjY3MzIgOS4yNjk0NSAxMi40NTA5IDguNjA3MTIgMTIuMzQ4MiA3Ljg0MzE3QzEyLjI1IDcuMTEyMyAxMi4yNSA2LjE4NjU3IDEyLjI1IDUuMDUzNzRWMi44MzQyMlpNMTMuNzUgMy42MDk1VjUuMDAwMDVDMTMuNzUgNi4xOTk3NiAxMy43NTE2IDcuMDI0MSAxMy44MzQ4IDcuNjQzMjlDMTMuOTE1MiA4LjI0MDkxIDE0LjA1OSA4LjUzMzk1IDE0LjI2MjYgOC43Mzc0OUMxNC40NjYxIDguOTQxMDMgMTQuNzU5MSA5LjA4NDg2IDE1LjM1NjggOS4xNjUyMUMxNS45NzYgOS4yNDg0NiAxNi44MDAzIDkuMjUwMDUgMTggOS4yNTAwNUgyMC4wMTk1QzE5LjcyMyA4Ljk2MjUgMTkuMzQzMiA4LjYxNzk3IDE4Ljg1IDguMTc0MDdMMTQuODkxMiA0LjYxMTE3QzE0LjQwNTggNC4xNzQzMyAxNC4wNDQ2IDMuODUxODcgMTMuNzUgMy42MDk1Wk0xMC4xNzU1IDEuMjUwMDJDMTEuNTYwMSAxLjI0OTY1IDEyLjQ1NDYgMS4yNDk0MiAxMy4yNzc5IDEuNTY1MzVDMTQuMTAxMiAxLjg4MTI5IDE0Ljc2MzIgMi40NzczNSAxNS43ODczIDMuMzk5NTVDMTUuODIyNiAzLjQzMTM5IDE1Ljg1ODQgMy40NjM2MSAxNS44OTQ3IDMuNDk2MjNMMTkuODUzNCA3LjA1OTEyQzE5Ljg5NTYgNy4wOTcwNSAxOS45MzcyIDcuMTM0NSAxOS45NzgzIDcuMTcxNDlDMjEuMTYyIDguMjM2MTQgMjEuOTI3NCA4LjkyNDU4IDIyLjMzOTEgOS44NDkwMkMyMi43NTA4IDEwLjc3MzQgMjIuNzUwNSAxMS44MDI5IDIyLjc1IDEzLjM5NDlDMjIuNzUgMTMuNDUwMiAyMi43NSAxMy41MDYyIDIyLjc1IDEzLjU2MjlWMTQuMDU2NUMyMi43NSAxNS44OTQyIDIyLjc1IDE3LjM0OTkgMjIuNTk2OSAxOC40ODkxQzIyLjQzOTIgMTkuNjYxNSAyMi4xMDcxIDIwLjYxMDQgMjEuMzU4OCAyMS4zNTg4QzIwLjYxMDQgMjIuMTA3MiAxOS42NjE0IDIyLjQzOTMgMTguNDg5IDIyLjU5NjlDMTcuMzQ5OCAyMi43NTAxIDE1Ljg5NDIgMjIuNzUwMSAxNC4wNTY0IDIyLjc1MDFIOS45NDM1OUM4LjEwNTgzIDIyLjc1MDEgNi42NTAxOSAyMi43NTAxIDUuNTEwOTggMjIuNTk2OUM0LjMzODU2IDIyLjQzOTMgMy4zODk2MSAyMi4xMDcyIDIuNjQxMjQgMjEuMzU4OEMxLjg5Mjg4IDIwLjYxMDQgMS41NjA3NiAxOS42NjE1IDEuNDAzMTQgMTguNDg5MUMxLjI0OTk3IDE3LjM0OTkgMS4yNDk5OCAxNS44OTQyIDEuMjUgMTQuMDU2NVY5Ljk0MzYzQzEuMjQ5OTggOC4xMDU4NyAxLjI0OTk3IDYuNjUwMjQgMS40MDMxNCA1LjUxMTAzQzEuNTYwNzYgNC4zMzg2MSAxLjg5Mjg4IDMuMzg5NjYgMi42NDEyNCAyLjY0MTI5QzMuMzkwMTkgMS44OTIzNSA0LjM0MjMyIDEuNTYwNTkgNS41MTg4NyAxLjQwMzEzQzYuNjYyODMgMS4yNTAwMiA4LjEyNTcgMS4yNTAwMyA5Ljk3MzUyIDEuMjUwMDVMMTAuMDI5OCAxLjI1MDA1QzEwLjA3ODkgMS4yNTAwNSAxMC4xMjc1IDEuMjUwMDQgMTAuMTc1NSAxLjI1MDAyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) Outline
 */
const File: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props} weights={weights} />
))

File.displayName = "File"
export default File