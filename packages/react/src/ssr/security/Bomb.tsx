/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import SSRBase from "../../lib/SSRBase"
import weights from "../../defs/security/Bomb"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNyAxNC41QzE3IDE4LjY0MjEgMTMuNjQyMSAyMiA5LjUgMjJDNS4zNTc4NiAyMiAyIDE4LjY0MjEgMiAxNC41QzIgMTAuMzU3OSA1LjM1Nzg2IDcgOS41IDdDMTMuNjQyMSA3IDE3IDEwLjM1NzkgMTcgMTQuNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE3Ljk4MTEgMi4zNTMxNkMxOC4xNjY4IDEuODgyMjggMTguODMzMiAxLjg4MjI4IDE5LjAxODkgMi4zNTMxNkwxOS42NzMzIDQuMDEyNDJDMTkuNzMgNC4xNTYxOCAxOS44NDM4IDQuMjY5OTggMTkuOTg3NiA0LjMyNjY4TDIxLjY0NjggNC45ODEwOEMyMi4xMTc3IDUuMTY2NzkgMjIuMTE3NyA1LjgzMzIxIDIxLjY0NjggNi4wMTg5MkwxOS45ODc2IDYuNjczMzJDMTkuODQzOCA2LjczMDAyIDE5LjczIDYuODQzODIgMTkuNjczMyA2Ljk4NzU4TDE5LjAxODkgOC42NDY4NEMxOC44MzMyIDkuMTE3NzIgMTguMTY2OCA5LjExNzcyIDE3Ljk4MTEgOC42NDY4NEwxNy4zMjY3IDYuOTg3NThDMTcuMjcgNi44NDM4MiAxNy4xNTYyIDYuNzMwMDIgMTcuMDEyNCA2LjY3MzMyTDE1LjM1MzIgNi4wMTg5MkMxNC44ODIzIDUuODMzMjEgMTQuODgyMyA1LjE2Njc5IDE1LjM1MzIgNC45ODEwOEwxNy4wMTI0IDQuMzI2NjhDMTcuMTU2MiA0LjI2OTk4IDE3LjI3IDQuMTU2MTggMTcuMzI2NyA0LjAxMjQyTDE3Ljk4MTEgMi4zNTMxNloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE2LjAxNzUgOS4wNDMyOEwxNi43NjY5IDguMjkzODZMMTYuNDY2OSA3LjUzMzEyTDE1LjcwNjMgNy4yMzMxNUwxNC45NTY4IDcuOTgyNjFDMTUuMzQwNyA4LjMwNDM2IDE1LjY5NTcgOC42NTk0IDE2LjAxNzUgOS4wNDMyOFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTkuNSAyMkMxMy42NDIxIDIyIDE3IDE4LjY0MjEgMTcgMTQuNUMxNyAxMC4zNTc5IDEzLjY0MjEgNyA5LjUgN0M1LjM1Nzg2IDcgMiAxMC4zNTc5IDIgMTQuNUMyIDE4LjY0MjEgNS4zNTc4NiAyMiA5LjUgMjJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNy45ODExIDIuMzUzMTZDMTguMTY2OCAxLjg4MjI4IDE4LjgzMzIgMS44ODIyOCAxOS4wMTg5IDIuMzUzMTZMMTkuNjczMyA0LjAxMjQyQzE5LjczIDQuMTU2MTggMTkuODQzOCA0LjI2OTk4IDE5Ljk4NzYgNC4zMjY2OEwyMS42NDY4IDQuOTgxMDhDMjIuMTE3NyA1LjE2Njc5IDIyLjExNzcgNS44MzMyMSAyMS42NDY4IDYuMDE4OTJMMTkuOTg3NiA2LjY3MzMyQzE5Ljg0MzggNi43MzAwMiAxOS43MyA2Ljg0MzgyIDE5LjY3MzMgNi45ODc1OEwxOS4wMTg5IDguNjQ2ODRDMTguODMzMiA5LjExNzcyIDE4LjE2NjggOS4xMTc3MiAxNy45ODExIDguNjQ2ODRMMTcuMzI2NyA2Ljk4NzU4QzE3LjI3IDYuODQzODIgMTcuMTU2MiA2LjczMDAyIDE3LjAxMjQgNi42NzMzMkwxNS4zNTMyIDYuMDE4OTJDMTQuODgyMyA1LjgzMzIxIDE0Ljg4MjMgNS4xNjY3OSAxNS4zNTMyIDQuOTgxMDhMMTcuMDEyNCA0LjMyNjY4QzE3LjE1NjIgNC4yNjk5OCAxNy4yNyA0LjE1NjE4IDE3LjMyNjcgNC4wMTI0MkwxNy45ODExIDIuMzUzMTZaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNyIgZD0iTTE2LjQ3NzIgNi40NjE5MUwxNC4yNDY2IDguNjkyNTdDMTQuNjM0NCA5LjAwOTk1IDE0Ljk4OTkgOS4zNjU0MSAxNS4zMDcyIDkuNzUzMjVMMTcuNTM3OCA3LjUyMjZMMTcuMzI2NyA2Ljk4NzI3QzE3LjI3IDYuODQzNTEgMTcuMTU2MiA2LjcyOTcxIDE3LjAxMjQgNi42NzMwMUwxNi40NzcyIDYuNDYxOTFaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik01Ljc1IDguMDAzMzdDNi44NTMxNSA3LjM2NTIzIDguMTMzOTIgNyA5LjUgN0MxMy42NDIxIDcgMTcgMTAuMzU3OSAxNyAxNC41QzE3IDE4LjY0MjEgMTMuNjQyMSAyMiA5LjUgMjJDNS4zNTc4NiAyMiAyIDE4LjY0MjEgMiAxNC41QzIgMTMuMTMzOSAyLjM2NTIzIDExLjg1MzIgMy4wMDMzNyAxMC43NSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNyA3TDE1IDkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTcuOTgxMSAyLjM1MzE2QzE4LjE2NjggMS44ODIyOCAxOC44MzMyIDEuODgyMjggMTkuMDE4OSAyLjM1MzE2TDE5LjY3MzMgNC4wMTI0MkMxOS43MyA0LjE1NjE4IDE5Ljg0MzggNC4yNjk5OCAxOS45ODc2IDQuMzI2NjhMMjEuNjQ2OCA0Ljk4MTA4QzIyLjExNzcgNS4xNjY3OSAyMi4xMTc3IDUuODMzMjEgMjEuNjQ2OCA2LjAxODkyTDE5Ljk4NzYgNi42NzMzMkMxOS44NDM4IDYuNzMwMDIgMTkuNzMgNi44NDM4MiAxOS42NzMzIDYuOTg3NThMMTkuMDE4OSA4LjY0Njg0QzE4LjgzMzIgOS4xMTc3MiAxOC4xNjY4IDkuMTE3NzIgMTcuOTgxMSA4LjY0Njg0TDE3LjMyNjcgNi45ODc1OEMxNy4yNyA2Ljg0MzgyIDE3LjE1NjIgNi43MzAwMiAxNy4wMTI0IDYuNjczMzJMMTUuMzUzMiA2LjAxODkyQzE0Ljg4MjMgNS44MzMyMSAxNC44ODIzIDUuMTY2NzkgMTUuMzUzMiA0Ljk4MTA4TDE3LjAxMjQgNC4zMjY2OEMxNy4xNTYyIDQuMjY5OTggMTcuMjcgNC4xNTYxOCAxNy4zMjY3IDQuMDEyNDJMMTcuOTgxMSAyLjM1MzE2WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjkuNSIgY3k9IjE0LjUiIHI9IjcuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNMTcgN0wxNSA5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE3Ljk4MTEgMi4zNTMxNkMxOC4xNjY4IDEuODgyMjggMTguODMzMiAxLjg4MjI4IDE5LjAxODkgMi4zNTMxNkwxOS42NzMzIDQuMDEyNDJDMTkuNzMgNC4xNTYxOCAxOS44NDM4IDQuMjY5OTggMTkuOTg3NiA0LjMyNjY4TDIxLjY0NjggNC45ODEwOEMyMi4xMTc3IDUuMTY2NzkgMjIuMTE3NyA1LjgzMzIxIDIxLjY0NjggNi4wMTg5MkwxOS45ODc2IDYuNjczMzJDMTkuODQzOCA2LjczMDAyIDE5LjczIDYuODQzODIgMTkuNjczMyA2Ljk4NzU4TDE5LjAxODkgOC42NDY4NEMxOC44MzMyIDkuMTE3NzIgMTguMTY2OCA5LjExNzcyIDE3Ljk4MTEgOC42NDY4NEwxNy4zMjY3IDYuOTg3NThDMTcuMjcgNi44NDM4MiAxNy4xNTYyIDYuNzMwMDIgMTcuMDEyNCA2LjY3MzMyTDE1LjM1MzIgNi4wMTg5MkMxNC44ODIzIDUuODMzMjEgMTQuODgyMyA1LjE2Njc5IDE1LjM1MzIgNC45ODEwOEwxNy4wMTI0IDQuMzI2NjhDMTcuMTU2MiA0LjI2OTk4IDE3LjI3IDQuMTU2MTggMTcuMzI2NyA0LjAxMjQyTDE3Ljk4MTEgMi4zNTMxNloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPC9zdmc+Cg==) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjkuNSIgY3k9IjE0LjUiIHI9IjcuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xNyA3TDE1IDkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTcuOTgxMSAyLjM1MzE2QzE4LjE2NjggMS44ODIyOCAxOC44MzMyIDEuODgyMjggMTkuMDE4OSAyLjM1MzE2TDE5LjY3MzMgNC4wMTI0MkMxOS43MyA0LjE1NjE4IDE5Ljg0MzggNC4yNjk5OCAxOS45ODc2IDQuMzI2NjhMMjEuNjQ2OCA0Ljk4MTA4QzIyLjExNzcgNS4xNjY3OSAyMi4xMTc3IDUuODMzMjEgMjEuNjQ2OCA2LjAxODkyTDE5Ljk4NzYgNi42NzMzMkMxOS44NDM4IDYuNzMwMDIgMTkuNzMgNi44NDM4MiAxOS42NzMzIDYuOTg3NThMMTkuMDE4OSA4LjY0Njg0QzE4LjgzMzIgOS4xMTc3MiAxOC4xNjY4IDkuMTE3NzIgMTcuOTgxMSA4LjY0Njg0TDE3LjMyNjcgNi45ODc1OEMxNy4yNyA2Ljg0MzgyIDE3LjE1NjIgNi43MzAwMiAxNy4wMTI0IDYuNjczMzJMMTUuMzUzMiA2LjAxODkyQzE0Ljg4MjMgNS44MzMyMSAxNC44ODIzIDUuMTY2NzkgMTUuMzUzMiA0Ljk4MTA4TDE3LjAxMjQgNC4zMjY2OEMxNy4xNTYyIDQuMjY5OTggMTcuMjcgNC4xNTYxOCAxNy4zMjY3IDQuMDEyNDJMMTcuOTgxMSAyLjM1MzE2WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTkuNzE2NiAyLjA3Nzk5QzE5LjI4MTIgMC45NzQwMDIgMTcuNzE4OCAwLjk3NDAwMiAxNy4yODM0IDIuMDc3OTlMMTYuNjU5NiAzLjY1OTZMMTUuMDc4IDQuMjgzMzhDMTMuOTc0IDQuNzE4NzkgMTMuOTc0IDYuMjgxMjEgMTUuMDc4IDYuNzE2NjJMMTUuODk4OSA3LjA0MDRMMTQuNzc5MyA4LjE2MDA1QzEzLjM0ODcgNi45Njc0NyAxMS41MDgxIDYuMjUgOS41IDYuMjVDNC45NDM2NSA2LjI1IDEuMjUgOS45NDM2NSAxLjI1IDE0LjVDMS4yNSAxOS4wNTYzIDQuOTQzNjUgMjIuNzUgOS41IDIyLjc1QzE0LjA1NjMgMjIuNzUgMTcuNzUgMTkuMDU2MyAxNy43NSAxNC41QzE3Ljc1IDEyLjQ5MTkgMTcuMDMyNSAxMC42NTEzIDE1Ljg0IDkuMjIwNzFMMTYuOTU5NiA4LjEwMTA2TDE3LjI4MzQgOC45MjIwMUMxNy43MTg4IDEwLjAyNiAxOS4yODEyIDEwLjAyNiAxOS43MTY2IDguOTIyMDFMMjAuMzQwNCA3LjM0MDRMMjEuOTIyIDYuNzE2NjJDMjMuMDI2IDYuMjgxMjEgMjMuMDI2IDQuNzE4NzkgMjEuOTIyIDQuMjgzMzhMMjAuMzQwNCAzLjY1OTZMMTkuNzE2NiAyLjA3Nzk5Wk0xOC4wMjQ0IDQuMjg3NThMMTguNSAzLjA4MTYyTDE4Ljk3NTYgNC4yODc1OEMxOS4xMDg2IDQuNjI0NjQgMTkuMzc1NCA0Ljg5MTQ0IDE5LjcxMjQgNS4wMjQzOEwyMC45MTg0IDUuNUwxOS43MTI0IDUuOTc1NjJDMTkuMzc1NCA2LjEwODU2IDE5LjEwODYgNi4zNzUzNiAxOC45NzU2IDYuNzEyNDJMMTguNSA3LjkxODM4TDE4LjAyNDQgNi43MTI0MkMxNy44OTE0IDYuMzc1MzYgMTcuNjI0NiA2LjEwODU2IDE3LjI4NzYgNS45NzU2MkwxNi4wODE2IDUuNUwxNy4yODc2IDUuMDI0MzhDMTcuNjI0NiA0Ljg5MTQ0IDE3Ljg5MTQgNC42MjQ2NCAxOC4wMjQ0IDQuMjg3NThaTTkuNSA3Ljc1QzUuNzcyMDggNy43NSAyLjc1IDEwLjc3MjEgMi43NSAxNC41QzIuNzUgMTguMjI3OSA1Ljc3MjA4IDIxLjI1IDkuNSAyMS4yNUMxMy4yMjc5IDIxLjI1IDE2LjI1IDE4LjIyNzkgMTYuMjUgMTQuNUMxNi4yNSAxMC43NzIxIDEzLjIyNzkgNy43NSA5LjUgNy43NVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==) Outline
 */
const Bomb: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <SSRBase ref={ref} {...props} weights={weights} />
))

Bomb.displayName = "Bomb"
export default Bomb
