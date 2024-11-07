/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import IconBase from "../../lib/IconBase"
import weights from "../../defs/devices/AirbudsCase"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zLjAwMTU2IDkuNzVDMyAxMC4xNDIxIDMgMTAuNTU4IDMgMTFWMTNDMyAxNi43NDk3IDMgMTguNjI0NiAzLjk1NDkxIDE5LjkzODlDNC4yNjMzMSAyMC4zNjM0IDQuNjM2NiAyMC43MzY3IDUuMDYxMDcgMjEuMDQ1MUM2LjM3NTQgMjIgOC4yNTAyNyAyMiAxMiAyMkMxNS43NDk3IDIyIDE3LjYyNDYgMjIgMTguOTM4OSAyMS4wNDUxQzE5LjM2MzQgMjAuNzM2NyAxOS43MzY3IDIwLjM2MzQgMjAuMDQ1MSAxOS45Mzg5QzIxIDE4LjYyNDYgMjEgMTYuNzQ5NyAyMSAxM1YxMUMyMSAxMC41NTggMjEgMTAuMTQyMSAyMC45OTg0IDkuNzVIMTcuNjQ2NUMxNy4zMiAxMC45MDQzIDE2LjI1ODggMTEuNzUgMTUgMTEuNzVIOUM3Ljc0MTIyIDExLjc1IDYuNjc5OTggMTAuOTA0MyA2LjM1MzUyIDkuNzVIMy4wMDE1NloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTMuMDIxMjkgOC4yNUg2LjM1MzUyQzYuNjc5OTggNy4wOTU3NSA3Ljc0MTIyIDYuMjUgOSA2LjI1SDE1QzE2LjI1ODggNi4yNSAxNy4zMiA3LjA5NTc1IDE3LjY0NjUgOC4yNUgyMC45Nzg3QzIwLjkyNDMgNi4yMzkyNCAyMC43MzEyIDUuMDA1NDYgMjAuMDQ1MSA0LjA2MTA3QzE5LjczNjcgMy42MzY2IDE5LjM2MzQgMy4yNjMzMSAxOC45Mzg5IDIuOTU0OTFDMTcuNjI0NiAyIDE1Ljc0OTcgMiAxMiAyQzguMjUwMjcgMiA2LjM3NTQgMiA1LjA2MTA3IDIuOTU0OTFDNC42MzY2IDMuMjYzMzEgNC4yNjMzMSAzLjYzNjYgMy45NTQ5MSA0LjA2MTA3QzMuMjY4NzggNS4wMDU0NiAzLjA3NTY1IDYuMjM5MjQgMy4wMjEyOSA4LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNNy43NSA5QzcuNzUgOC4zMDk2NCA4LjMwOTY0IDcuNzUgOSA3Ljc1SDE1QzE1LjY5MDQgNy43NSAxNi4yNSA4LjMwOTY0IDE2LjI1IDlDMTYuMjUgOS42OTAzNiAxNS42OTA0IDEwLjI1IDE1IDEwLjI1SDlDOC4zMDk2NCAxMC4yNSA3Ljc1IDkuNjkwMzYgNy43NSA5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zLjAwMTU2IDkuNzVDMyAxMC4xNDIxIDMgMTAuNTU4IDMgMTFWMTNDMyAxNi43NDk3IDMgMTguNjI0NiAzLjk1NDkxIDE5LjkzODlDNC4yNjMzMSAyMC4zNjM0IDQuNjM2NiAyMC43MzY3IDUuMDYxMDcgMjEuMDQ1MUM2LjM3NTQgMjIgOC4yNTAyNyAyMiAxMiAyMkMxNS43NDk3IDIyIDE3LjYyNDYgMjIgMTguOTM4OSAyMS4wNDUxQzE5LjM2MzQgMjAuNzM2NyAxOS43MzY3IDIwLjM2MzQgMjAuMDQ1MSAxOS45Mzg5QzIxIDE4LjYyNDYgMjEgMTYuNzQ5NyAyMSAxM1YxMUMyMSAxMC41NTggMjEgMTAuMTQyMSAyMC45OTg0IDkuNzVIMTcuNjQ2NUMxNy4zMiAxMC45MDQzIDE2LjI1ODggMTEuNzUgMTUgMTEuNzVIOUM3Ljc0MTIyIDExLjc1IDYuNjc5OTggMTAuOTA0MyA2LjM1MzUyIDkuNzVIMy4wMDE1NloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMy4wMjE0OCA4LjI1SDYuMzUzNzFDNi42ODAxNyA3LjA5NTc1IDcuNzQxNDEgNi4yNSA5LjAwMDE5IDYuMjVIMTUuMDAwMkMxNi4yNTkgNi4yNSAxNy4zMjAyIDcuMDk1NzUgMTcuNjQ2NyA4LjI1SDIwLjk3ODlDMjAuOTI0NSA2LjIzOTI0IDIwLjczMTQgNS4wMDU0NiAyMC4wNDUzIDQuMDYxMDdDMTkuNzM2OSAzLjYzNjYgMTkuMzYzNiAzLjI2MzMxIDE4LjkzOTEgMi45NTQ5MUMxNy42MjQ4IDIgMTUuNzQ5OSAyIDEyLjAwMDIgMkM4LjI1MDQ2IDIgNi4zNzU1OSAyIDUuMDYxMjYgMi45NTQ5MUM0LjYzNjc5IDMuMjYzMzEgNC4yNjM1IDMuNjM2NiAzLjk1NTExIDQuMDYxMDdDMy4yNjg5NyA1LjAwNTQ2IDMuMDc1ODQgNi4yMzkyNCAzLjAyMTQ4IDguMjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNyIgZD0iTTcuNzUgOUM3Ljc1IDguMzA5NjQgOC4zMDk2NCA3Ljc1IDkgNy43NUgxNUMxNS42OTA0IDcuNzUgMTYuMjUgOC4zMDk2NCAxNi4yNSA5QzE2LjI1IDkuNjkwMzYgMTUuNjkwNCAxMC4yNSAxNSAxMC4yNUg5QzguMzA5NjQgMTAuMjUgNy43NSA5LjY5MDM2IDcuNzUgOVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zIDEzVjExQzMgNy4yNTAyNyAzIDUuMzc1NCAzLjk1NDkxIDQuMDYxMDdDNC4yNjMzMSAzLjYzNjYgNC42MzY2IDMuMjYzMzEgNS4wNjEwNyAyLjk1NDkxQzYuMzc1NCAyIDguMjUwMjcgMiAxMiAyQzE1Ljc0OTcgMiAxNy42MjQ2IDIgMTguOTM4OSAyLjk1NDkxQzE5LjM2MzQgMy4yNjMzMSAxOS43MzY3IDMuNjM2NiAyMC4wNDUxIDQuMDYxMDdDMjEgNS4zNzU0IDIxIDcuMjUwMjcgMjEgMTFWMTNDMjEgMTYuNzQ5NyAyMSAxOC42MjQ2IDIwLjA0NTEgMTkuOTM4OUMxOS43MzY3IDIwLjM2MzQgMTkuMzYzNCAyMC43MzY3IDE4LjkzODkgMjEuMDQ1MUMxNy42MjQ2IDIyIDE1Ljc0OTcgMjIgMTIgMjJDOC4yNTAyNyAyMiA2LjM3NTQgMjIgNS4wNjEwNyAyMS4wNDUxQzQuNjM2NiAyMC43MzY3IDQuMjYzMzEgMjAuMzYzNCAzLjk1NDkxIDE5LjkzODlDMy40MjM4NiAxOS4yMDggMy4xODgxNCAxOC4zMDM3IDMuMDgzNTEgMTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUgN0MxNi4xMDQ2IDcgMTcgNy44OTU0MyAxNyA5QzE3IDEwLjEwNDYgMTYuMTA0NiAxMSAxNSAxMUg5QzcuODk1NDMgMTEgNyAxMC4xMDQ2IDcgOUM3IDcuODk1NDMgNy44OTU0MyA3IDkgN0gxMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMSA5SDE3LjVNNyA5SDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPC9zdmc+Cg==) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zIDExQzMgNy4yNTAyNyAzIDUuMzc1NCAzLjk1NDkxIDQuMDYxMDdDNC4yNjMzMSAzLjYzNjYgNC42MzY2IDMuMjYzMzEgNS4wNjEwNyAyLjk1NDkxQzYuMzc1NCAyIDguMjUwMjcgMiAxMiAyQzE1Ljc0OTcgMiAxNy42MjQ2IDIgMTguOTM4OSAyLjk1NDkxQzE5LjM2MzQgMy4yNjMzMSAxOS43MzY3IDMuNjM2NiAyMC4wNDUxIDQuMDYxMDdDMjEgNS4zNzU0IDIxIDcuMjUwMjcgMjEgMTFWMTNDMjEgMTYuNzQ5NyAyMSAxOC42MjQ2IDIwLjA0NTEgMTkuOTM4OUMxOS43MzY3IDIwLjM2MzQgMTkuMzYzNCAyMC43MzY3IDE4LjkzODkgMjEuMDQ1MUMxNy42MjQ2IDIyIDE1Ljc0OTcgMjIgMTIgMjJDOC4yNTAyNyAyMiA2LjM3NTQgMjIgNS4wNjEwNyAyMS4wNDUxQzQuNjM2NiAyMC43MzY3IDQuMjYzMzEgMjAuMzYzNCAzLjk1NDkxIDE5LjkzODlDMyAxOC42MjQ2IDMgMTYuNzQ5NyAzIDEzVjExWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNNyA5QzcgNy44OTU0MyA3Ljg5NTQzIDcgOSA3SDE1QzE2LjEwNDYgNyAxNyA3Ljg5NTQzIDE3IDlDMTcgMTAuMTA0NiAxNi4xMDQ2IDExIDE1IDExSDlDNy44OTU0MyAxMSA3IDEwLjEwNDYgNyA5WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNMjEgOUgxNy41TTcgOUgzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+Cjwvc3ZnPgo=) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zIDExQzMgNy4yNTAyNyAzIDUuMzc1NCAzLjk1NDkxIDQuMDYxMDdDNC4yNjMzMSAzLjYzNjYgNC42MzY2IDMuMjYzMzEgNS4wNjEwNyAyLjk1NDkxQzYuMzc1NCAyIDguMjUwMjcgMiAxMiAyQzE1Ljc0OTcgMiAxNy42MjQ2IDIgMTguOTM4OSAyLjk1NDkxQzE5LjM2MzQgMy4yNjMzMSAxOS43MzY3IDMuNjM2NiAyMC4wNDUxIDQuMDYxMDdDMjEgNS4zNzU0IDIxIDcuMjUwMjcgMjEgMTFWMTNDMjEgMTYuNzQ5NyAyMSAxOC42MjQ2IDIwLjA0NTEgMTkuOTM4OUMxOS43MzY3IDIwLjM2MzQgMTkuMzYzNCAyMC43MzY3IDE4LjkzODkgMjEuMDQ1MUMxNy42MjQ2IDIyIDE1Ljc0OTcgMjIgMTIgMjJDOC4yNTAyNyAyMiA2LjM3NTQgMjIgNS4wNjEwNyAyMS4wNDUxQzQuNjM2NiAyMC43MzY3IDQuMjYzMzEgMjAuMzYzNCAzLjk1NDkxIDE5LjkzODlDMyAxOC42MjQ2IDMgMTYuNzQ5NyAzIDEzVjExWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNNyA5QzcgNy44OTU0MyA3Ljg5NTQzIDcgOSA3SDE1QzE2LjEwNDYgNyAxNyA3Ljg5NTQzIDE3IDlDMTcgMTAuMTA0NiAxNi4xMDQ2IDExIDE1IDExSDlDNy44OTU0MyAxMSA3IDEwLjEwNDYgNyA5WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0yMSA5SDE3LjVNNyA5SDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPC9zdmc+Cg==) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTEuOTU0OCAxLjI1SDEyLjA0NTJDMTMuODgxOCAxLjI0OTk5IDE1LjMyMTQgMS4yNDk5OSAxNi40NjM1IDEuMzczNzNDMTcuNjI5MSAxLjUwMDAxIDE4LjU3MzQgMS43NjIzMiAxOS4zNzk4IDIuMzQ4MTVDMTkuODY3OSAyLjcwMjgxIDIwLjI5NzIgMy4xMzIwOSAyMC42NTE4IDMuNjIwMjRDMjEuMjM3NyA0LjQyNjU2IDIxLjUgNS4zNzA5NCAyMS42MjYzIDYuNTM2NDhDMjEuNzUgNy42Nzg2MSAyMS43NSA5LjExODIgMjEuNzUgMTAuOTU0N1YxMy4wNDUzQzIxLjc1IDE0Ljg4MTggMjEuNzUgMTYuMzIxNCAyMS42MjYzIDE3LjQ2MzVDMjEuNSAxOC42MjkxIDIxLjIzNzcgMTkuNTczNCAyMC42NTE4IDIwLjM3OThDMjAuMjk3MiAyMC44Njc5IDE5Ljg2NzkgMjEuMjk3MiAxOS4zNzk4IDIxLjY1MThDMTguNTczNCAyMi4yMzc3IDE3LjYyOTEgMjIuNSAxNi40NjM1IDIyLjYyNjNDMTUuMzIxNCAyMi43NSAxMy44ODE4IDIyLjc1IDEyLjA0NTMgMjIuNzVIMTEuOTU0N0MxMC4xMTgyIDIyLjc1IDguNjc4NjEgMjIuNzUgNy41MzY0OCAyMi42MjYzQzYuMzcwOTQgMjIuNSA1LjQyNjU2IDIyLjIzNzcgNC42MjAyNCAyMS42NTE4QzQuMTMyMDkgMjEuMjk3MiAzLjcwMjgxIDIwLjg2NzkgMy4zNDgxNSAyMC4zNzk4QzIuNzYyMzIgMTkuNTczNCAyLjUwMDAxIDE4LjYyOTEgMi4zNzM3MyAxNy40NjM1QzIuMjQ5OTkgMTYuMzIxNCAyLjI0OTk5IDE0Ljg4MTggMi4yNSAxMy4wNDUyVjEwLjk1NDhDMi4yNDk5OSA5LjExODIxIDIuMjQ5OTkgNy42Nzg2MSAyLjM3MzczIDYuNTM2NDhDMi41MDAwMSA1LjM3MDk0IDIuNzYyMzIgNC40MjY1NiAzLjM0ODE1IDMuNjIwMjRDMy43MDI4MSAzLjEzMjA5IDQuMTMyMDkgMi43MDI4MSA0LjYyMDI0IDIuMzQ4MTVDNS40MjY1NiAxLjc2MjMyIDYuMzcwOTQgMS41MDAwMSA3LjUzNjQ4IDEuMzczNzNDOC42Nzg2MSAxLjI0OTk5IDEwLjExODIgMS4yNDk5OSAxMS45NTQ4IDEuMjVaTTcuNjk4MDUgMi44NjVDNi42NjAxMyAyLjk3NzQ1IDYuMDA5OTIgMy4xOTI1OSA1LjUwMTkxIDMuNTYxNjhDNS4xNDExMSAzLjgyMzgyIDQuODIzODIgNC4xNDExMSA0LjU2MTY4IDQuNTAxOTFDNC4xOTI1OSA1LjAwOTkyIDMuOTc3NDUgNS42NjAxMyAzLjg2NSA2LjY5ODA1QzMuODE1OCA3LjE1MjE3IDMuNzg3NjUgNy42NjM0MSAzLjc3MTU0IDguMjVINi4zNTM1MkM2LjY3OTk4IDcuMDk1NzUgNy43NDEyMiA2LjI1IDkgNi4yNUgxNUMxNi4yNTg4IDYuMjUgMTcuMzIgNy4wOTU3NSAxNy42NDY1IDguMjVIMjAuMjI4NUMyMC4yMTI0IDcuNjYzNDEgMjAuMTg0MiA3LjE1MjE3IDIwLjEzNSA2LjY5ODA1QzIwLjAyMjUgNS42NjAxMyAxOS44MDc0IDUuMDA5OTIgMTkuNDM4MyA0LjUwMTkxQzE5LjE3NjIgNC4xNDExMSAxOC44NTg5IDMuODIzODIgMTguNDk4MSAzLjU2MTY4QzE3Ljk5MDEgMy4xOTI1OSAxNy4zMzk5IDIuOTc3NDUgMTYuMzAyIDIuODY1QzE1LjI1IDIuNzUxMDMgMTMuODkxNiAyLjc1IDEyIDIuNzVDMTAuMTA4NCAyLjc1IDguNzQ5OTkgMi43NTEwMyA3LjY5ODA1IDIuODY1Wk0yMC4yNDg0IDkuNzVIMTcuNjQ2NUMxNy4zMiAxMC45MDQzIDE2LjI1ODggMTEuNzUgMTUgMTEuNzVIOUM3Ljc0MTIyIDExLjc1IDYuNjc5OTggMTAuOTA0MyA2LjM1MzUyIDkuNzVIMy43NTE2M0MzLjc1MDA2IDEwLjEzOTEgMy43NSAxMC41NTQ4IDMuNzUgMTFWMTNDMy43NSAxNC44OTE2IDMuNzUxMDMgMTYuMjUgMy44NjUgMTcuMzAyQzMuOTc3NDUgMTguMzM5OSA0LjE5MjU5IDE4Ljk5MDEgNC41NjE2OCAxOS40OTgxQzQuODIzODIgMTkuODU4OSA1LjE0MTExIDIwLjE3NjIgNS41MDE5MSAyMC40MzgzQzYuMDA5OTIgMjAuODA3NCA2LjY2MDEzIDIxLjAyMjUgNy42OTgwNSAyMS4xMzVDOC43NDk5OSAyMS4yNDkgMTAuMTA4NCAyMS4yNSAxMiAyMS4yNUMxMy44OTE2IDIxLjI1IDE1LjI1IDIxLjI0OSAxNi4zMDIgMjEuMTM1QzE3LjMzOTkgMjEuMDIyNSAxNy45OTAxIDIwLjgwNzQgMTguNDk4MSAyMC40MzgzQzE4Ljg1ODkgMjAuMTc2MiAxOS4xNzYyIDE5Ljg1ODkgMTkuNDM4MyAxOS40OTgxQzE5LjgwNzQgMTguOTkwMSAyMC4wMjI1IDE4LjMzOTkgMjAuMTM1IDE3LjMwMkMyMC4yNDkgMTYuMjUgMjAuMjUgMTQuODkxNiAyMC4yNSAxM1YxMUMyMC4yNSAxMC41NTQ4IDIwLjI0OTkgMTAuMTM5MSAyMC4yNDg0IDkuNzVaTTkgNy43NUM4LjMwOTY0IDcuNzUgNy43NSA4LjMwOTY0IDcuNzUgOUM3Ljc1IDkuNjkwMzYgOC4zMDk2NCAxMC4yNSA5IDEwLjI1SDE1QzE1LjY5MDQgMTAuMjUgMTYuMjUgOS42OTAzNiAxNi4yNSA5QzE2LjI1IDguMzA5NjQgMTUuNjkwNCA3Ljc1IDE1IDcuNzVIOVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==) Outline
 */
const AirbudsCase: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props} weights={weights} />
))

AirbudsCase.displayName = "AirbudsCase"
export default AirbudsCase
