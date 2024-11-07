/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import SSRBase from "../../lib/SSRBase"
import weights from "../../defs/map/Routing3"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjUiIGN5PSI1IiByPSIzIiBmaWxsPSIjMUMyNzRDIi8+CjxjaXJjbGUgY3g9IjE5IiBjeT0iMTkiIHI9IjMiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMC4yNTAxIDVDMTAuMjUwMSA0LjU4NTc5IDEwLjU4NTkgNC4yNSAxMS4wMDAxIDQuMjVIMTYuMTMyQzE4Ljg4MzIgNC4yNSAxOS45Mjk1IDcuODQzIDE3LjYwODQgOS4zMjAwN0w3LjE5NzEzIDE1Ljk0NTRDNi4xNDIwNyAxNi42MTY4IDYuNjE3NjYgMTguMjUgNy44NjgyMSAxOC4yNUgxMS4xODk0TDEwLjk2OTggMTguMDMwM0MxMC42NzY5IDE3LjczNzQgMTAuNjc2OSAxNy4yNjI2IDEwLjk2OTggMTYuOTY5N0MxMS4yNjI3IDE2LjY3NjggMTEuNzM3NSAxNi42NzY4IDEyLjAzMDQgMTYuOTY5N0wxMy41MzA0IDE4LjQ2OTdDMTMuODIzMyAxOC43NjI2IDEzLjgyMzMgMTkuMjM3NCAxMy41MzA0IDE5LjUzMDNMMTIuMDMwNCAyMS4wMzAzQzExLjczNzUgMjEuMzIzMiAxMS4yNjI3IDIxLjMyMzIgMTAuOTY5OCAyMS4wMzAzQzEwLjY3NjkgMjAuNzM3NCAxMC42NzY5IDIwLjI2MjYgMTAuOTY5OCAxOS45Njk3TDExLjE4OTQgMTkuNzVINy44NjgyMUM1LjExNjk3IDE5Ljc1IDQuMDcwNzEgMTYuMTU3IDYuMzkxODEgMTQuNjc5OUwxNi44MDMxIDguMDU0NThDMTcuODU4MSA3LjM4MzE4IDE3LjM4MjUgNS43NSAxNi4xMzIgNS43NUgxMS4wMDAxQzEwLjU4NTkgNS43NSAxMC4yNTAxIDUuNDE0MjEgMTAuMjUwMSA1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iNSIgY3k9IjUiIHI9IjMiIGZpbGw9IiMxQzI3NEMiLz4KPGNpcmNsZSBvcGFjaXR5PSIwLjUiIGN4PSIxOSIgY3k9IjE5IiByPSIzIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTAuMjUwMSA1QzEwLjI1MDEgNC41ODU3OSAxMC41ODU5IDQuMjUgMTEuMDAwMSA0LjI1SDE2LjEzMkMxOC44ODMyIDQuMjUgMTkuOTI5NSA3Ljg0MyAxNy42MDg0IDkuMzIwMDdMNy4xOTcxMyAxNS45NDU0QzYuMTQyMDcgMTYuNjE2OCA2LjYxNzY2IDE4LjI1IDcuODY4MjEgMTguMjVIMTEuMTg5NEwxMC45Njk4IDE4LjAzMDNDMTAuNjc2OSAxNy43Mzc0IDEwLjY3NjkgMTcuMjYyNiAxMC45Njk4IDE2Ljk2OTdDMTEuMjYyNyAxNi42NzY4IDExLjczNzUgMTYuNjc2OCAxMi4wMzA0IDE2Ljk2OTdMMTMuNTMwNCAxOC40Njk3QzEzLjgyMzMgMTguNzYyNiAxMy44MjMzIDE5LjIzNzQgMTMuNTMwNCAxOS41MzAzTDEyLjAzMDQgMjEuMDMwM0MxMS43Mzc1IDIxLjMyMzIgMTEuMjYyNyAyMS4zMjMyIDEwLjk2OTggMjEuMDMwM0MxMC42NzY5IDIwLjczNzQgMTAuNjc2OSAyMC4yNjI2IDEwLjk2OTggMTkuOTY5N0wxMS4xODk0IDE5Ljc1SDcuODY4MjFDNS4xMTY5NyAxOS43NSA0LjA3MDcxIDE2LjE1NyA2LjM5MTgxIDE0LjY3OTlMMTYuODAzMSA4LjA1NDU4QzE3Ljg1ODEgNy4zODMxOCAxNy4zODI1IDUuNzUgMTYuMTMyIDUuNzVIMTEuMDAwMUMxMC41ODU5IDUuNzUgMTAuMjUwMSA1LjQxNDIxIDEwLjI1MDEgNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjUiIGN5PSI1IiByPSIzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxjaXJjbGUgY3g9IjE5IiBjeT0iMTkiIHI9IjMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTExIDQuMjVDMTAuNTg1OCA0LjI1IDEwLjI1IDQuNTg1NzkgMTAuMjUgNUMxMC4yNSA1LjQxNDIxIDEwLjU4NTggNS43NSAxMSA1Ljc1VjQuMjVaTTEzIDE5TDEzLjUzMDMgMTkuNTMwM0MxMy44MjMyIDE5LjIzNzQgMTMuODIzMiAxOC43NjI2IDEzLjUzMDMgMTguNDY5N0wxMyAxOVpNMTcuMjA1NiA4LjY4NzMyTDE3LjYwODMgOS4zMjAwN0wxNy4yMDU2IDguNjg3MzJaTTYuNzk0MzQgMTUuMzEyN0w3LjE5NyAxNS45NDU0SDcuMTk3TDYuNzk0MzQgMTUuMzEyN1pNMTIuMDMwMyAxNi45Njk3QzExLjczNzQgMTYuNjc2OCAxMS4yNjI1IDE2LjY3NjggMTAuOTY5NiAxNi45Njk3QzEwLjY3NjggMTcuMjYyNiAxMC42NzY4IDE3LjczNzQgMTAuOTY5NiAxOC4wMzAzTDEyLjAzMDMgMTYuOTY5N1pNMTAuOTY5NiAxOS45Njk3QzEwLjY3NjggMjAuMjYyNiAxMC42NzY4IDIwLjczNzQgMTAuOTY5NiAyMS4wMzAzQzExLjI2MjUgMjEuMzIzMiAxMS43Mzc0IDIxLjMyMzIgMTIuMDMwMyAyMS4wMzAzTDEwLjk2OTYgMTkuOTY5N1pNMTAuNDAyNyAxMy45MDU1QzEwLjc1MjEgMTMuNjgzMSAxMC44NTUxIDEzLjIxOTUgMTAuNjMyNyAxMi44NzAxQzEwLjQxMDQgMTIuNTIwNiA5Ljk0NjggMTIuNDE3NiA5LjU5NzM0IDEyLjY0TDEwLjQwMjcgMTMuOTA1NVpNMTMuMjAwMSAxMC4zNDczQzEyLjg1MDcgMTAuNTY5NyAxMi43NDc3IDExLjAzMzIgMTIuOTcwMSAxMS4zODI3QzEzLjE5MjQgMTEuNzMyMSAxMy42NTYgMTEuODM1MSAxNC4wMDU1IDExLjYxMjhMMTMuMjAwMSAxMC4zNDczWk0xNi4xMzE5IDQuMjVIMTFWNS43NUgxNi4xMzE5VjQuMjVaTTEzIDE4LjI1SDcuODY4MDlWMTkuNzVIMTNWMTguMjVaTTEzLjUzMDMgMTguNDY5N0wxMi4wMzAzIDE2Ljk2OTdMMTAuOTY5NiAxOC4wMzAzTDEyLjQ2OTYgMTkuNTMwM0wxMy41MzAzIDE4LjQ2OTdaTTEyLjQ2OTYgMTguNDY5N0wxMC45Njk2IDE5Ljk2OTdMMTIuMDMwMyAyMS4wMzAzTDEzLjUzMDMgMTkuNTMwM0wxMi40Njk2IDE4LjQ2OTdaTTcuODY4MDkgMTguMjVDNi42MTc1NCAxOC4yNSA2LjE0MTk1IDE2LjYxNjggNy4xOTcgMTUuOTQ1NEw2LjM5MTY5IDE0LjY3OTlDNC4wNzA1OSAxNi4xNTcgNS4xMTY4NSAxOS43NSA3Ljg2ODA5IDE5Ljc1VjE4LjI1Wk0xNi4xMzE5IDUuNzVDMTcuMzgyNCA1Ljc1IDE3Ljg1OCA3LjM4MzE4IDE2LjgwMyA4LjA1NDU4TDE3LjYwODMgOS4zMjAwN0MxOS45Mjk0IDcuODQzIDE4Ljg4MzEgNC4yNSAxNi4xMzE5IDQuMjVWNS43NVpNOS41OTczNCAxMi42NEw2LjM5MTY5IDE0LjY3OTlMNy4xOTcgMTUuOTQ1NEwxMC40MDI3IDEzLjkwNTVMOS41OTczNCAxMi42NFpNMTYuODAzIDguMDU0NThMMTMuMjAwMSAxMC4zNDczTDE0LjAwNTUgMTEuNjEyOEwxNy42MDgzIDkuMzIwMDdMMTYuODAzIDguMDU0NThaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjUiIGN5PSI1IiByPSIzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxjaXJjbGUgY3g9IjE5IiBjeT0iMTkiIHI9IjMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTExLjAwMDIgNC4yNUMxMC41ODYgNC4yNSAxMC4yNTAyIDQuNTg1NzkgMTAuMjUwMiA1QzEwLjI1MDIgNS40MTQyMSAxMC41ODYgNS43NSAxMS4wMDAyIDUuNzVWNC4yNVpNMTMuMDAwMiAxOUwxMy41MzA1IDE5LjUzMDNDMTMuODIzNCAxOS4yMzc0IDEzLjgyMzQgMTguNzYyNiAxMy41MzA1IDE4LjQ2OTdMMTMuMDAwMiAxOVpNMTcuMjA1OSA4LjY4NzMyTDE3LjYwODUgOS4zMjAwN0wxNy4yMDU5IDguNjg3MzJaTTYuNzk0NTkgMTUuMzEyN0w3LjE5NzI1IDE1Ljk0NTRINy4xOTcyNUw2Ljc5NDU5IDE1LjMxMjdaTTEyLjAzMDUgMTYuOTY5N0MxMS43Mzc3IDE2LjY3NjggMTEuMjYyOCAxNi42NzY4IDEwLjk2OTkgMTYuOTY5N0MxMC42NzcgMTcuMjYyNiAxMC42NzcgMTcuNzM3NCAxMC45Njk5IDE4LjAzMDNMMTIuMDMwNSAxNi45Njk3Wk0xMC45Njk5IDE5Ljk2OTdDMTAuNjc3IDIwLjI2MjYgMTAuNjc3IDIwLjczNzQgMTAuOTY5OSAyMS4wMzAzQzExLjI2MjggMjEuMzIzMiAxMS43Mzc3IDIxLjMyMzIgMTIuMDMwNSAyMS4wMzAzTDEwLjk2OTkgMTkuOTY5N1pNMTYuMTMyMSA0LjI1SDExLjAwMDJWNS43NUgxNi4xMzIxVjQuMjVaTTEzLjAwMDIgMTguMjVINy44NjgzM1YxOS43NUgxMy4wMDAyVjE4LjI1Wk0xNi44MDMyIDguMDU0NThMNi4zOTE5MyAxNC42Nzk5TDcuMTk3MjUgMTUuOTQ1NEwxNy42MDg1IDkuMzIwMDdMMTYuODAzMiA4LjA1NDU4Wk0xMy41MzA1IDE4LjQ2OTdMMTIuMDMwNSAxNi45Njk3TDEwLjk2OTkgMTguMDMwM0wxMi40Njk5IDE5LjUzMDNMMTMuNTMwNSAxOC40Njk3Wk0xMi40Njk5IDE4LjQ2OTdMMTAuOTY5OSAxOS45Njk3TDEyLjAzMDUgMjEuMDMwM0wxMy41MzA1IDE5LjUzMDNMMTIuNDY5OSAxOC40Njk3Wk03Ljg2ODMzIDE4LjI1QzYuNjE3NzggMTguMjUgNi4xNDIxOSAxNi42MTY4IDcuMTk3MjUgMTUuOTQ1NEw2LjM5MTkzIDE0LjY3OTlDNC4wNzA4MyAxNi4xNTcgNS4xMTcwOSAxOS43NSA3Ljg2ODMzIDE5Ljc1VjE4LjI1Wk0xNi4xMzIxIDUuNzVDMTcuMzgyNyA1Ljc1IDE3Ljg1ODIgNy4zODMxOCAxNi44MDMyIDguMDU0NThMMTcuNjA4NSA5LjMyMDA3QzE5LjkyOTYgNy44NDMgMTguODgzMyA0LjI1IDE2LjEzMjEgNC4yNVY1Ljc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjUiIGN5PSI1IiByPSIzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxjaXJjbGUgY3g9IjE5IiBjeT0iMTkiIHI9IjMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTEgNC4yNUMxMC41ODU4IDQuMjUgMTAuMjUgNC41ODU3OSAxMC4yNSA1QzEwLjI1IDUuNDE0MjEgMTAuNTg1OCA1Ljc1IDExIDUuNzVWNC4yNVpNMTMgMTlMMTMuNTMwMyAxOS41MzAzQzEzLjgyMzIgMTkuMjM3NCAxMy44MjMyIDE4Ljc2MjYgMTMuNTMwMyAxOC40Njk3TDEzIDE5Wk0xNy4yMDU2IDguNjg3MzJMMTcuNjA4MyA5LjMyMDA3TDE3LjIwNTYgOC42ODczMlpNNi43OTQzNCAxNS4zMTI3TDcuMTk3IDE1Ljk0NTRINy4xOTdMNi43OTQzNCAxNS4zMTI3Wk0xMi4wMzAzIDE2Ljk2OTdDMTEuNzM3NCAxNi42NzY4IDExLjI2MjUgMTYuNjc2OCAxMC45Njk2IDE2Ljk2OTdDMTAuNjc2OCAxNy4yNjI2IDEwLjY3NjggMTcuNzM3NCAxMC45Njk2IDE4LjAzMDNMMTIuMDMwMyAxNi45Njk3Wk0xMC45Njk2IDE5Ljk2OTdDMTAuNjc2OCAyMC4yNjI2IDEwLjY3NjggMjAuNzM3NCAxMC45Njk2IDIxLjAzMDNDMTEuMjYyNSAyMS4zMjMyIDExLjczNzQgMjEuMzIzMiAxMi4wMzAzIDIxLjAzMDNMMTAuOTY5NiAxOS45Njk3Wk0xNi4xMzE5IDQuMjVIMTFWNS43NUgxNi4xMzE5VjQuMjVaTTEzIDE4LjI1SDcuODY4MDlWMTkuNzVIMTNWMTguMjVaTTE2LjgwMyA4LjA1NDU4TDYuMzkxNjkgMTQuNjc5OUw3LjE5NyAxNS45NDU0TDE3LjYwODMgOS4zMjAwN0wxNi44MDMgOC4wNTQ1OFpNMTMuNTMwMyAxOC40Njk3TDEyLjAzMDMgMTYuOTY5N0wxMC45Njk2IDE4LjAzMDNMMTIuNDY5NiAxOS41MzAzTDEzLjUzMDMgMTguNDY5N1pNMTIuNDY5NiAxOC40Njk3TDEwLjk2OTYgMTkuOTY5N0wxMi4wMzAzIDIxLjAzMDNMMTMuNTMwMyAxOS41MzAzTDEyLjQ2OTYgMTguNDY5N1pNNy44NjgwOSAxOC4yNUM2LjYxNzU0IDE4LjI1IDYuMTQxOTUgMTYuNjE2OCA3LjE5NyAxNS45NDU0TDYuMzkxNjkgMTQuNjc5OUM0LjA3MDU5IDE2LjE1NyA1LjExNjg1IDE5Ljc1IDcuODY4MDkgMTkuNzVWMTguMjVaTTE2LjEzMTkgNS43NUMxNy4zODI0IDUuNzUgMTcuODU4IDcuMzgzMTggMTYuODAzIDguMDU0NThMMTcuNjA4MyA5LjMyMDA3QzE5LjkyOTQgNy44NDMgMTguODgzMSA0LjI1IDE2LjEzMTkgNC4yNVY1Ljc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNSAyLjc1QzMuNzU3MzYgMi43NSAyLjc1IDMuNzU3MzYgMi43NSA1QzIuNzUgNi4yNDI2NCAzLjc1NzM2IDcuMjUgNSA3LjI1QzYuMjQyNjQgNy4yNSA3LjI1IDYuMjQyNjQgNy4yNSA1QzcuMjUgMy43NTczNiA2LjI0MjY0IDIuNzUgNSAyLjc1Wk0xLjI1IDVDMS4yNSAyLjkyODkzIDIuOTI4OTMgMS4yNSA1IDEuMjVDNy4wNzEwNyAxLjI1IDguNzUgMi45Mjg5MyA4Ljc1IDVDOC43NSA3LjA3MTA3IDcuMDcxMDcgOC43NSA1IDguNzVDMi45Mjg5MyA4Ljc1IDEuMjUgNy4wNzEwNyAxLjI1IDVaTTEwLjI1IDVDMTAuMjUgNC41ODU3OSAxMC41ODU4IDQuMjUgMTEgNC4yNUgxNi4xMzE5QzE4Ljg4MzEgNC4yNSAxOS45Mjk0IDcuODQzIDE3LjYwODMgOS4zMjAwN0w3LjE5NzAzIDE1Ljk0NTRDNi4xNDE5NyAxNi42MTY4IDYuNjE3NTYgMTguMjUgNy44NjgxMiAxOC4yNUgxMS4xODkzTDEwLjk2OTcgMTguMDMwM0MxMC42NzY4IDE3LjczNzQgMTAuNjc2OCAxNy4yNjI2IDEwLjk2OTcgMTYuOTY5N0MxMS4yNjI2IDE2LjY3NjggMTEuNzM3NCAxNi42NzY4IDEyLjAzMDMgMTYuOTY5N0wxMy41MzAzIDE4LjQ2OTdDMTMuODIzMiAxOC43NjI2IDEzLjgyMzIgMTkuMjM3NCAxMy41MzAzIDE5LjUzMDNMMTIuMDMwMyAyMS4wMzAzQzExLjczNzQgMjEuMzIzMiAxMS4yNjI2IDIxLjMyMzIgMTAuOTY5NyAyMS4wMzAzQzEwLjY3NjggMjAuNzM3NCAxMC42NzY4IDIwLjI2MjYgMTAuOTY5NyAxOS45Njk3TDExLjE4OTMgMTkuNzVINy44NjgxMkM1LjExNjg4IDE5Ljc1IDQuMDcwNjIgMTYuMTU3IDYuMzkxNzIgMTQuNjc5OUwxNi44MDMgOC4wNTQ1OEMxNy44NTggNy4zODMxOCAxNy4zODI0IDUuNzUgMTYuMTMxOSA1Ljc1SDExQzEwLjU4NTggNS43NSAxMC4yNSA1LjQxNDIxIDEwLjI1IDVaTTE5IDE2Ljc1QzE3Ljc1NzQgMTYuNzUgMTYuNzUgMTcuNzU3NCAxNi43NSAxOUMxNi43NSAyMC4yNDI2IDE3Ljc1NzQgMjEuMjUgMTkgMjEuMjVDMjAuMjQyNiAyMS4yNSAyMS4yNSAyMC4yNDI2IDIxLjI1IDE5QzIxLjI1IDE3Ljc1NzQgMjAuMjQyNiAxNi43NSAxOSAxNi43NVpNMTUuMjUgMTlDMTUuMjUgMTYuOTI4OSAxNi45Mjg5IDE1LjI1IDE5IDE1LjI1QzIxLjA3MTEgMTUuMjUgMjIuNzUgMTYuOTI4OSAyMi43NSAxOUMyMi43NSAyMS4wNzExIDIxLjA3MTEgMjIuNzUgMTkgMjIuNzVDMTYuOTI4OSAyMi43NSAxNS4yNSAyMS4wNzExIDE1LjI1IDE5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) Outline
 */
const Routing3: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <SSRBase ref={ref} {...props} weights={weights} />
))

Routing3.displayName = "Routing3"
export default Routing3
