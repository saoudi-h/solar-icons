/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import IconBase from "../../lib/IconBase"
import weights from "../../defs/map/StreetsMapPoint"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMS44ODkxIDcuMTcxNjVDMjIgOC40MzMxNiAyMiAxMC4wMDU2IDIyIDEyQzIyIDE2LjEzMzcgMjIgMTguNDU0OSAyMS4wMTI2IDE5Ljk1MTNMMTUuMDYxMSAxMy45OTk4TDIxLjg4OTEgNy4xNzE2NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE5Ljk1MiAyMS4wMTIxTDE0LjAwMDQgMTUuMDYwNUw3LjE3MTY3IDIxLjg4OTFDOC40MzMxNyAyMiAxMC4wMDU2IDIyIDEyIDIyQzE2LjEzNDMgMjIgMTguNDU1NyAyMiAxOS45NTIgMjEuMDEyMVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyQzE2LjcxNCAyIDE5LjA3MTEgMiAyMC41MzU1IDMuNDY0NDdDMjEuMDM5NCAzLjk2ODMzIDIxLjM2OTkgNC41Nzc4NiAyMS41ODY3IDUuMzUyN0w1LjM1MjcgMjEuNTg2N0M0LjU3Nzg2IDIxLjM2OTkgMy45NjgzMyAyMS4wMzk0IDMuNDY0NDcgMjAuNTM1NUMyIDE5LjA3MTEgMiAxNi43MTQgMiAxMkMyIDcuMjg1OTUgMiA0LjkyODkzIDMuNDY0NDcgMy40NjQ0N0M0LjkyODkzIDIgNy4yODU5NSAyIDEyIDJaTTUuNSA4Ljc1NzMyQzUuNSAxMC41NDIyIDYuNjE3MDggMTIuNjI1IDguMzU5OTcgMTMuMzY5OEM4Ljc2NjI2IDEzLjU0MzQgOS4yMzM3NCAxMy41NDM0IDkuNjQwMDMgMTMuMzY5OEMxMS4zODI5IDEyLjYyNSAxMi41IDEwLjU0MjIgMTIuNSA4Ljc1NzMyQzEyLjUgNi45NTgzNSAxMC45MzMgNS41IDkgNS41QzcuMDY3IDUuNSA1LjUgNi45NTgzNSA1LjUgOC43NTczMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEwLjUgOUMxMC41IDkuODI4NDMgOS44Mjg0MyAxMC41IDkgMTAuNUM4LjE3MTU3IDEwLjUgNy41IDkuODI4NDMgNy41IDlDNy41IDguMTcxNTcgOC4xNzE1NyA3LjUgOSA3LjVDOS44Mjg0MyA3LjUgMTAuNSA4LjE3MTU3IDEwLjUgOVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMkMxNi43MTQgMiAxOS4wNzExIDIgMjAuNTM1NSAzLjQ2NDQ3QzIxLjAzOTQgMy45NjgzMyAyMS4zNjk5IDQuNTc3ODYgMjEuNTg2NyA1LjM1MjdMNS4zNTI3IDIxLjU4NjdDNC41Nzc4NiAyMS4zNjk5IDMuOTY4MzMgMjEuMDM5NCAzLjQ2NDQ3IDIwLjUzNTVDMiAxOS4wNzExIDIgMTYuNzE0IDIgMTJDMiA3LjI4NTk1IDIgNC45Mjg5MyAzLjQ2NDQ3IDMuNDY0NDdDNC45Mjg5MyAyIDcuMjg1OTUgMiAxMiAyWk01LjUgOC43NTczMkM1LjUgMTAuNTQyMiA2LjYxNzA4IDEyLjYyNSA4LjM1OTk3IDEzLjM2OThDOC43NjYyNiAxMy41NDM0IDkuMjMzNzQgMTMuNTQzNCA5LjY0MDAzIDEzLjM2OThDMTEuMzgyOSAxMi42MjUgMTIuNSAxMC41NDIyIDEyLjUgOC43NTczMkMxMi41IDYuOTU4MzUgMTAuOTMzIDUuNSA5IDUuNUM3LjA2NyA1LjUgNS41IDYuOTU4MzUgNS41IDguNzU3MzJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMC41IDlDMTAuNSA5LjgyODQzIDkuODI4NDMgMTAuNSA5IDEwLjVDOC4xNzE1NyAxMC41IDcuNSA5LjgyODQzIDcuNSA5QzcuNSA4LjE3MTU3IDguMTcxNTcgNy41IDkgNy41QzkuODI4NDMgNy41IDEwLjUgOC4xNzE1NyAxMC41IDlaIiBmaWxsPSIjMUMyNzRDIi8+CjxnIG9wYWNpdHk9IjAuNSI+CjxwYXRoIGQ9Ik0yMS44ODkzIDcuMTcxODhDMjIuMDAwMiA4LjQzMzM4IDIyLjAwMDIgMTAuMDA1OSAyMi4wMDAyIDEyLjAwMDJDMjIuMDAwMiAxNi4xMzM5IDIyLjAwMDIgMTguNDU1MiAyMS4wMTI4IDE5Ljk1MTVMMTUuMDYxMyAxNEwyMS44ODkzIDcuMTcxODhaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xOS45NTIzIDIxLjAxMjNMMTQuMDAwNiAxNS4wNjA3TDcuMTcxODggMjEuODg5M0M4LjQzMzM4IDIyLjAwMDIgMTAuMDA1OSAyMi4wMDAyIDEyLjAwMDIgMjIuMDAwMkMxNi4xMzQ2IDIyLjAwMDIgMTguNDU1OSAyMi4wMDAyIDE5Ljk1MjMgMjEuMDEyM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9nPgo8L3N2Zz4K) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik01LjUgOC43NTczMkM1LjUgNi45NTgzNSA3LjA2NyA1LjUgOSA1LjVDMTAuOTMzIDUuNSAxMi41IDYuOTU4MzUgMTIuNSA4Ljc1NzMyQzEyLjUgMTAuNTQyMiAxMS4zODI5IDEyLjYyNSA5LjY0MDAzIDEzLjM2OThDOS4yMzM3NCAxMy41NDM0IDguNzY2MjYgMTMuNTQzNCA4LjM1OTk3IDEzLjM2OThDNi42MTcwOCAxMi42MjUgNS41IDEwLjU0MjIgNS41IDguNzU3MzJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIGQ9Ik0xNC4wMDA0IDEzLjk5OTNMMjAuNTAwNCAyMC40OTkzTTE0LjAwMDQgMTMuOTk5M0w2LjM5NDUzIDIxLjYwNTNNMTQuMDAwNCAxMy45OTkzTDE2IDExLjk5OThNMjEuNjA3MiA2LjM5MjU4TDE5IDguOTk5NzgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAgOUMxMCA5LjU1MjI4IDkuNTUyMjggMTAgOSAxMEM4LjQ0NzcyIDEwIDggOS41NTIyOCA4IDlDOCA4LjQ0NzcyIDguNDQ3NzIgOCA5IDhDOS41NTIyOCA4IDEwIDguNDQ3NzIgMTAgOVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIgMTJDMiAxNi43MTQgMiAxOS4wNzExIDMuNDY0NDcgMjAuNTM1NUM0LjkyODkzIDIyIDcuMjg1OTUgMjIgMTIgMjJDMTYuNzE0IDIyIDE5LjA3MTEgMjIgMjAuNTM1NSAyMC41MzU1QzIyIDE5LjA3MTEgMjIgMTYuNzE0IDIyIDEyQzIyIDcuMjg1OTUgMjIgNC45Mjg5MyAyMC41MzU1IDMuNDY0NDdDMTkuMDcxMSAyIDE2LjcxNCAyIDEyIDJDNy4yODU5NSAyIDQuOTI4OTMgMiAzLjQ2NDQ3IDMuNDY0NDdDMi40OTA3MyA0LjQzODIxIDIuMTY0NDQgNS44MDY1NSAyLjA1NTEgOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAyMkM3LjI4NTk1IDIyIDQuOTI4OTMgMjIgMy40NjQ0NyAyMC41MzU1QzIgMTkuMDcxMSAyIDE2LjcxNCAyIDEyQzIgNy4yODU5NSAyIDQuOTI4OTMgMy40NjQ0NyAzLjQ2NDQ3QzQuOTI4OTMgMiA3LjI4NTk1IDIgMTIgMkMxNi43MTQgMiAxOS4wNzExIDIgMjAuNTM1NSAzLjQ2NDQ3QzIyIDQuOTI4OTMgMjIgNy4yODU5NSAyMiAxMkMyMiAxNi43MTQgMjIgMTkuMDcxMSAyMC41MzU1IDIwLjUzNTVDMTkuMDcxMSAyMiAxNi43MTQgMjIgMTIgMjJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIGQ9Ik01LjUgOC43NTczMkM1LjUgNi45NTgzNSA3LjA2NyA1LjUgOSA1LjVDMTAuOTMzIDUuNSAxMi41IDYuOTU4MzUgMTIuNSA4Ljc1NzMyQzEyLjUgMTAuNTQyMiAxMS4zODI5IDEyLjYyNSA5LjY0MDAzIDEzLjM2OThDOS4yMzM3NCAxMy41NDM0IDguNzY2MjYgMTMuNTQzNCA4LjM1OTk3IDEzLjM2OThDNi42MTcwOCAxMi42MjUgNS41IDEwLjU0MjIgNS41IDguNzU3MzJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIGQ9Ik0xNC4wMDA0IDEzLjk5OTNMMjAuNTAwNCAyMC40OTkzTTE0LjAwMDQgMTMuOTk5M0w2LjM5NDUzIDIxLjYwNTNNMTQuMDAwNCAxMy45OTkzTDIxLjYwNzIgNi4zOTI1OCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMCA5QzEwIDkuNTUyMjggOS41NTIyOCAxMCA5IDEwQzguNDQ3NzIgMTAgOCA5LjU1MjI4IDggOUM4IDguNDQ3NzIgOC40NDc3MiA4IDkgOEM5LjU1MjI4IDggMTAgOC40NDc3MiAxMCA5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAyMkM3LjI4NTk1IDIyIDQuOTI4OTMgMjIgMy40NjQ0NyAyMC41MzU1QzIgMTkuMDcxMSAyIDE2LjcxNCAyIDEyQzIgNy4yODU5NSAyIDQuOTI4OTMgMy40NjQ0NyAzLjQ2NDQ3QzQuOTI4OTMgMiA3LjI4NTk1IDIgMTIgMkMxNi43MTQgMiAxOS4wNzExIDIgMjAuNTM1NSAzLjQ2NDQ3QzIyIDQuOTI4OTMgMjIgNy4yODU5NSAyMiAxMkMyMiAxNi43MTQgMjIgMTkuMDcxMSAyMC41MzU1IDIwLjUzNTVDMTkuMDcxMSAyMiAxNi43MTQgMjIgMTIgMjJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTUuNSA4Ljc1NzMyQzUuNSA2Ljk1ODM1IDcuMDY3IDUuNSA5IDUuNUMxMC45MzMgNS41IDEyLjUgNi45NTgzNSAxMi41IDguNzU3MzJDMTIuNSAxMC41NDIyIDExLjM4MjkgMTIuNjI1IDkuNjQwMDMgMTMuMzY5OEM5LjIzMzc0IDEzLjU0MzQgOC43NjYyNiAxMy41NDM0IDguMzU5OTcgMTMuMzY5OEM2LjYxNzA4IDEyLjYyNSA1LjUgMTAuNTQyMiA1LjUgOC43NTczMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTQuMDAwNCAxMy45OTkzTDIwLjUwMDQgMjAuNDk5M00xNC4wMDA0IDEzLjk5OTNMNi4zOTQ1MyAyMS42MDUzTTE0LjAwMDQgMTMuOTk5M0wyMS42MDcyIDYuMzkyNTgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xMCA5QzEwIDkuNTUyMjggOS41NTIyOCAxMCA5IDEwQzguNDQ3NzIgMTAgOCA5LjU1MjI4IDggOUM4IDguNDQ3NzIgOC40NDc3MiA4IDkgOEM5LjU1MjI4IDggMTAgOC40NDc3MiAxMCA5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTcuMzg2NCAyLjkyNjM3QzE2LjA4NjQgMi43NTE1OSAxNC4zNzgyIDIuNzUgMTIgMi43NUM5LjYyMTc3IDIuNzUgNy45MTM1NiAyLjc1MTU5IDYuNjEzNTggMi45MjYzN0M1LjMzNTE3IDMuMDk4MjUgNC41NjQ0NSAzLjQyNTE0IDMuOTk0OCAzLjk5NDhDMy40MjUxNCA0LjU2NDQ1IDMuMDk4MjUgNS4zMzUxNyAyLjkyNjM3IDYuNjEzNThDMi43NTE1OSA3LjkxMzU2IDIuNzUgOS42MjE3NyAyLjc1IDEyQzIuNzUgMTQuMzc4MiAyLjc1MTU5IDE2LjA4NjQgMi45MjYzNyAxNy4zODY0QzMuMDk4MjUgMTguNjY0OCAzLjQyNTE0IDE5LjQzNTUgMy45OTQ4IDIwLjAwNTJDNC40NjI0MiAyMC40NzI4IDUuMDY1NTQgMjAuNzc2OSA1Ljk3Mzc2IDIwLjk2NTlMMjAuOTY1OSA1Ljk3Mzc2QzIwLjc3NjkgNS4wNjU1NCAyMC40NzI4IDQuNDYyNDIgMjAuMDA1MiAzLjk5NDhDMTkuNDM1NSAzLjQyNTE0IDE4LjY2NDggMy4wOTgyNSAxNy4zODY0IDIuOTI2MzdaTTIxLjE4NzMgNy44NzM2NEwxNS4wNjExIDEzLjk5OThMMjAuNDY4MyAxOS40MDcxQzIwLjc2MyAxOC45MDc4IDIwLjk1NTEgMTguMjY3OCAyMS4wNzM2IDE3LjM4NjRDMjEuMjQ4NCAxNi4wODY0IDIxLjI1IDE0LjM3ODIgMjEuMjUgMTJDMjEuMjUgMTAuMzIxNSAyMS4yNDkyIDguOTc2NjkgMjEuMTg3MyA3Ljg3MzY0Wk0xOS40MDc4IDIwLjQ2NzlMMTQuMDAwNCAxNS4wNjA1TDcuODczNjQgMjEuMTg3M0M4Ljk3NjY5IDIxLjI0OTIgMTAuMzIxNSAyMS4yNSAxMiAyMS4yNUMxNC4zNzgyIDIxLjI1IDE2LjA4NjQgMjEuMjQ4NCAxNy4zODY0IDIxLjA3MzZDMTguMjY4MiAyMC45NTUxIDE4LjkwODUgMjAuNzYyOCAxOS40MDc4IDIwLjQ2NzlaTTE3LjU4NjMgMS40Mzk3NUMxOS4wMzEgMS42MzM5OSAyMC4xNzExIDIuMDM5MzMgMjEuMDY1OSAyLjkzNDE0QzIxLjk2MDcgMy44Mjg5NSAyMi4zNjYgNC45Njg5NyAyMi41NjAzIDYuNDEzNzFDMjIuNzUgNy44MjUxOSAyMi43NSA5LjYzNDIzIDIyLjc1IDExLjk0MjZWMTIuMDU3NEMyMi43NSAxNC4zNjU4IDIyLjc1IDE2LjE3NDggMjIuNTYwMyAxNy41ODYzQzIyLjM2NiAxOS4wMzEgMjEuOTYwNyAyMC4xNzExIDIxLjA2NTkgMjEuMDY1OUMyMC4xNzExIDIxLjk2MDcgMTkuMDMxIDIyLjM2NiAxNy41ODYzIDIyLjU2MDNDMTYuMTc0OCAyMi43NSAxNC4zNjU4IDIyLjc1IDEyLjA1NzQgMjIuNzVIMTEuOTQyNkM5LjYzNDIzIDIyLjc1IDcuODI1MTkgMjIuNzUgNi40MTM3MSAyMi41NjAzQzQuOTY4OTcgMjIuMzY2IDMuODI4OTUgMjEuOTYwNyAyLjkzNDE0IDIxLjA2NTlDMi4wMzkzMyAyMC4xNzExIDEuNjMzOTkgMTkuMDMxIDEuNDM5NzUgMTcuNTg2M0MxLjI0OTk4IDE2LjE3NDggMS4yNDk5OSAxNC4zNjU4IDEuMjUgMTIuMDU3NFYxMS45NDI2QzEuMjQ5OTkgOS42MzQyMyAxLjI0OTk4IDcuODI1MTkgMS40Mzk3NSA2LjQxMzcxQzEuNjMzOTkgNC45Njg5NyAyLjAzOTMzIDMuODI4OTUgMi45MzQxNCAyLjkzNDE0QzMuODI4OTUgMi4wMzkzMyA0Ljk2ODk3IDEuNjMzOTkgNi40MTM3MSAxLjQzOTc1QzcuODI1MTkgMS4yNDk5OCA5LjYzNDIzIDEuMjQ5OTkgMTEuOTQyNiAxLjI1SDEyLjA1NzRDMTQuMzY1OCAxLjI0OTk5IDE2LjE3NDggMS4yNDk5OCAxNy41ODYzIDEuNDM5NzVaTTQuNzUgOC43NTcyMkM0Ljc1IDYuNDk0MTkgNi43MDQ0NiA0Ljc0OTkgOSA0Ljc0OTlDMTEuMjk1NSA0Ljc0OTkgMTMuMjUgNi40OTQxOSAxMy4yNSA4Ljc1NzIyQzEzLjI1IDEwLjc4MzUgMTIuMDA0MiAxMy4xNzUgOS45MzQ3NiAxNC4wNTkzQzkuMzQwMjEgMTQuMzEzNCA4LjY1OTc5IDE0LjMxMzQgOC4wNjUyNCAxNC4wNTkzQzUuOTk1ODEgMTMuMTc1IDQuNzUgMTAuNzgzNSA0Ljc1IDguNzU3MjJaTTkgNi4yNDk5QzcuNDI5NTUgNi4yNDk5IDYuMjUgNy40MjIzMSA2LjI1IDguNzU3MjJDNi4yNSAxMC4zMDA3IDcuMjM4MzUgMTIuMDc0NyA4LjY1NDY5IDEyLjY4QzguODcyNzQgMTIuNzczMiA5LjEyNzI2IDEyLjc3MzIgOS4zNDUzMSAxMi42OEMxMC43NjE3IDEyLjA3NDcgMTEuNzUgMTAuMzAwNyAxMS43NSA4Ljc1NzIyQzExLjc1IDcuNDIyMzEgMTAuNTcwNSA2LjI0OTkgOSA2LjI0OTlaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMCA5QzEwIDkuNTUyMjkgOS41NTIyOSAxMCA5IDEwQzguNDQ3NzIgMTAgOCA5LjU1MjI5IDggOUM4IDguNDQ3NzIgOC40NDc3MiA4IDkgOEM5LjU1MjI5IDggMTAgOC40NDc3MiAxMCA5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) Outline
 */
const StreetsMapPoint: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props} weights={weights} />
))

StreetsMapPoint.displayName = "StreetsMapPoint"
export default StreetsMapPoint
