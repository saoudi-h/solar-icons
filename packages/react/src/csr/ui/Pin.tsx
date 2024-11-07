/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import IconBase from "../../lib/IconBase"
import weights from "../../defs/ui/Pin"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xOS4xODM1IDcuODA1MTZMMTYuMjE4OCA0LjgzNzU1QzE0LjE5MjEgMi44MDg5IDEzLjE3ODggMS43OTQ1NyAxMi4wOTA0IDIuMDM0NjhDMTEuMDAyMSAyLjI3NDggMTAuNTA4NiAzLjYyMTU1IDkuNTIxNyA2LjMxNTA2TDguODUzNzMgOC4xMzgxQzguNTkwNjMgOC44NTYxNyA4LjQ1OTA4IDkuMjE1MiA4LjIyMjM5IDkuNDkyOTJDOC4xMTYxOSA5LjYxNzU0IDcuOTk1MzYgOS43Mjg4NyA3Ljg2MjUxIDkuODI0NTFDNy41NjY0NCAxMC4wMzc3IDcuMTk4MTEgMTAuMTM5MiA2LjQ2MTQ1IDEwLjM0MjNDNC44MDEwNyAxMC44IDMuOTcwODggMTEuMDI4OSAzLjY1ODA0IDExLjU3MjFDMy41MjI4IDExLjgwNjkgMy40NTI0MiAxMi4wNzM1IDMuNDU0MTMgMTIuMzQ0NkMzLjQ1ODA5IDEyLjk3MTUgNC4wNjY5OCAxMy41ODEgNS4yODQ3NiAxNC44TDYuNjk5MzUgMTYuMjE2M0wyLjIyMzQ1IDIwLjY5NjRDMS45MjU1MiAyMC45OTQ2IDEuOTI1NTIgMjEuNDc4MiAyLjIyMzQ1IDIxLjc3NjRDMi41MjEzOCAyMi4wNzQ2IDMuMDA0NDMgMjIuMDc0NiAzLjMwMjM2IDIxLjc3NjRMNy43Nzg0MSAxNy4yOTYxTDkuMjQ0NDEgMTguNzYzNUMxMC40Njk5IDE5Ljk5MDIgMTEuMDgyNyAyMC42MDM2IDExLjcxMzQgMjAuNjA0NUMxMS45NzkyIDIwLjYwNDkgMTIuMjQwNCAyMC41MzU4IDEyLjQ3MTMgMjAuNDA0MUMxMy4wMTkyIDIwLjA5MTQgMTMuMjQ5MyAxOS4yNTUxIDEzLjcwOTUgMTcuNTgyNUMxMy45MTE5IDE2Ljg0NzIgMTQuMDEzIDE2LjQ3OTUgMTQuMjI1NCAxNi4xODM1QzE0LjMxODQgMTYuMDU0IDE0LjQyNjIgMTUuOTM1OCAxNC41NDY4IDE1LjgzMTRDMTQuODIyMSAxNS41OTMgMTUuMTc4OCAxNS40NTkgMTUuODkyMiAxNS4xOTFMMTcuNzM2MiAxNC40OTgxQzIwLjQgMTMuNDk3MyAyMS43MzE5IDEyLjk5NjkgMjEuOTY2NyAxMS45MTE1QzIyLjIwMTQgMTAuODI2IDIxLjE5NTQgOS44MTkwNSAxOS4xODM1IDcuODA1MTZaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNi4yMTg4IDQuODM3NTVMMTkuMTgzNSA3LjgwNTE2QzIxLjE5NTQgOS44MTkwNSAyMi4yMDE0IDEwLjgyNiAyMS45NjY3IDExLjkxMTVDMjEuNzMxOSAxMi45OTY5IDIwLjQgMTMuNDk3MyAxNy43MzYyIDE0LjQ5ODFMMTUuODkyMiAxNS4xOTFDMTUuMTc4OCAxNS40NTkgMTQuODIyMSAxNS41OTMgMTQuNTQ2OCAxNS44MzE0QzE0LjQyNjIgMTUuOTM1OCAxNC4zMTg0IDE2LjA1NCAxNC4yMjU0IDE2LjE4MzVDMTQuMDEzIDE2LjQ3OTUgMTMuOTExOSAxNi44NDcyIDEzLjcwOTUgMTcuNTgyNUMxMy4yNDkzIDE5LjI1NTEgMTMuMDE5MiAyMC4wOTE0IDEyLjQ3MTMgMjAuNDA0MUMxMi4yNDA0IDIwLjUzNTggMTEuOTc5MiAyMC42MDQ5IDExLjcxMzQgMjAuNjA0NUMxMS4wODI3IDIwLjYwMzYgMTAuNDY5OSAxOS45OTAyIDkuMjQ0NDEgMTguNzYzNUw3Ljc3ODQxIDE3LjI5NjFMNi42OTkzNSAxNi4yMTYzTDUuMjg0NzYgMTQuOEM0LjA2Njk4IDEzLjU4MSAzLjQ1ODA5IDEyLjk3MTUgMy40NTQxMyAxMi4zNDQ2QzMuNDUyNDIgMTIuMDczNSAzLjUyMjggMTEuODA2OSAzLjY1ODA0IDExLjU3MjFDMy45NzA4OCAxMS4wMjg5IDQuODAxMDcgMTAuOCA2LjQ2MTQ1IDEwLjM0MjNDNy4xOTgxMSAxMC4xMzkyIDcuNTY2NDQgMTAuMDM3NyA3Ljg2MjUxIDkuODI0NTFDNy45OTUzNiA5LjcyODg3IDguMTE2MTkgOS42MTc1NCA4LjIyMjM5IDkuNDkyOTJDOC40NTkwOCA5LjIxNTIgOC41OTA2MyA4Ljg1NjE3IDguODUzNzMgOC4xMzgxTDkuNTIxNyA2LjMxNTA2QzEwLjUwODYgMy42MjE1NSAxMS4wMDIxIDIuMjc0OCAxMi4wOTA0IDIuMDM0NjhDMTMuMTc4OCAxLjc5NDU3IDE0LjE5MjEgMi44MDg5IDE2LjIxODggNC44Mzc1NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTMuMzAyMzYgMjEuNzc2NEw3Ljc3ODQxIDE3LjI5NjFMNi42OTkzNSAxNi4yMTYzTDIuMjIzNDUgMjAuNjk2NUMxLjkyNTUyIDIwLjk5NDcgMS45MjU1MiAyMS40NzgyIDIuMjIzNDUgMjEuNzc2NEMyLjUyMTM4IDIyLjA3NDcgMy4wMDQ0MyAyMi4wNzQ3IDMuMzAyMzYgMjEuNzc2NFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNS45ODk0IDQuOTUwMkwxNi41MiA0LjQyMDE0TDE2LjUyIDQuNDIwMTRMMTUuOTg5NCA0Ljk1MDJaTTguNzM4NDUgMTkuNDI5TDguMjA3ODUgMTkuOTU5MUw4LjczODQ1IDE5LjQyOVpNNC42MjE3NiAxNS4zMDgxTDUuMTUyMzYgMTQuNzc4MUw0LjYyMTc2IDE1LjMwODFaTTE3LjU2NyAxNC45OTQzTDE3LjMwMzIgMTQuMjkyMkwxNy41NjcgMTQuOTk0M1pNMTUuNjQ5OSAxNS43MTQ2TDE1LjkxMzcgMTYuNDE2N0wxNS42NDk5IDE1LjcxNDZaTTguMzMyMjcgOC4zODE3N0w3LjYyODA1IDguMTIzNzVINy42MjgwNUw4LjMzMjI3IDguMzgxNzdaTTkuMDI2NzMgNi40ODYzNkw5LjczMDk1IDYuNzQ0MzhMOS4wMjY3MyA2LjQ4NjM2Wk01Ljg0NTEyIDEwLjY3MzVMNi4wNDQ0NSAxMS4zOTY1SDYuMDQ0NDVMNS44NDUxMiAxMC42NzM1Wk03LjMwMTc0IDEwLjEzNTFMNi44NjM1NCA5LjUyNjQ2TDYuODYzNTQgOS41MjY0Nkw3LjMwMTc0IDEwLjEzNTFaTTcuNjc1OSA5Ljc5MDM4TDguMjQ2NzMgMTAuMjc2OEg4LjI0NjczTDcuNjc1OSA5Ljc5MDM4Wk0xNC4yNTExIDE2LjM4MDVMMTQuNzQyMSAxNi45NDc1TDE0Ljc0MjEgMTYuOTQ3NUwxNC4yNTExIDE2LjM4MDVaTTEzLjM4MDcgMTguMjAxMkwxMi42NTc1IDE4LjAwMjJWMTguMDAyMkwxMy4zODA3IDE4LjIwMTJaTTEzLjkxNyAxNi43NDY2TDEzLjMwNzYgMTYuMzA5NEwxMy4zMDc2IDE2LjMwOTRMMTMuOTE3IDE2Ljc0NjZaTTIuNzE4NTQgMTIuNzU1MkwxLjk2ODU1IDEyLjc2VjEyLjc2TDIuNzE4NTQgMTIuNzU1MlpNMi45MzA1MyAxMS45NTIxTDIuMjgwNjEgMTEuNTc3OEgyLjI4MDYxTDIuOTMwNTMgMTEuOTUyMVpNMTEuMzA1MyAyMS4zNDMxTDExLjMwNjQgMjAuNTkzMUgxMS4zMDY0TDExLjMwNTMgMjEuMzQzMVpNMTIuMDkzMyAyMS4xMzQ3TDExLjcyMTYgMjAuNDgzM0wxMS43MjE2IDIwLjQ4MzNMMTIuMDkzMyAyMS4xMzQ3Wk0yMS45NjUyIDEyLjMwNDlMMjIuNjk4MyAxMi40NjM0TDIxLjk2NTIgMTIuMzA0OVpNMTEuNjk3MyAyLjAzNjA2TDExLjg1ODkgMi43Njg0NUwxMS42OTczIDIuMDM2MDZaTTIyLjM1NTIgMTAuNjMwM0MyMi4xNTExIDEwLjI2OTkgMjEuNjkzNCAxMC4xNDMzIDIxLjMzMyAxMC4zNDc1QzIwLjk3MjYgMTAuNTUxNiAyMC44NDYgMTEuMDA5MyAyMS4wNTAyIDExLjM2OTdMMjIuMzU1MiAxMC42MzAzWk0xOC4wMDYgOC4wMzAwNkMxOC4yOTg4IDguMzIzMSAxOC43NzM3IDguMzIzMzQgMTkuMDY2NyA4LjAzMDZDMTkuMzU5NyA3LjczNzg2IDE5LjM2IDcuMjYyOTggMTkuMDY3MiA2Ljk2OTk0TDE4LjAwNiA4LjAzMDA2Wk05LjI2OTA1IDE4Ljg5ODlMNS4xNTIzNiAxNC43NzgxTDQuMDkxMTYgMTUuODM4Mkw4LjIwNzg1IDE5Ljk1OTFMOS4yNjkwNSAxOC44OTg5Wk0xNy4zMDMyIDE0LjI5MjJMMTUuMzg2MSAxNS4wMTI1TDE1LjkxMzcgMTYuNDE2N0wxNy44MzA4IDE1LjY5NjRMMTcuMzAzMiAxNC4yOTIyWk05LjAzNjQ5IDguNjM5NzlMOS43MzA5NSA2Ljc0NDM4TDguMzIyNTEgNi4yMjgzNEw3LjYyODA1IDguMTIzNzVMOS4wMzY0OSA4LjYzOTc5Wk02LjA0NDQ1IDExLjM5NjVDNi43NTU5MSAxMS4yMDAzIDcuMjk3MjYgMTEuMDYyNSA3LjczOTk1IDEwLjc0MzhMNi44NjM1NCA5LjUyNjQ2QzYuNjkwNiA5LjY1MDk3IDYuNDY2MDggOS43MjQyOCA1LjY0NTc4IDkuOTUwNDRMNi4wNDQ0NSAxMS4zOTY1Wk03LjYyODA1IDguMTIzNzVDNy4zMzUxIDguOTIzMzIgNy4yNDM0NSA5LjE0MTUzIDcuMTA1MDcgOS4zMDM5MUw4LjI0NjczIDEwLjI3NjhDOC42MDA0OCA5Ljg2MTc1IDguNzgyMzcgOS4zMzMzNyA5LjAzNjQ5IDguNjM5NzlMNy42MjgwNSA4LjEyMzc1Wk03LjczOTk1IDEwLjc0MzhDNy45MjcwNCAxMC42MDkxIDguMDk3MTkgMTAuNDUyMyA4LjI0NjczIDEwLjI3NjhMNy4xMDUwNyA5LjMwMzkxQzcuMDMzNzcgOS4zODc1NyA2Ljk1MjY4IDkuNDYyMjkgNi44NjM1NCA5LjUyNjQ2TDcuNzM5OTUgMTAuNzQzOFpNMTUuMzg2MSAxNS4wMTI1QzE0LjY5NyAxNS4yNzE0IDE0LjE3MTcgMTUuNDU3MSAxMy43NjAxIDE1LjgxMzVMMTQuNzQyMSAxNi45NDc1QzE0LjkwMjkgMTYuODA4MiAxNS4xMTkzIDE2LjcxNTIgMTUuOTEzNyAxNi40MTY3TDE1LjM4NjEgMTUuMDEyNVpNMTQuMTAzOCAxOC40MDAxQzE0LjMyOTEgMTcuNTgxMyAxNC40MDIyIDE3LjM1NjkgMTQuNTI2MyAxNy4xODM4TDEzLjMwNzYgMTYuMzA5NEMxMi45OTAzIDE2Ljc1MTcgMTIuODUzIDE3LjI5MTkgMTIuNjU3NSAxOC4wMDIyTDE0LjEwMzggMTguNDAwMVpNMTMuNzYwMSAxNS44MTM1QzEzLjU5MDQgMTUuOTYwNSAxMy40Mzg1IDE2LjEyNjkgMTMuMzA3NiAxNi4zMDk0TDE0LjUyNjMgMTcuMTgzOEMxNC41ODg4IDE3LjA5NjggMTQuNjYxMiAxNy4wMTc1IDE0Ljc0MjEgMTYuOTQ3NUwxMy43NjAxIDE1LjgxMzVaTTUuMTUyMzYgMTQuNzc4MUM0LjUwNjIzIDE0LjEzMTMgNC4wNjgwNiAxMy42OTEgMy43ODM3NCAxMy4zMzM4QzMuNDk4NDIgMTIuOTc1MyAzLjQ2ODk2IDEyLjgyMDEgMy40Njg1MiAxMi43NTA1TDEuOTY4NTUgMTIuNzZDMS45NzIyMyAxMy4zNDIyIDIuMjYxMzUgMTMuODI5NyAyLjYxMDEgMTQuMjY3OUMyLjk1OTg0IDE0LjcwNzMgMy40NzEyMyAxNS4yMTc2IDQuMDkxMTYgMTUuODM4Mkw1LjE1MjM2IDE0Ljc3ODFaTTUuNjQ1NzggOS45NTA0NEM0LjgwMDU2IDEwLjE4MzUgNC4xMDQwMyAxMC4zNzQzIDMuNTgzMDQgMTAuNTgzNUMzLjA2MzQ5IDEwLjc5MiAyLjU3MTI0IDExLjA3MzIgMi4yODA2MSAxMS41Nzc4TDMuNTgwNDUgMTIuMzI2NEMzLjYxNTA3IDEyLjI2NjMgMy43MTcgMTIuMTQ2IDQuMTQxODcgMTEuOTc1NUM0LjU2NTMxIDExLjgwNTUgNS4xNjM0NSAxMS42Mzk0IDYuMDQ0NDUgMTEuMzk2NUw1LjY0NTc4IDkuOTUwNDRaTTMuNDY4NTIgMTIuNzUwNUMzLjQ2NzU4IDEyLjYwMTYgMy41MDYyMyAxMi40NTUzIDMuNTgwNDUgMTIuMzI2NEwyLjI4MDYxIDExLjU3NzhDMi4wNzM2MiAxMS45MzcyIDEuOTY1OTMgMTIuMzQ1MiAxLjk2ODU1IDEyLjc2TDMuNDY4NTIgMTIuNzUwNVpNOC4yMDc4NSAxOS45NTkxQzguODMxNzIgMjAuNTgzNiA5LjM0NDcyIDIxLjA5ODcgOS43ODY1NCAyMS40NTA2QzEwLjIyNzEgMjEuODAxNSAxMC43MTggMjIuMDkyMiAxMS4zMDQyIDIyLjA5MzFMMTEuMzA2NCAyMC41OTMxQzExLjIzNyAyMC41OTMgMTEuMDgxNSAyMC41NjQ0IDEwLjcyMTEgMjAuMjc3M0MxMC4zNjE5IDE5Ljk5MTIgOS45MTkzMSAxOS41NDk5IDkuMjY5MDUgMTguODk4OUw4LjIwNzg1IDE5Ljk1OTFaTTEyLjY1NzUgMTguMDAyMkMxMi40MTMzIDE4Ljg4OTcgMTIuMjQ2MyAxOS40OTI0IDEyLjA3NTIgMTkuOTE4OEMxMS45MDM0IDIwLjM0NjcgMTEuNzgyMiAyMC40NDg3IDExLjcyMTYgMjAuNDgzM0wxMi40NjUxIDIxLjc4NjFDMTIuOTc0MSAyMS40OTU2IDEzLjI1NzMgMjEuMDAwNCAxMy40NjcyIDIwLjQ3NzVDMTMuNjc3NyAxOS45NTMyIDEzLjg2OTUgMTkuMjUxNiAxNC4xMDM4IDE4LjQwMDFMMTIuNjU3NSAxOC4wMDIyWk0xMS4zMDQyIDIyLjA5MzFDMTEuNzExMyAyMi4wOTM3IDEyLjExMTUgMjEuOTg3OSAxMi40NjUxIDIxLjc4NjFMMTEuNzIxNiAyMC40ODMzQzExLjU5NTEgMjAuNTU1NSAxMS40NTIgMjAuNTkzMyAxMS4zMDY0IDIwLjU5MzFMMTEuMzA0MiAyMi4wOTMxWk0xNy44MzA4IDE1LjY5NjRDMTkuMTkyMiAxNS4xODQ5IDIwLjI5NDEgMTQuNzczIDIxLjA3NzEgMTQuMzM4NEMyMS44NzE5IDEzLjg5NzMgMjIuNTA4NCAxMy4zNDE2IDIyLjY5ODMgMTIuNDYzNEwyMS4yMzIyIDEyLjE0NjRDMjEuMTc4IDEyLjM5NjggMjEuMDAwMiAxMi42NjU1IDIwLjM0OTIgMTMuMDI2OEMxOS42ODY1IDEzLjM5NDYgMTguNzExMyAxMy43NjMyIDE3LjMwMzIgMTQuMjkyMkwxNy44MzA4IDE1LjY5NjRaTTE2LjUyIDQuNDIwMTRDMTUuNDg0MSAzLjM4MzIgMTQuNjQ4MSAyLjU0MzUzIDEzLjkyNDYgMi4wMDYzOEMxMy4xOTA5IDEuNDYxNjUgMTIuNDE3NSAxLjEwOTEyIDExLjUzNTcgMS4zMDM2N0wxMS44NTg5IDIuNzY4NDVDMTIuMTA4NiAyLjcxMzM1IDEyLjQyNzggMi43NjMzIDEzLjAzMDUgMy4yMTA3NUMxMy42NDM0IDMuNjY1NzkgMTQuMzg3NyA0LjQwODAxIDE1LjQ1ODggNS40ODAyNkwxNi41MiA0LjQyMDE0Wk05LjczMDk1IDYuNzQ0MzhDMTAuMjUyNiA1LjMyMDc1IDEwLjYxNjIgNC4zMzQwMyAxMC45ODEzIDMuNjYzMTVDMTEuMzQwMyAzLjAwMzM4IDExLjYwOTEgMi44MjM1NyAxMS44NTg5IDIuNzY4NDVMMTEuNTM1NyAxLjMwMzY3QzEwLjY1NDEgMS40OTgxOSAxMC4xMDA2IDIuMTQzMzIgOS42NjM3IDIuOTQ2MThDOS4yMzI4NiAzLjczNzkzIDguODI2OTUgNC44NTE1NCA4LjMyMjUxIDYuMjI4MzRMOS43MzA5NSA2Ljc0NDM4Wk0yMS4wNTAyIDExLjM2OTdDMjEuMjUxNSAxMS43MjUxIDIxLjI3NDUgMTEuOTUwNyAyMS4yMzIyIDEyLjE0NjRMMjIuNjk4MyAxMi40NjM0QzIyLjg0MDQgMTEuODA2NCAyMi42Nzk2IDExLjIwMjcgMjIuMzU1MiAxMC42MzAzTDIxLjA1MDIgMTEuMzY5N1pNMTUuNDU4OCA1LjQ4MDI2TDE4LjAwNiA4LjAzMDA2TDE5LjA2NzIgNi45Njk5NEwxNi41MiA0LjQyMDE0TDE1LjQ1ODggNS40ODAyNloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEuNDY5NCAyMS40Njk3QzEuMTc2NjYgMjEuNzYyNyAxLjE3NjkgMjIuMjM3NiAxLjQ2OTk0IDIyLjUzMDRDMS43NjI5OCAyMi44MjMxIDIuMjM3ODYgMjIuODIyOSAyLjUzMDYgMjIuNTI5OEwxLjQ2OTQgMjEuNDY5N1pNNy4xODM4MyAxNy44NzE5QzcuNDc2NTcgMTcuNTc4OCA3LjQ3NjMzIDE3LjEwMzkgNy4xODMyOSAxNi44MTEyQzYuODkwMjQgMTYuNTE4NSA2LjQxNTM3IDE2LjUxODcgNi4xMjI2MyAxNi44MTE3TDcuMTgzODMgMTcuODcxOVpNMi41MzA2IDIyLjUyOThMNy4xODM4MyAxNy44NzE5TDYuMTIyNjMgMTYuODExN0wxLjQ2OTQgMjEuNDY5N0wyLjUzMDYgMjIuNTI5OFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNS45ODk0IDQuOTUwMkwxNi41MiA0LjQyMDE0VjQuNDIwMTRMMTUuOTg5NCA0Ljk1MDJaTTE5LjA3MTYgOC4wMzU2MkwxOC41NDEgOC41NjU2OEwxOS4wNzE2IDguMDM1NjJaTTguNzM4MzcgMTkuNDI5TDguMjA3NzcgMTkuOTU5MUw4LjczODM3IDE5LjQyOVpNNC42MjE2OSAxNS4zMDgxTDUuMTUyMjkgMTQuNzc4MUw0LjYyMTY5IDE1LjMwODFaTTE3LjU2NjkgMTQuOTk0M0wxNy4zMDMyIDE0LjI5MjJMMTcuNTY2OSAxNC45OTQzWk0xNS42NDk4IDE1LjcxNDZMMTUuOTEzNiAxNi40MTY3SDE1LjkxMzZMMTUuNjQ5OCAxNS43MTQ2Wk04LjMzMjIgOC4zODE3N0w3LjYyNzk4IDguMTIzNzVMOC4zMzIyIDguMzgxNzdaTTkuMDI2NjUgNi40ODYzNkw5LjczMDg3IDYuNzQ0MzhWNi43NDQzOEw5LjAyNjY1IDYuNDg2MzZaTTUuODQ1MDQgMTAuNjczNUw2LjA0NDM4IDExLjM5NjVMNS44NDUwNCAxMC42NzM1Wk03LjMwMTY3IDEwLjEzNTFMNi44NjM0NiA5LjUyNjQ2TDYuODYzNDYgOS41MjY0Nkw3LjMwMTY3IDEwLjEzNTFaTTcuNjc1ODIgOS43OTAzOEw4LjI0NjY1IDEwLjI3NjhIOC4yNDY2NUw3LjY3NTgyIDkuNzkwMzhaTTE0LjI1MSAxNi4zODA1TDE0Ljc0MiAxNi45NDc1TDE0Ljc0MiAxNi45NDc1TDE0LjI1MSAxNi4zODA1Wk0xMy4zODA2IDE4LjIwMTJMMTIuNjU3NCAxOC4wMDIyVjE4LjAwMjJMMTMuMzgwNiAxOC4yMDEyWk0xMy45MTY5IDE2Ljc0NjZMMTMuMzA3NSAxNi4zMDk0TDEzLjMwNzUgMTYuMzA5NEwxMy45MTY5IDE2Ljc0NjZaTTIuNzE4NDYgMTIuNzU1MkwxLjk2ODQ4IDEyLjc2TDEuOTY4NDggMTIuNzZMMi43MTg0NiAxMi43NTUyWk0yLjkzMDQ1IDExLjk1MjFMMi4yODA1MyAxMS41Nzc4SDIuMjgwNTNMMi45MzA0NSAxMS45NTIxWk0xMS4zMDUyIDIxLjM0MzFMMTEuMzA2NCAyMC41OTMxSDExLjMwNjRMMTEuMzA1MiAyMS4zNDMxWk0xMi4wOTMzIDIxLjEzNDdMMTEuNzIxNSAyMC40ODMzTDExLjcyMTUgMjAuNDgzM0wxMi4wOTMzIDIxLjEzNDdaTTExLjY5NzMgMi4wMzYwNkwxMS44NTg4IDIuNzY4NDVMMTEuNjk3MyAyLjAzNjA2Wk0xLjQ2OTQgMjEuNDY5OUMxLjE3NjY2IDIxLjc2MyAxLjE3NjkgMjIuMjM3OSAxLjQ2OTk0IDIyLjUzMDZDMS43NjI5OCAyMi44MjMzIDIuMjM3ODYgMjIuODIzMSAyLjUzMDYgMjIuNTMwMUwxLjQ2OTQgMjEuNDY5OVpNNy4xODM4MyAxNy44NzIxQzcuNDc2NTcgMTcuNTc5MSA3LjQ3NjMzIDE3LjEwNDIgNy4xODMyOSAxNi44MTE0QzYuODkwMjQgMTYuNTE4NyA2LjQxNTM3IDE2LjUxODkgNi4xMjI2MyAxNi44MTJMNy4xODM4MyAxNy44NzIxWk0xNS40NTg4IDUuNDgwMjZMMTguNTQxIDguNTY1NjhMMTkuNjAyMiA3LjUwNTU2TDE2LjUyIDQuNDIwMTRMMTUuNDU4OCA1LjQ4MDI2Wk05LjI2ODk3IDE4Ljg5ODlMNS4xNTIyOSAxNC43NzgxTDQuMDkxMDkgMTUuODM4Mkw4LjIwNzc3IDE5Ljk1OTFMOS4yNjg5NyAxOC44OTg5Wk0xNy4zMDMyIDE0LjI5MjJMMTUuMzg2IDE1LjAxMjVMMTUuOTEzNiAxNi40MTY3TDE3LjgzMDcgMTUuNjk2NEwxNy4zMDMyIDE0LjI5MjJaTTkuMDM2NDIgOC42Mzk3OUw5LjczMDg3IDYuNzQ0MzhMOC4zMjI0MyA2LjIyODM0TDcuNjI3OTggOC4xMjM3NUw5LjAzNjQyIDguNjM5NzlaTTYuMDQ0MzggMTEuMzk2NUM2Ljc1NTgzIDExLjIwMDMgNy4yOTcxOSAxMS4wNjI1IDcuNzM5ODcgMTAuNzQzOEw2Ljg2MzQ2IDkuNTI2NDZDNi42OTA1MyA5LjY1MDk3IDYuNDY2MDEgOS43MjQyOCA1LjY0NTcgOS45NTA0NEw2LjA0NDM4IDExLjM5NjVaTTcuNjI3OTggOC4xMjM3NUM3LjMzNTAyIDguOTIzMzIgNy4yNDMzOCA5LjE0MTUzIDcuMTA0OTkgOS4zMDM5MUw4LjI0NjY1IDEwLjI3NjhDOC42MDA0MSA5Ljg2MTc1IDguNzgyMyA5LjMzMzM3IDkuMDM2NDIgOC42Mzk3OUw3LjYyNzk4IDguMTIzNzVaTTcuNzM5ODcgMTAuNzQzOEM3LjkyNjk2IDEwLjYwOTEgOC4wOTcxMiAxMC40NTIzIDguMjQ2NjUgMTAuMjc2OEw3LjEwNDk5IDkuMzAzOTFDNy4wMzM3IDkuMzg3NTcgNi45NTI2IDkuNDYyMjkgNi44NjM0NiA5LjUyNjQ2TDcuNzM5ODcgMTAuNzQzOFpNMTUuMzg2IDE1LjAxMjVDMTQuNjk3IDE1LjI3MTQgMTQuMTcxNiAxNS40NTcxIDEzLjc2IDE1LjgxMzVMMTQuNzQyIDE2Ljk0NzVDMTQuOTAyOCAxNi44MDgyIDE1LjExOTIgMTYuNzE1MiAxNS45MTM2IDE2LjQxNjdMMTUuMzg2IDE1LjAxMjVaTTE0LjEwMzcgMTguNDAwMUMxNC4zMjkgMTcuNTgxMyAxNC40MDIxIDE3LjM1NjkgMTQuNTI2MyAxNy4xODM4TDEzLjMwNzUgMTYuMzA5NEMxMi45OTAyIDE2Ljc1MTcgMTIuODUyOSAxNy4yOTE5IDEyLjY1NzQgMTguMDAyMkwxNC4xMDM3IDE4LjQwMDFaTTEzLjc2IDE1LjgxMzVDMTMuNTkwMyAxNS45NjA1IDEzLjQzODQgMTYuMTI2OSAxMy4zMDc1IDE2LjMwOTRMMTQuNTI2MyAxNy4xODM4QzE0LjU4ODcgMTcuMDk2OCAxNC42NjExIDE3LjAxNzUgMTQuNzQyIDE2Ljk0NzVMMTMuNzYgMTUuODEzNVpNNS4xNTIyOSAxNC43NzgxQzQuNTA2MTUgMTQuMTMxMyA0LjA2Nzk5IDEzLjY5MSAzLjc4MzY2IDEzLjMzMzhDMy40OTgzNSAxMi45NzUzIDMuNDY4ODkgMTIuODIwMSAzLjQ2ODQ1IDEyLjc1MDVMMS45Njg0OCAxMi43NkMxLjk3MjE1IDEzLjM0MjIgMi4yNjEyNyAxMy44Mjk3IDIuNjEwMDIgMTQuMjY3OUMyLjk1OTc2IDE0LjcwNzMgMy40NzExNSAxNS4yMTc2IDQuMDkxMDkgMTUuODM4Mkw1LjE1MjI5IDE0Ljc3ODFaTTUuNjQ1NyA5Ljk1MDQ0QzQuODAwNDggMTAuMTgzNSA0LjEwMzk2IDEwLjM3NDMgMy41ODI5NiAxMC41ODM1QzMuMDYzNDEgMTAuNzkyIDIuNTcxMTYgMTEuMDczMiAyLjI4MDUzIDExLjU3NzhMMy41ODAzOCAxMi4zMjY0QzMuNjE1IDEyLjI2NjMgMy43MTY5MyAxMi4xNDYgNC4xNDE4IDExLjk3NTVDNC41NjUyMyAxMS44MDU1IDUuMTYzMzcgMTEuNjM5NCA2LjA0NDM4IDExLjM5NjVMNS42NDU3IDkuOTUwNDRaTTMuNDY4NDUgMTIuNzUwNUMzLjQ2NzUxIDEyLjYwMTYgMy41MDYxNiAxMi40NTUzIDMuNTgwMzggMTIuMzI2NEwyLjI4MDUzIDExLjU3NzhDMi4wNzM1NCAxMS45MzcyIDEuOTY1ODYgMTIuMzQ1MiAxLjk2ODQ4IDEyLjc2TDMuNDY4NDUgMTIuNzUwNVpNOC4yMDc3NyAxOS45NTkxQzguODMxNjQgMjAuNTgzNiA5LjM0NDY0IDIxLjA5ODcgOS43ODY0NyAyMS40NTA2QzEwLjIyNyAyMS44MDE1IDEwLjcxNzkgMjIuMDkyMiAxMS4zMDQxIDIyLjA5MzFMMTEuMzA2NCAyMC41OTMxQzExLjIzNjkgMjAuNTkzIDExLjA4MTQgMjAuNTY0NCAxMC43MjEgMjAuMjc3M0MxMC4zNjE4IDE5Ljk5MTIgOS45MTkyMyAxOS41NDk5IDkuMjY4OTcgMTguODk4OUw4LjIwNzc3IDE5Ljk1OTFaTTEyLjY1NzQgMTguMDAyMkMxMi40MTMzIDE4Ljg4OTcgMTIuMjQ2MiAxOS40OTI0IDEyLjA3NTEgMTkuOTE4OEMxMS45MDMzIDIwLjM0NjcgMTEuNzgyMSAyMC40NDg3IDExLjcyMTUgMjAuNDgzM0wxMi40NjUgMjEuNzg2MUMxMi45NzQgMjEuNDk1NiAxMy4yNTczIDIxLjAwMDQgMTMuNDY3MSAyMC40Nzc1QzEzLjY3NzYgMTkuOTUzMiAxMy44Njk0IDE5LjI1MTYgMTQuMTAzNyAxOC40MDAxTDEyLjY1NzQgMTguMDAyMlpNMTEuMzA0MSAyMi4wOTMxQzExLjcxMTIgMjIuMDkzNyAxMi4xMTE0IDIxLjk4NzkgMTIuNDY1IDIxLjc4NjFMMTEuNzIxNSAyMC40ODMzQzExLjU5NSAyMC41NTU1IDExLjQ1MTkgMjAuNTkzMyAxMS4zMDY0IDIwLjU5MzFMMTEuMzA0MSAyMi4wOTMxWk0xOC41NDEgOC41NjU2OEMxOS42MDQ1IDkuNjMwMjIgMjAuMzQwMyAxMC4zNjk1IDIwLjc5MTcgMTAuOTc4OEMyMS4yMzUzIDExLjU3NzQgMjEuMjg2MyAxMS44OTU5IDIxLjIzMjEgMTIuMTQ2NEwyMi42OTgyIDEyLjQ2MzRDMjIuODg4MSAxMS41ODU0IDIyLjUzODIgMTAuODE2MiAyMS45OTY5IDEwLjA4NTdDMjEuNDYzNSA5LjM2NTkyIDIwLjYzMDUgOC41MzQ4NiAxOS42MDIyIDcuNTA1NTZMMTguNTQxIDguNTY1NjhaTTE3LjgzMDcgMTUuNjk2NEMxOS4xOTIxIDE1LjE4NDkgMjAuMjk0IDE0Ljc3MyAyMS4wNzcxIDE0LjMzODRDMjEuODcxOCAxMy44OTczIDIyLjUwODMgMTMuMzQxNiAyMi42OTgyIDEyLjQ2MzRMMjEuMjMyMSAxMi4xNDY0QzIxLjE3OCAxMi4zOTY4IDIxLjAwMDEgMTIuNjY1NSAyMC4zNDkxIDEzLjAyNjhDMTkuNjg2NSAxMy4zOTQ2IDE4LjcxMTIgMTMuNzYzMiAxNy4zMDMyIDE0LjI5MjJMMTcuODMwNyAxNS42OTY0Wk0xNi41MiA0LjQyMDE0QzE1LjQ4NDEgMy4zODMyIDE0LjY0ODEgMi41NDM1MyAxMy45MjQ2IDIuMDA2MzhDMTMuMTkwOCAxLjQ2MTY1IDEyLjQxNzUgMS4xMDkxMiAxMS41MzU3IDEuMzAzNjdMMTEuODU4OCAyLjc2ODQ1QzEyLjEwODYgMi43MTMzNSAxMi40Mjc3IDIuNzYzMyAxMy4wMzA0IDMuMjEwNzVDMTMuNjQzMyAzLjY2NTc5IDE0LjM4NzYgNC40MDgwMSAxNS40NTg4IDUuNDgwMjZMMTYuNTIgNC40MjAxNFpNOS43MzA4NyA2Ljc0NDM4QzEwLjI1MjUgNS4zMjA3NSAxMC42MTYxIDQuMzM0MDMgMTAuOTgxMiAzLjY2MzE1QzExLjM0MDIgMy4wMDMzOCAxMS42MDkgMi44MjM1NyAxMS44NTg4IDIuNzY4NDVMMTEuNTM1NyAxLjMwMzY3QzEwLjY1NCAxLjQ5ODE5IDEwLjEwMDUgMi4xNDMzMiA5LjY2MzYyIDIuOTQ2MThDOS4yMzI3OCAzLjczNzkzIDguODI2ODggNC44NTE1NCA4LjMyMjQzIDYuMjI4MzRMOS43MzA4NyA2Ljc0NDM4Wk0yLjUzMDYgMjIuNTMwMUw3LjE4MzgzIDE3Ljg3MjFMNi4xMjI2MyAxNi44MTJMMS40Njk0IDIxLjQ2OTlMMi41MzA2IDIyLjUzMDFaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNS45ODk0IDQuOTUwMkwxNi41MiA0LjQyMDE0TDE2LjUyIDQuNDIwMTRMMTUuOTg5NCA0Ljk1MDJaTTE5LjA3MTcgOC4wMzU2MkwxOC41NDExIDguNTY1NjhMMTguNTQxMSA4LjU2NTY4TDE5LjA3MTcgOC4wMzU2MlpNOC43Mzg0NSAxOS40MjlMOC4yMDc4NSAxOS45NTkxTDguNzM4NDUgMTkuNDI5Wk00LjYyMTc2IDE1LjMwODFMNS4xNTIzNiAxNC43NzgxTDQuNjIxNzYgMTUuMzA4MVpNMTcuNTY3IDE0Ljk5NDNMMTcuMzAzMiAxNC4yOTIyTDE3LjU2NyAxNC45OTQzWk0xNS42NDk5IDE1LjcxNDZMMTUuOTEzNyAxNi40MTY3TDE1LjY0OTkgMTUuNzE0NlpNOC4zMzIyNyA4LjM4MTc3TDcuNjI4MDUgOC4xMjM3NUg3LjYyODA1TDguMzMyMjcgOC4zODE3N1pNOS4wMjY3MyA2LjQ4NjM2TDkuNzMwOTUgNi43NDQzOEw5LjAyNjczIDYuNDg2MzZaTTUuODQ1MTIgMTAuNjczNUw2LjA0NDQ1IDExLjM5NjVINi4wNDQ0NUw1Ljg0NTEyIDEwLjY3MzVaTTcuMzAxNzQgMTAuMTM1MUw2Ljg2MzU0IDkuNTI2NDZMNi44NjM1NCA5LjUyNjQ2TDcuMzAxNzQgMTAuMTM1MVpNNy42NzU5IDkuNzkwMzhMOC4yNDY3MyAxMC4yNzY4SDguMjQ2NzNMNy42NzU5IDkuNzkwMzhaTTE0LjI1MTEgMTYuMzgwNUwxNC43NDIxIDE2Ljk0NzVMMTQuNzQyMSAxNi45NDc1TDE0LjI1MTEgMTYuMzgwNVpNMTMuMzgwNyAxOC4yMDEyTDEyLjY1NzUgMTguMDAyMlYxOC4wMDIyTDEzLjM4MDcgMTguMjAxMlpNMTMuOTE3IDE2Ljc0NjZMMTMuMzA3NiAxNi4zMDk0TDEzLjMwNzYgMTYuMzA5NEwxMy45MTcgMTYuNzQ2NlpNMi43MTg1NCAxMi43NTUyTDEuOTY4NTUgMTIuNzZWMTIuNzZMMi43MTg1NCAxMi43NTUyWk0yLjkzMDUzIDExLjk1MjFMMi4yODA2MSAxMS41Nzc4SDIuMjgwNjFMMi45MzA1MyAxMS45NTIxWk0xMS4zMDUzIDIxLjM0MzFMMTEuMzA2NCAyMC41OTMxSDExLjMwNjRMMTEuMzA1MyAyMS4zNDMxWk0xMi4wOTMzIDIxLjEzNDdMMTEuNzIxNiAyMC40ODMzTDExLjcyMTYgMjAuNDgzM0wxMi4wOTMzIDIxLjEzNDdaTTExLjY5NzMgMi4wMzYwNkwxMS44NTg5IDIuNzY4NDVMMTEuNjk3MyAyLjAzNjA2Wk0xNS40NTg4IDUuNDgwMjZMMTguNTQxMSA4LjU2NTY4TDE5LjYwMjMgNy41MDU1NkwxNi41MiA0LjQyMDE0TDE1LjQ1ODggNS40ODAyNlpNOS4yNjkwNSAxOC44OTg5TDUuMTUyMzYgMTQuNzc4MUw0LjA5MTE2IDE1LjgzODJMOC4yMDc4NSAxOS45NTkxTDkuMjY5MDUgMTguODk4OVpNMTcuMzAzMiAxNC4yOTIyTDE1LjM4NjEgMTUuMDEyNUwxNS45MTM3IDE2LjQxNjdMMTcuODMwOCAxNS42OTY0TDE3LjMwMzIgMTQuMjkyMlpNOS4wMzY0OSA4LjYzOTc5TDkuNzMwOTUgNi43NDQzOEw4LjMyMjUxIDYuMjI4MzRMNy42MjgwNSA4LjEyMzc1TDkuMDM2NDkgOC42Mzk3OVpNNi4wNDQ0NSAxMS4zOTY1QzYuNzU1OTEgMTEuMjAwMyA3LjI5NzI2IDExLjA2MjUgNy43Mzk5NSAxMC43NDM4TDYuODYzNTQgOS41MjY0NkM2LjY5MDYgOS42NTA5NyA2LjQ2NjA4IDkuNzI0MjggNS42NDU3OCA5Ljk1MDQ0TDYuMDQ0NDUgMTEuMzk2NVpNNy42MjgwNSA4LjEyMzc1QzcuMzM1MSA4LjkyMzMyIDcuMjQzNDUgOS4xNDE1MyA3LjEwNTA3IDkuMzAzOTFMOC4yNDY3MyAxMC4yNzY4QzguNjAwNDggOS44NjE3NSA4Ljc4MjM3IDkuMzMzMzcgOS4wMzY0OSA4LjYzOTc5TDcuNjI4MDUgOC4xMjM3NVpNNy43Mzk5NSAxMC43NDM4QzcuOTI3MDQgMTAuNjA5MSA4LjA5NzE5IDEwLjQ1MjMgOC4yNDY3MyAxMC4yNzY4TDcuMTA1MDcgOS4zMDM5MUM3LjAzMzc3IDkuMzg3NTcgNi45NTI2OCA5LjQ2MjI5IDYuODYzNTQgOS41MjY0Nkw3LjczOTk1IDEwLjc0MzhaTTE1LjM4NjEgMTUuMDEyNUMxNC42OTcgMTUuMjcxNCAxNC4xNzE3IDE1LjQ1NzEgMTMuNzYwMSAxNS44MTM1TDE0Ljc0MjEgMTYuOTQ3NUMxNC45MDI5IDE2LjgwODIgMTUuMTE5MyAxNi43MTUyIDE1LjkxMzcgMTYuNDE2N0wxNS4zODYxIDE1LjAxMjVaTTE0LjEwMzggMTguNDAwMUMxNC4zMjkxIDE3LjU4MTMgMTQuNDAyMiAxNy4zNTY5IDE0LjUyNjMgMTcuMTgzOEwxMy4zMDc2IDE2LjMwOTRDMTIuOTkwMyAxNi43NTE3IDEyLjg1MyAxNy4yOTE5IDEyLjY1NzUgMTguMDAyMkwxNC4xMDM4IDE4LjQwMDFaTTEzLjc2MDEgMTUuODEzNUMxMy41OTA0IDE1Ljk2MDUgMTMuNDM4NSAxNi4xMjY5IDEzLjMwNzYgMTYuMzA5NEwxNC41MjYzIDE3LjE4MzhDMTQuNTg4OCAxNy4wOTY4IDE0LjY2MTIgMTcuMDE3NSAxNC43NDIxIDE2Ljk0NzVMMTMuNzYwMSAxNS44MTM1Wk01LjE1MjM2IDE0Ljc3ODFDNC41MDYyMyAxNC4xMzEzIDQuMDY4MDYgMTMuNjkxIDMuNzgzNzQgMTMuMzMzOEMzLjQ5ODQyIDEyLjk3NTMgMy40Njg5NiAxMi44MjAxIDMuNDY4NTIgMTIuNzUwNUwxLjk2ODU1IDEyLjc2QzEuOTcyMjMgMTMuMzQyMiAyLjI2MTM1IDEzLjgyOTcgMi42MTAxIDE0LjI2NzlDMi45NTk4NCAxNC43MDczIDMuNDcxMjMgMTUuMjE3NiA0LjA5MTE2IDE1LjgzODJMNS4xNTIzNiAxNC43NzgxWk01LjY0NTc4IDkuOTUwNDRDNC44MDA1NiAxMC4xODM1IDQuMTA0MDMgMTAuMzc0MyAzLjU4MzA0IDEwLjU4MzVDMy4wNjM0OSAxMC43OTIgMi41NzEyNCAxMS4wNzMyIDIuMjgwNjEgMTEuNTc3OEwzLjU4MDQ1IDEyLjMyNjRDMy42MTUwNyAxMi4yNjYzIDMuNzE3IDEyLjE0NiA0LjE0MTg3IDExLjk3NTVDNC41NjUzMSAxMS44MDU1IDUuMTYzNDUgMTEuNjM5NCA2LjA0NDQ1IDExLjM5NjVMNS42NDU3OCA5Ljk1MDQ0Wk0zLjQ2ODUyIDEyLjc1MDVDMy40Njc1OCAxMi42MDE2IDMuNTA2MjMgMTIuNDU1MyAzLjU4MDQ1IDEyLjMyNjRMMi4yODA2MSAxMS41Nzc4QzIuMDczNjIgMTEuOTM3MiAxLjk2NTkzIDEyLjM0NTIgMS45Njg1NSAxMi43NkwzLjQ2ODUyIDEyLjc1MDVaTTguMjA3ODUgMTkuOTU5MUM4LjgzMTcyIDIwLjU4MzYgOS4zNDQ3MiAyMS4wOTg3IDkuNzg2NTQgMjEuNDUwNkMxMC4yMjcxIDIxLjgwMTUgMTAuNzE4IDIyLjA5MjIgMTEuMzA0MiAyMi4wOTMxTDExLjMwNjQgMjAuNTkzMUMxMS4yMzcgMjAuNTkzIDExLjA4MTUgMjAuNTY0NCAxMC43MjExIDIwLjI3NzNDMTAuMzYxOSAxOS45OTEyIDkuOTE5MzEgMTkuNTQ5OSA5LjI2OTA1IDE4Ljg5ODlMOC4yMDc4NSAxOS45NTkxWk0xMi42NTc1IDE4LjAwMjJDMTIuNDEzMyAxOC44ODk3IDEyLjI0NjMgMTkuNDkyNCAxMi4wNzUyIDE5LjkxODhDMTEuOTAzNCAyMC4zNDY3IDExLjc4MjIgMjAuNDQ4NyAxMS43MjE2IDIwLjQ4MzNMMTIuNDY1MSAyMS43ODYxQzEyLjk3NDEgMjEuNDk1NiAxMy4yNTczIDIxLjAwMDQgMTMuNDY3MiAyMC40Nzc1QzEzLjY3NzcgMTkuOTUzMiAxMy44Njk1IDE5LjI1MTYgMTQuMTAzOCAxOC40MDAxTDEyLjY1NzUgMTguMDAyMlpNMTEuMzA0MiAyMi4wOTMxQzExLjcxMTMgMjIuMDkzNyAxMi4xMTE1IDIxLjk4NzkgMTIuNDY1MSAyMS43ODYxTDExLjcyMTYgMjAuNDgzM0MxMS41OTUxIDIwLjU1NTUgMTEuNDUyIDIwLjU5MzMgMTEuMzA2NCAyMC41OTMxTDExLjMwNDIgMjIuMDkzMVpNMTguNTQxMSA4LjU2NTY4QzE5LjYwNDYgOS42MzAyMiAyMC4zNDAzIDEwLjM2OTUgMjAuNzkxOCAxMC45Nzg4QzIxLjIzNTMgMTEuNTc3NCAyMS4yODY0IDExLjg5NTkgMjEuMjMyMiAxMi4xNDY0TDIyLjY5ODMgMTIuNDYzNEMyMi44ODgyIDExLjU4NTQgMjIuNTM4MyAxMC44MTYyIDIxLjk5NyAxMC4wODU3QzIxLjQ2MzYgOS4zNjU5MiAyMC42MzA2IDguNTM0ODYgMTkuNjAyMyA3LjUwNTU2TDE4LjU0MTEgOC41NjU2OFpNMTcuODMwOCAxNS42OTY0QzE5LjE5MjIgMTUuMTg0OSAyMC4yOTQxIDE0Ljc3MyAyMS4wNzcxIDE0LjMzODRDMjEuODcxOSAxMy44OTczIDIyLjUwODQgMTMuMzQxNiAyMi42OTgzIDEyLjQ2MzRMMjEuMjMyMiAxMi4xNDY0QzIxLjE3OCAxMi4zOTY4IDIxLjAwMDIgMTIuNjY1NSAyMC4zNDkyIDEzLjAyNjhDMTkuNjg2NSAxMy4zOTQ2IDE4LjcxMTMgMTMuNzYzMiAxNy4zMDMyIDE0LjI5MjJMMTcuODMwOCAxNS42OTY0Wk0xNi41MiA0LjQyMDE0QzE1LjQ4NDEgMy4zODMyIDE0LjY0ODEgMi41NDM1MyAxMy45MjQ2IDIuMDA2MzhDMTMuMTkwOSAxLjQ2MTY1IDEyLjQxNzUgMS4xMDkxMiAxMS41MzU3IDEuMzAzNjdMMTEuODU4OSAyLjc2ODQ1QzEyLjEwODYgMi43MTMzNSAxMi40Mjc4IDIuNzYzMyAxMy4wMzA1IDMuMjEwNzVDMTMuNjQzNCAzLjY2NTc5IDE0LjM4NzcgNC40MDgwMSAxNS40NTg4IDUuNDgwMjZMMTYuNTIgNC40MjAxNFpNOS43MzA5NSA2Ljc0NDM4QzEwLjI1MjYgNS4zMjA3NSAxMC42MTYyIDQuMzM0MDMgMTAuOTgxMyAzLjY2MzE1QzExLjM0MDMgMy4wMDMzOCAxMS42MDkxIDIuODIzNTcgMTEuODU4OSAyLjc2ODQ1TDExLjUzNTcgMS4zMDM2N0MxMC42NTQxIDEuNDk4MTkgMTAuMTAwNiAyLjE0MzMyIDkuNjYzNyAyLjk0NjE4QzkuMjMyODYgMy43Mzc5MyA4LjgyNjk1IDQuODUxNTQgOC4zMjI1MSA2LjIyODM0TDkuNzMwOTUgNi43NDQzOFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMS40Njk0IDIxLjQ2OTdDMS4xNzY2NiAyMS43NjI3IDEuMTc2OSAyMi4yMzc2IDEuNDY5OTQgMjIuNTMwNEMxLjc2Mjk4IDIyLjgyMzEgMi4yMzc4NiAyMi44MjI5IDIuNTMwNiAyMi41Mjk4TDEuNDY5NCAyMS40Njk3Wk03LjE4MzgzIDE3Ljg3MTlDNy40NzY1NyAxNy41Nzg4IDcuNDc2MzMgMTcuMTAzOSA3LjE4MzI5IDE2LjgxMTJDNi44OTAyNCAxNi41MTg1IDYuNDE1MzcgMTYuNTE4NyA2LjEyMjYzIDE2LjgxMTdMNy4xODM4MyAxNy44NzE5Wk0yLjUzMDYgMjIuNTI5OEw3LjE4MzgzIDE3Ljg3MTlMNi4xMjI2MyAxNi44MTE3TDEuNDY5NCAyMS40Njk3TDIuNTMwNiAyMi41Mjk4WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTYuNDc0NiA0LjM3NDdMMTkuNjQ3NCA3LjU1MDcyQzIwLjY1NDkgOC41NTkxNyAyMS40NzEzIDkuMzc2NDEgMjEuOTk2OSAxMC4wODU2QzIyLjUzODIgMTAuODE2MSAyMi44ODgxIDExLjU4NTMgMjIuNjk4MiAxMi40NjM0QzIyLjUwODMgMTMuMzQxNSAyMS44NzE4IDEzLjg5NzIgMjEuMDc3MSAxNC4zMzgzQzIwLjMwNTUgMTQuNzY2NSAxOS4yMjQ1IDE1LjE3MjcgMTcuODkwNiAxNS42NzM4TDE1LjkxMzYgMTYuNDE2NkMxNS4xMTkyIDE2LjcxNTEgMTQuOTAyOCAxNi44MDgxIDE0Ljc0MiAxNi45NDc0QzE0LjY2MTEgMTcuMDE3NCAxNC41ODg3IDE3LjA5NjcgMTQuNTI2MyAxNy4xODM3QzE0LjQwMjEgMTcuMzU2OCAxNC4zMjkgMTcuNTgxMiAxNC4xMDM3IDE4LjRMMTQuMDkxNCAxOC40NDQ5QzEzLjg2MjcgMTkuMjc2MiAxMy42NzM5IDE5Ljk2MjMgMTMuNDY3MSAyMC40Nzc0QzEzLjI1NzMgMjEuMDAwMyAxMi45NzQgMjEuNDk1NSAxMi40NjUgMjEuNzg2QzEyLjExMTQgMjEuOTg3OCAxMS43MTEyIDIyLjA5MzYgMTEuMzA0MSAyMi4wOTNDMTAuNzE3OSAyMi4wOTIxIDEwLjIyNyAyMS44MDE0IDkuNzg2NDcgMjEuNDUwNkM5LjM1MjQzIDIxLjEwNDkgOC44NDk3IDIwLjYwMTYgOC4yNDA2NSAxOS45OTE5TDYuNjUzMzggMTguNDAzTDIuNTMwNiAyMi41M0MyLjIzNzg2IDIyLjgyMyAxLjc2Mjk4IDIyLjgyMzMgMS40Njk5NCAyMi41MzA1QzEuMTc2OSAyMi4yMzc4IDEuMTc2NjYgMjEuNzYyOSAxLjQ2OTQgMjEuNDY5OUw1LjU5MzI2IDE3LjM0MThMNC4wNTg0MiAxNS44MDU0QzMuNDUzMTggMTUuMTk5NiAyLjk1MzYgMTQuNjk5NSAyLjYxMDAyIDE0LjI2NzhDMi4yNjEyNyAxMy44Mjk3IDEuOTcyMTUgMTMuMzQyMSAxLjk2ODQ4IDEyLjc1OTlDMS45NjU4NiAxMi4zNDUxIDIuMDczNTQgMTEuOTM3MSAyLjI4MDUzIDExLjU3NzdDMi41NzExNiAxMS4wNzMxIDMuMDYzNDEgMTAuNzkxOSAzLjU4Mjk2IDEwLjU4MzRDNC4wOTQ3NyAxMC4zNzc5IDQuNzc1OTcgMTAuMTkwMSA1LjYwMTEyIDkuOTYyNjVMNS42NDU3IDkuOTUwMzZDNi40NjYwMSA5LjcyNDIgNi42OTA1MyA5LjY1MDg4IDYuODYzNDYgOS41MjYzOEM2Ljk1MjYgOS40NjIyIDcuMDMzNyA5LjM4NzQ4IDcuMTA0OTkgOS4zMDM4M0M3LjI0MzM4IDkuMTQxNDQgNy4zMzUwMiA4LjkyMzI0IDcuNjI3OTggOC4xMjM2N0w4LjM0NDQ3IDYuMTY4MTFDOC44Mzg3NCA0LjgxOSA5LjIzOTA3IDMuNzI2MjkgOS42NjM2MiAyLjk0NjFDMTAuMTAwNSAyLjE0MzI0IDEwLjY1NCAxLjQ5ODExIDExLjUzNTcgMS4zMDM1OUMxMi40MTc1IDEuMTA5MDQgMTMuMTkwOCAxLjQ2MTU2IDEzLjkyNDYgMi4wMDYzQzE0LjYzNzUgMi41MzU1OSAxNS40NTk3IDMuMzU4NjMgMTYuNDc0NiA0LjM3NDdaTTEzLjAzMDQgMy4yMTA2N0MxMi40Mjc3IDIuNzYzMjIgMTIuMTA4NiAyLjcxMzI3IDExLjg1ODggMi43NjgzNkMxMS42MDkgMi44MjM0OSAxMS4zNDAyIDMuMDAzMyAxMC45ODEyIDMuNjYzMDZDMTAuNjE2MSA0LjMzMzk0IDEwLjI1MjUgNS4zMjA2NiA5LjczMDg3IDYuNzQ0M0w5LjAzNjQyIDguNjM5NzFDOS4wMjMwNCA4LjY3NjIxIDkuMDA5ODcgOC43MTIyNiA4Ljk5Njg2IDguNzQ3ODZDOC43NjI2NyA5LjM4ODYgOC41ODE3OSA5Ljg4MzUxIDguMjQ2NjUgMTAuMjc2OEM4LjA5NzEyIDEwLjQ1MjIgNy45MjY5NiAxMC42MDkgNy43Mzk4NyAxMC43NDM3QzcuMzIwNSAxMS4wNDU2IDYuODEyNTcgMTEuMTg1MiA2LjE1NTM3IDExLjM2NTlDNi4xMTg4NCAxMS4zNzU5IDYuMDgxODQgMTEuMzg2MSA2LjA0NDM4IDExLjM5NjRDNS4xNjMzNyAxMS42MzkzIDQuNTY1MjMgMTEuODA1NCA0LjE0MTggMTEuOTc1NEMzLjcxNjkzIDEyLjE0NiAzLjYxNSAxMi4yNjYyIDMuNTgwMzggMTIuMzI2M0MzLjUwNjE2IDEyLjQ1NTIgMy40Njc1MSAxMi42MDE1IDMuNDY4NDUgMTIuNzUwNEMzLjQ2ODg5IDEyLjgyMDEgMy40OTgzNSAxMi45NzUyIDMuNzgzNjYgMTMuMzMzN0M0LjA2Nzk5IDEzLjY5MDkgNC41MDYxNSAxNC4xMzEyIDUuMTUyMjkgMTQuNzc4TDkuMjY4OTcgMTguODk4OUM5LjkxOTIzIDE5LjU0OTggMTAuMzYxOCAxOS45OTEyIDEwLjcyMSAyMC4yNzcyQzExLjA4MTQgMjAuNTY0MyAxMS4yMzY5IDIwLjU5MjkgMTEuMzA2NCAyMC41OTNDMTEuNDUxOSAyMC41OTMzIDExLjU5NSAyMC41NTU0IDExLjcyMTUgMjAuNDgzMkMxMS43ODIxIDIwLjQ0ODYgMTEuOTAzMyAyMC4zNDY2IDEyLjA3NTEgMTkuOTE4N0MxMi4yNDYyIDE5LjQ5MjMgMTIuNDEzMyAxOC44ODk2IDEyLjY1NzQgMTguMDAyMUMxMi42Njc3IDE3Ljk2NDggMTIuNjc3OCAxNy45Mjc5IDEyLjY4NzggMTcuODkxNEMxMi44Njc4IDE3LjIzNTIgMTMuMDA2OSAxNi43MjgzIDEzLjMwNzUgMTYuMzA5M0MxMy40Mzg0IDE2LjEyNjggMTMuNTkwMyAxNS45NjA0IDEzLjc2IDE1LjgxMzRDMTQuMTUgMTUuNDc1OCAxNC42NDIgMTUuMjkxNCAxNS4yNzg2IDE1LjA1MjdDMTUuMzE0IDE1LjAzOTUgMTUuMzQ5OCAxNS4wMjYxIDE1LjM4NiAxNS4wMTI0TDE3LjMwMzIgMTQuMjkyMUMxOC43MTEyIDEzLjc2MzEgMTkuNjg2NSAxMy4zOTQ2IDIwLjM0OTEgMTMuMDI2OEMyMS4wMDAxIDEyLjY2NTUgMjEuMTc4IDEyLjM5NjcgMjEuMjMyMSAxMi4xNDYzQzIxLjI4NjMgMTEuODk1OCAyMS4yMzUzIDExLjU3NzMgMjAuNzkxNyAxMC45Nzg3QzIwLjM0MDMgMTAuMzY5NSAxOS42MDQ1IDkuNjMwMTMgMTguNTQxIDguNTY1NkwxNS40NTg4IDUuNDgwMThDMTQuMzg3NiA0LjQwNzkyIDEzLjY0MzMgMy42NjU3MSAxMy4wMzA0IDMuMjEwNjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) Outline
 */
const Pin: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props} weights={weights} />
))

Pin.displayName = "Pin"
export default Pin
