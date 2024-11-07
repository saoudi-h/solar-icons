/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import SSRBase from "../../lib/SSRBase"
import weights from "../../defs/tools/LayersMinimalistic"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik03LjYyNDQyIDQuNDQ4OUM5LjUwMTIxIDMuNjk3OTYgMTAuNjIwOCAzLjI1IDEyIDMuMjVDMTMuMzc5MiAzLjI1IDE0LjQ5ODggMy42OTc5NiAxNi4zNzU2IDQuNDQ4OUwxOS4zNDUxIDUuNjM2N0MyMC4yOTk2IDYuMDE4NTEgMjEuMDcyOCA2LjMyNzc2IDIxLjYwMzUgNi42MDYwMUMyMS44NzIxIDYuNzQ2ODMgMjIuMTMyMyA2LjkwNjQ4IDIyLjMzMyA3LjA5ODk0QzIyLjUzOTIgNy4yOTY2OCAyMi43NSA3LjU5NjU4IDIyLjc1IDhDMjIuNzUgOC40MDM0MiAyMi41MzkyIDguNzAzMzIgMjIuMzMzIDguOTAxMDZDMjIuMTMyMyA5LjA5MzUyIDIxLjg3MjEgOS4yNTMxNyAyMS42MDM1IDkuMzkzOTlDMjEuMDcyOCA5LjY3MjIzIDIwLjI5OTYgOS45ODE0OCAxOS4zNDUxIDEwLjM2MzNMMTYuMzc1NiAxMS41NTExQzE0LjQ5ODggMTIuMzAyIDEzLjM3OTIgMTIuNzUgMTIgMTIuNzVDMTAuNjIwOCAxMi43NSA5LjUwMTIxIDEyLjMwMiA3LjYyNDQzIDExLjU1MTFMNC42NTQ5NSAxMC4zNjMzQzMuNzAwMzcgOS45ODE0OSAyLjkyNzIgOS42NzIyMyAyLjM5NjQ3IDkuMzkzOTlDMi4xMjc4NiA5LjI1MzE3IDEuODY3NjUgOS4wOTM1MiAxLjY2NzAxIDguOTAxMDZDMS40NjA4NSA4LjcwMzMyIDEuMjUgOC40MDM0MiAxLjI1IDhDMS4yNSA3LjU5NjU4IDEuNDYwODUgNy4yOTY2OCAxLjY2NzAxIDcuMDk4OTRDMS44Njc2NSA2LjkwNjQ4IDIuMTI3ODYgNi43NDY4MyAyLjM5NjQ3IDYuNjA2MDFDMi45MjcyMSA2LjMyNzc2IDMuNzAwMzcgNi4wMTg1MSA0LjY1NDk2IDUuNjM2NjlMNy42MjQ0MiA0LjQ0ODlaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMi41MDA1MyAxMS40NDE1QzIuNTAwNTMgMTEuNDQxNSAyLjUwMDUzIDExLjQ0MTUgMi41MDA1MyAxMS40NDE1TDIuNDk5MTMgMTEuNDQwMkwyLjUwMjYxIDExLjQ0MzJDMi41MDcwMiAxMS40NDcxIDIuNTE1MjIgMTEuNDU0MSAyLjUyNzIyIDExLjQ2NDFDMi41NTEyMyAxMS40ODQyIDIuNTkwNDIgMTEuNTE2MSAyLjY0NDc5IDExLjU1ODFDMi43NTM1NCAxMS42NDIyIDIuOTIyODkgMTEuNzY2MyAzLjE1MjggMTEuOTE1NEMzLjYxMjY1IDEyLjIxMzYgNC4zMTQxOSAxMi42MTE1IDUuMjU3MzcgMTIuOTg4N0w4LjA2NTg0IDE0LjExMjFDMTAuMDkwNyAxNC45MjIgMTAuOTM5NiAxNS4yNSAxMiAxNS4yNUMxMy4wNjA0IDE1LjI1IDEzLjkwOTMgMTQuOTIyIDE1LjkzNDIgMTQuMTEyMUwxOC43NDI2IDEyLjk4ODdDMTkuNjg1OCAxMi42MTE1IDIwLjM4NzQgMTIuMjEzNiAyMC44NDcyIDExLjkxNTRDMjEuMDc3MSAxMS43NjYzIDIxLjI0NjUgMTEuNjQyMiAyMS4zNTUyIDExLjU1ODFDMjEuNDA5NiAxMS41MTYxIDIxLjQ0ODggMTEuNDg0MiAyMS40NzI4IDExLjQ2NDFDMjEuNDg0OCAxMS40NTQxIDIxLjQ5MyAxMS40NDcxIDIxLjQ5NzQgMTEuNDQzMkwyMS40OTk1IDExLjQ0MTVDMjEuNSAxMS40NDEgMjEuNTAwNiAxMS40NDA1IDIxLjUwMTEgMTEuNDRDMjEuODA5NSAxMS4xNjUyIDIyLjI4MjMgMTEuMTkxNSAyMi41NTgzIDExLjQ5OTJDMjIuODM0OSAxMS44MDc1IDIyLjgwOTIgMTIuMjgxNyAyMi41MDA4IDEyLjU1ODNMMjIgMTJDMjIuNTAwOCAxMi41NTgzIDIyLjUwMSAxMi41NTgxIDIyLjUwMDggMTIuNTU4M0wyMi40OTk0IDEyLjU1OTVMMjIuNDk3NyAxMi41NjExTDIyLjQ5MyAxMi41NjUyTDIyLjQ3OTMgMTIuNTc3MkMyMi40NjgyIDEyLjU4NjggMjIuNDUzMiAxMi41OTk3IDIyLjQzNDEgMTIuNjE1NUMyMi4zOTYxIDEyLjY0NzMgMjIuMzQyMiAxMi42OTExIDIyLjI3MjQgMTIuNzQ1QzIyLjEzMjkgMTIuODUyOCAyMS45Mjk5IDEzLjAwMSAyMS42NjM0IDEzLjE3MzlDMjEuMTMwMyAxMy41MTk2IDIwLjM0MjQgMTMuOTY0NCAxOS4yOTk3IDE0LjM4MTRMMTYuNDkxMiAxNS41MDQ4QzE2LjQ1MjQgMTUuNTIwNCAxNi40MTM4IDE1LjUzNTggMTYuMzc1NiAxNS41NTExQzE0LjQ5ODggMTYuMzAyIDEzLjM3OTIgMTYuNzUgMTIgMTYuNzVDMTAuNjIwOCAxNi43NSA5LjUwMTIxIDE2LjMwMiA3LjYyNDQyIDE1LjU1MTFDNy41ODYxOSAxNS41MzU4IDcuNTQ3NjMgMTUuNTIwNCA3LjUwODc1IDE1LjUwNDhMNC43MDAyOSAxNC4zODE0QzMuNjU3NTkgMTMuOTY0NCAyLjg2OTcxIDEzLjUxOTYgMi4zMzY2MiAxMy4xNzM5QzIuMDcwMDUgMTMuMDAxIDEuODY3MDUgMTIuODUyOCAxLjcyNzU3IDEyLjc0NUMxLjY1NzgyIDEyLjY5MTEgMS42MDM5MiAxMi42NDczIDEuNTY1ODcgMTIuNjE1NUMxLjU0Njg0IDEyLjU5OTcgMS41MzE3NyAxMi41ODY4IDEuNTIwNjYgMTIuNTc3MkwxLjUwNjk2IDEyLjU2NTJMMS41MDIzMyAxMi41NjExTDEuNTAwNTcgMTIuNTU5NUwxLjQ5OTUgMTIuNTU4NkMxLjQ5OTM0IDEyLjU1ODQgMS40OTkxOSAxMi41NTgzIDIgMTJMMS40OTk1IDEyLjU1ODZDMS4xOTExNiAxMi4yODIgMS4xNjUxMiAxMS44MDc1IDEuNDQxNzEgMTEuNDk5MkMxLjcxNzc1IDExLjE5MTUgMi4xOTA3NSAxMS4xNjU0IDIuNDk5MTMgMTEuNDQwMk0yLjUwMDUzIDExLjQ0MTVDMi41MDA1MyAxMS40NDE1IDIuNTAwNTMgMTEuNDQxNSAyLjUwMDUzIDExLjQ0MTVWMTEuNDQxNVpNMi40OTg5NiAxNS40NDAxQzIuMTkwNTggMTUuMTY1MiAxLjcxNzc1IDE1LjE5MTUgMS40NDE3MSAxNS40OTkyTDIuNDk4OTYgMTUuNDQwMVpNMi40OTg5NiAxNS40NDAxTDIuNTAyNjEgMTUuNDQzMkMyLjUwNzAyIDE1LjQ0NzEgMi41MTUyMiAxNS40NTQxIDIuNTI3MjIgMTUuNDY0MUMyLjU1MTIzIDE1LjQ4NDIgMi41OTA0MiAxNS41MTYxIDIuNjQ0NzkgMTUuNTU4MUMyLjc1MzU0IDE1LjY0MjIgMi45MjI4OSAxNS43NjYzIDMuMTUyOCAxNS45MTU0QzMuNjEyNjUgMTYuMjEzNiA0LjMxNDE5IDE2LjYxMTQgNS4yNTczNyAxNi45ODg3TDguMDY1ODQgMTguMTEyMUMxMC4wOTA3IDE4LjkyMiAxMC45Mzk2IDE5LjI1IDEyIDE5LjI1QzEzLjA2MDQgMTkuMjUgMTMuOTA5MyAxOC45MjIgMTUuOTM0MiAxOC4xMTIxTDE4Ljc0MjYgMTYuOTg4N0MxOS42ODU4IDE2LjYxMTQgMjAuMzg3NCAxNi4yMTM2IDIwLjg0NzIgMTUuOTE1NEMyMS4wNzcxIDE1Ljc2NjMgMjEuMjQ2NSAxNS42NDIyIDIxLjM1NTIgMTUuNTU4MUMyMS40MDk2IDE1LjUxNjEgMjEuNDQ4OCAxNS40ODQyIDIxLjQ3MjggMTUuNDY0MUMyMS40ODQ4IDE1LjQ1NDEgMjEuNDkzIDE1LjQ0NzEgMjEuNDk3NCAxNS40NDMyTDIxLjQ5OTUgMTUuNDQxNUMyMS41IDE1LjQ0MSAyMS41MDA2IDE1LjQ0MDUgMjEuNTAxMSAxNS40NEMyMS44MDk1IDE1LjE2NTIgMjIuMjgyMyAxNS4xOTE1IDIyLjU1ODMgMTUuNDk5MkMyMi44MzQ5IDE1LjgwNzUgMjIuODA5MiAxNi4yODE3IDIyLjUwMDggMTYuNTU4M0wyMi4wMTY2IDE2LjAxODVDMjIuNTAwOCAxNi41NTgzIDIyLjUwMSAxNi41NTgxIDIyLjUwMDggMTYuNTU4M0wyMi40OTk0IDE2LjU1OTVMMjIuNDk3NyAxNi41NjExTDIyLjQ5MyAxNi41NjUyTDIyLjQ3OTMgMTYuNTc3MkMyMi40NjgyIDE2LjU4NjggMjIuNDUzMiAxNi41OTk3IDIyLjQzNDEgMTYuNjE1NUMyMi4zOTYxIDE2LjY0NzMgMjIuMzQyMiAxNi42OTExIDIyLjI3MjQgMTYuNzQ1QzIyLjEzMjkgMTYuODUyOCAyMS45Mjk5IDE3LjAwMSAyMS42NjM0IDE3LjE3MzlDMjEuMTMwMyAxNy41MTk2IDIwLjM0MjQgMTcuOTY0NCAxOS4yOTk3IDE4LjM4MTRMMTYuNDkxMiAxOS41MDQ4QzE2LjQ1MjQgMTkuNTIwNCAxNi40MTM4IDE5LjUzNTggMTYuMzc1NiAxOS41NTExQzE0LjQ5ODggMjAuMzAyIDEzLjM3OTIgMjAuNzUgMTIgMjAuNzVDMTAuNjIwOCAyMC43NSA5LjUwMTIxIDIwLjMwMiA3LjYyNDQzIDE5LjU1MTFDNy41ODYxOSAxOS41MzU4IDcuNTQ3NjMgMTkuNTIwNCA3LjUwODc1IDE5LjUwNDhMNC43MDAyOSAxOC4zODE0QzMuNjU3NTkgMTcuOTY0NCAyLjg2OTcxIDE3LjUxOTYgMi4zMzY2MiAxNy4xNzM5QzIuMDcwMDUgMTcuMDAxIDEuODY3MDUgMTYuODUyOCAxLjcyNzU3IDE2Ljc0NUMxLjY1NzgyIDE2LjY5MTEgMS42MDM5MiAxNi42NDczIDEuNTY1ODcgMTYuNjE1NUMxLjU0Njg0IDE2LjU5OTcgMS41MzE3NyAxNi41ODY4IDEuNTIwNjYgMTYuNTc3MkwxLjUwNjk2IDE2LjU2NTJMMS41MDIzMyAxNi41NjExTDEuNTAwNTcgMTYuNTU5NUwxLjQ5OTUgMTYuNTU4NkMxLjQ5OTM0IDE2LjU1ODQgMS40OTkxOSAxNi41NTgzIDIgMTZMMS40OTk1IDE2LjU1ODZDMS4xOTExNiAxNi4yODIgMS4xNjUxMiAxNS44MDc1IDEuNDQxNzEgMTUuNDk5MiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik03LjYyNDQyIDQuNDQ4OUM5LjUwMTIxIDMuNjk3OTYgMTAuNjIwOCAzLjI1IDEyIDMuMjVDMTMuMzc5MiAzLjI1IDE0LjQ5ODggMy42OTc5NiAxNi4zNzU2IDQuNDQ4OUwxOS4zNDUxIDUuNjM2N0MyMC4yOTk2IDYuMDE4NTEgMjEuMDcyOCA2LjMyNzc2IDIxLjYwMzUgNi42MDYwMUMyMS44NzIxIDYuNzQ2ODMgMjIuMTMyMyA2LjkwNjQ4IDIyLjMzMyA3LjA5ODk0QzIyLjUzOTIgNy4yOTY2OCAyMi43NSA3LjU5NjU4IDIyLjc1IDhDMjIuNzUgOC40MDM0MiAyMi41MzkyIDguNzAzMzIgMjIuMzMzIDguOTAxMDZDMjIuMTMyMyA5LjA5MzUyIDIxLjg3MjEgOS4yNTMxNyAyMS42MDM1IDkuMzkzOTlDMjEuMDcyOCA5LjY3MjIzIDIwLjI5OTYgOS45ODE0OCAxOS4zNDUxIDEwLjM2MzNMMTYuMzc1NiAxMS41NTExQzE0LjQ5ODggMTIuMzAyIDEzLjM3OTIgMTIuNzUgMTIgMTIuNzVDMTAuNjIwOCAxMi43NSA5LjUwMTIxIDEyLjMwMiA3LjYyNDQzIDExLjU1MTFMNC42NTQ5NSAxMC4zNjMzQzMuNzAwMzcgOS45ODE0OSAyLjkyNzIgOS42NzIyMyAyLjM5NjQ3IDkuMzkzOTlDMi4xMjc4NiA5LjI1MzE3IDEuODY3NjUgOS4wOTM1MiAxLjY2NzAxIDguOTAxMDZDMS40NjA4NSA4LjcwMzMyIDEuMjUgOC40MDM0MiAxLjI1IDhDMS4yNSA3LjU5NjU4IDEuNDYwODUgNy4yOTY2OCAxLjY2NzAxIDcuMDk4OTRDMS44Njc2NSA2LjkwNjQ4IDIuMTI3ODYgNi43NDY4MyAyLjM5NjQ3IDYuNjA2MDFDMi45MjcyMSA2LjMyNzc2IDMuNzAwMzcgNi4wMTg1MSA0LjY1NDk2IDUuNjM2NjlMNy42MjQ0MiA0LjQ0ODlaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNyIgZD0iTTIuNTAyNDggMTEuNDQzMkwyLjQ5ODk5IDExLjQ0MDJDMi4xOTA2MiAxMS4xNjU0IDEuNzE3NjIgMTEuMTkxNSAxLjQ0MTU4IDExLjQ5OTJDMS4xNjQ5OSAxMS44MDc1IDEuMTkxMDMgMTIuMjgyIDEuNDk5MzYgMTIuNTU4NkMxLjQ5OTM2IDEyLjU1ODYgMS40OTkwNSAxMi41NTgzIDEuOTk5ODcgMTJMMS40OTkzNiAxMi41NTg2TDEuNTAwNDQgMTIuNTU5NUwxLjUwMjIgMTIuNTYxMUwxLjUwNjgyIDEyLjU2NTJMMS41MjA1MiAxMi41NzcyQzEuNTMxNjQgMTIuNTg2OCAxLjU0NjcxIDEyLjU5OTcgMS41NjU3MyAxMi42MTU1QzEuNjAzNzkgMTIuNjQ3MyAxLjY1NzY4IDEyLjY5MTEgMS43Mjc0MyAxMi43NDVDMS44NjY5MiAxMi44NTI4IDIuMDY5OTIgMTMuMDAxIDIuMzM2NDkgMTMuMTczOUMyLjg2OTU4IDEzLjUxOTYgMy42NTc0NSAxMy45NjQ0IDQuNzAwMTUgMTQuMzgxNEw3LjUwODYyIDE1LjUwNDhMNy42MjQyOSAxNS41NTExQzkuNTAxMDggMTYuMzAyIDEwLjYyMDYgMTYuNzUgMTEuOTk5OSAxNi43NUMxMy4zNzkxIDE2Ljc1IDE0LjQ5ODcgMTYuMzAyIDE2LjM3NTQgMTUuNTUxMUwxNi40OTExIDE1LjUwNDhMMTkuMjk5NiAxNC4zODE0QzIwLjM0MjMgMTMuOTY0NCAyMS4xMzAyIDEzLjUxOTYgMjEuNjYzMiAxMy4xNzM5QzIxLjkyOTggMTMuMDAxIDIyLjEzMjggMTIuODUyOCAyMi4yNzIzIDEyLjc0NUMyMi4zNDIxIDEyLjY5MTEgMjIuMzk1OSAxMi42NDczIDIyLjQzNCAxMi42MTU1QzIyLjQ1MyAxMi41OTk3IDIyLjQ2ODEgMTIuNTg2OCAyMi40NzkyIDEyLjU3NzJMMjIuNDkyOSAxMi41NjUyTDIyLjQ5NzUgMTIuNTYxMUwyMi40OTkzIDEyLjU1OTVMMjIuNTAwNyAxMi41NTgzQzIyLjgwOSAxMi4yODE3IDIyLjgzNDcgMTEuODA3NSAyMi41NTgyIDExLjQ5OTJDMjIuMjgyMSAxMS4xOTE1IDIxLjgwOTMgMTEuMTY1MiAyMS41MDEgMTEuNDRMMjEuNDk5MyAxMS40NDE1TDIxLjQ5NzMgMTEuNDQzMkMyMS40OTI5IDExLjQ0NzEgMjEuNDg0NiAxMS40NTQxIDIxLjQ3MjYgMTEuNDY0MUMyMS40NDg2IDExLjQ4NDIgMjEuNDA5NCAxMS41MTYxIDIxLjM1NTEgMTEuNTU4MUMyMS4yNDYzIDExLjY0MjIgMjEuMDc3IDExLjc2NjMgMjAuODQ3MSAxMS45MTU0QzIwLjM4NzIgMTIuMjEzNiAxOS42ODU3IDEyLjYxMTUgMTguNzQyNSAxMi45ODg3TDE1LjkzNCAxNC4xMTIxQzEzLjkwOTIgMTQuOTIyIDEzLjA2MDMgMTUuMjUgMTEuOTk5OSAxNS4yNUMxMC45Mzk1IDE1LjI1IDEwLjA5MDUgMTQuOTIyIDguMDY1NzEgMTQuMTEyMUw1LjI1NzI0IDEyLjk4ODdDNC4zMTQwNiAxMi42MTE1IDMuNjEyNTEgMTIuMjEzNiAzLjE1MjY3IDExLjkxNTRDMi45MjI3NiAxMS43NjYzIDIuNzUzNCAxMS42NDIyIDIuNjQ0NjUgMTEuNTU4MUMyLjU5MDI5IDExLjUxNjEgMi41NTExIDExLjQ4NDIgMi41MjcwOSAxMS40NjQxQzIuNTE1MDkgMTEuNDU0MSAyLjUwNjg5IDExLjQ0NzEgMi41MDI0OCAxMS40NDMyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjQiIGQ9Ik0yLjQ5ODgzIDE1LjQ5OTFDMi4xOTA0NSAxNS4yMjQzIDEuNzE3NjIgMTUuMjUwNiAxLjQ0MTU4IDE1LjU1ODNDMS4xNjQ5OSAxNS44NjY2IDEuMTkxMDMgMTYuMzQxMSAxLjQ5OTM2IDE2LjYxNzdMMS41MDA0NCAxNi42MTg2TDEuNTAyMiAxNi42MjAyTDEuNTA2ODIgMTYuNjI0M0wxLjUyMDUyIDE2LjYzNjJDMS41MzE2NCAxNi42NDU5IDEuNTQ2NzEgMTYuNjU4NyAxLjU2NTczIDE2LjY3NDZDMS42MDM3OSAxNi43MDY0IDEuNjU3NjggMTYuNzUwMiAxLjcyNzQzIDE2LjgwNDFDMS44NjY5MiAxNi45MTE5IDIuMDY5OTIgMTcuMDYwMSAyLjMzNjQ5IDE3LjIzM0MyLjg2OTU4IDE3LjU3ODcgMy42NTc0NSAxOC4wMjM0IDQuNzAwMTUgMTguNDQwNUw3LjUwODYyIDE5LjU2MzlMNy42MjQyOSAxOS42MTAyQzkuNTAxMDggMjAuMzYxMSAxMC42MjA2IDIwLjgwOTEgMTEuOTk5OSAyMC44MDkxQzEzLjM3OTEgMjAuODA5MSAxNC40OTg3IDIwLjM2MTEgMTYuMzc1NCAxOS42MTAyTDE2LjQ5MTEgMTkuNTYzOUwxOS4yOTk2IDE4LjQ0MDVDMjAuMzQyMyAxOC4wMjM0IDIxLjEzMDIgMTcuNTc4NyAyMS42NjMyIDE3LjIzM0MyMS45Mjk4IDE3LjA2MDEgMjIuMTMyOCAxNi45MTE5IDIyLjI3MjMgMTYuODA0MUMyMi4zNDIxIDE2Ljc1MDIgMjIuMzk1OSAxNi43MDY0IDIyLjQzNCAxNi42NzQ2QzIyLjQ1MyAxNi42NTg3IDIyLjQ2ODEgMTYuNjQ1OSAyMi40NzkyIDE2LjYzNjJMMjIuNDkyOSAxNi42MjQzTDIyLjQ5NzUgMTYuNjIwMkwyMi40OTkzIDE2LjYxODZMMjIuNTAwNyAxNi42MTc0QzIyLjgwOSAxNi4zNDA4IDIyLjgzNDcgMTUuODY2NiAyMi41NTgyIDE1LjU1ODNDMjIuMjgyMSAxNS4yNTA2IDIxLjgwOTMgMTUuMjI0MyAyMS41MDEgMTUuNDk5MUwyMS40OTkzIDE1LjUwMDVMMjEuNDk3MyAxNS41MDIzQzIxLjQ5MjkgMTUuNTA2MSAyMS40ODQ2IDE1LjUxMzIgMjEuNDcyNiAxNS41MjMyQzIxLjQ0ODYgMTUuNTQzMiAyMS40MDk0IDE1LjU3NTIgMjEuMzU1MSAxNS42MTcyQzIxLjI0NjMgMTUuNzAxMyAyMS4wNzcgMTUuODI1NCAyMC44NDcxIDE1Ljk3NDVDMjAuMzg3MiAxNi4yNzI3IDE5LjY4NTcgMTYuNjcwNSAxOC43NDI1IDE3LjA0NzhMMTUuOTM0IDE4LjE3MTJDMTMuOTA5MiAxOC45ODExIDEzLjA2MDMgMTkuMzA5MSAxMS45OTk5IDE5LjMwOTFDMTAuOTM5NSAxOS4zMDkxIDEwLjA5MDUgMTguOTgxMSA4LjA2NTcxIDE4LjE3MTJMNS4yNTcyNCAxNy4wNDc4QzQuMzE0MDYgMTYuNjcwNSAzLjYxMjUxIDE2LjI3MjcgMy4xNTI2NyAxNS45NzQ1QzIuOTIyNzYgMTUuODI1NCAyLjc1MzQgMTUuNzAxMyAyLjY0NDY1IDE1LjYxNzJDMi41OTAyOSAxNS41NzUyIDIuNTUxMSAxNS41NDMyIDIuNTI3MDkgMTUuNTIzMkMyLjUxNTA5IDE1LjUxMzIgMi41MDY4OSAxNS41MDYxIDIuNTAyNDggMTUuNTAyM0wyLjQ5ODgzIDE1LjQ5OTFaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMiAxMkMyMiAxMiAyMS4wMDcxIDEyLjg5MDcgMTkuMDIxMiAxMy42ODUxTDE2LjIxMjcgMTQuODA4NUMxNC4yMjY4IDE1LjYwMjggMTMuMjMzOSAxNiAxMiAxNkMxMC43NjYxIDE2IDkuNzczMTggMTUuNjAyOCA3Ljc4NzMgMTQuODA4NUw0Ljk3ODgzIDEzLjY4NTFDMi45OTI5NCAxMi44OTA3IDIgMTIgMiAxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yIDE2QzIgMTYgMi45OTI5NCAxNi44OTA3IDQuOTc4ODMgMTcuNjg1MUw3Ljc4NzMgMTguODA4NUM5Ljc3MzE4IDE5LjYwMjggMTAuNzY2MSAyMCAxMiAyMEMxMi45NTM5IDIwIDEzLjc2MzkgMTkuNzYyNiAxNSAxOS4yODc4TTE5LjAyMTIgMTcuNjg1MUMyMS4wMDcxIDE2Ljg5MDcgMjIgMTYgMjIgMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNC45Nzg4MyA2LjMxNDkyQzIuOTkyOTQgNy4xMDkyNyAyIDcuNTA2NDUgMiA4QzIgOC40OTM1NSAyLjk5Mjk0IDguODkwNzMgNC45Nzg4MyA5LjY4NTA4TDcuNzg3MyAxMC44MDg1QzkuNzczMTggMTEuNjAyOCAxMC43NjYxIDEyIDEyIDEyQzEzLjIzMzkgMTIgMTQuMjI2OCAxMS42MDI4IDE2LjIxMjcgMTAuODA4NUwxOS4wMjEyIDkuNjg1MDhDMjEuMDA3MSA4Ljg5MDczIDIyIDguNDkzNTUgMjIgOEMyMiA3LjUwNjQ1IDIxLjAwNzEgNy4xMDkyNyAxOS4wMjEyIDYuMzE0OTJMMTYuMjEyNyA1LjE5MTUzQzE0LjIyNjggNC4zOTcxOCAxMy4yMzM5IDQgMTIgNEMxMS4wNDYxIDQgMTAuMjM2MSA0LjIzNzQgOSA0LjcxMjIxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik00Ljk3ODgzIDkuNjg1MDhDMi45OTI5NCA4Ljg5MDczIDIgOC40OTM1NSAyIDhDMiA3LjUwNjQ1IDIuOTkyOTQgNy4xMDkyNyA0Ljk3ODgzIDYuMzE0OTJMNy43ODczIDUuMTkxNTNDOS43NzMxOCA0LjM5NzE4IDEwLjc2NjEgNCAxMiA0QzEzLjIzMzkgNCAxNC4yMjY4IDQuMzk3MTggMTYuMjEyNyA1LjE5MTUzTDE5LjAyMTIgNi4zMTQ5MkMyMS4wMDcxIDcuMTA5MjcgMjIgNy41MDY0NSAyMiA4QzIyIDguNDkzNTUgMjEuMDA3MSA4Ljg5MDczIDE5LjAyMTIgOS42ODUwOEwxNi4yMTI3IDEwLjgwODVDMTQuMjI2OCAxMS42MDI4IDEzLjIzMzkgMTIgMTIgMTJDMTAuNzY2MSAxMiA5Ljc3MzE4IDExLjYwMjggNy43ODczIDEwLjgwODVMNC45Nzg4MyA5LjY4NTA4WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNMjIgMTJDMjIgMTIgMjEuMDA3MSAxMi44OTA3IDE5LjAyMTIgMTMuNjg1MUwxNi4yMTI3IDE0LjgwODVDMTQuMjI2OCAxNS42MDI4IDEzLjIzMzkgMTYgMTIgMTZDMTAuNzY2MSAxNiA5Ljc3MzE4IDE1LjYwMjggNy43ODczIDE0LjgwODVMNC45Nzg4MyAxMy42ODUxQzIuOTkyOTQgMTIuODkwNyAyIDEyIDIgMTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjIgMTZDMjIgMTYgMjEuMDA3MSAxNi44OTA3IDE5LjAyMTIgMTcuNjg1MUwxNi4yMTI3IDE4LjgwODVDMTQuMjI2OCAxOS42MDI4IDEzLjIzMzkgMjAgMTIgMjBDMTAuNzY2MSAyMCA5Ljc3MzE4IDE5LjYwMjggNy43ODczIDE4LjgwODVMNC45Nzg4MyAxNy42ODUxQzIuOTkyOTQgMTYuODkwNyAyIDE2IDIgMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik00Ljk3ODgzIDkuNjg1MDhDMi45OTI5NCA4Ljg5MDczIDIgOC40OTM1NSAyIDhDMiA3LjUwNjQ1IDIuOTkyOTQgNy4xMDkyNyA0Ljk3ODgzIDYuMzE0OTJMNy43ODczIDUuMTkxNTNDOS43NzMxOCA0LjM5NzE4IDEwLjc2NjEgNCAxMiA0QzEzLjIzMzkgNCAxNC4yMjY4IDQuMzk3MTggMTYuMjEyNyA1LjE5MTUzTDE5LjAyMTIgNi4zMTQ5MkMyMS4wMDcxIDcuMTA5MjcgMjIgNy41MDY0NSAyMiA4QzIyIDguNDkzNTUgMjEuMDA3MSA4Ljg5MDczIDE5LjAyMTIgOS42ODUwOEwxNi4yMTI3IDEwLjgwODVDMTQuMjI2OCAxMS42MDI4IDEzLjIzMzkgMTIgMTIgMTJDMTAuNzY2MSAxMiA5Ljc3MzE4IDExLjYwMjggNy43ODczIDEwLjgwODVMNC45Nzg4MyA5LjY4NTA4WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0yMiAxMkMyMiAxMiAyMS4wMDcxIDEyLjg5MDcgMTkuMDIxMiAxMy42ODUxTDE2LjIxMjcgMTQuODA4NUMxNC4yMjY4IDE1LjYwMjggMTMuMjMzOSAxNiAxMiAxNkMxMC43NjYxIDE2IDkuNzczMTggMTUuNjAyOCA3Ljc4NzMgMTQuODA4NUw0Ljk3ODgzIDEzLjY4NTFDMi45OTI5NCAxMi44OTA3IDIgMTIgMiAxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIyIDE2QzIyIDE2IDIxLjAwNzEgMTYuODkwNyAxOS4wMjEyIDE3LjY4NTFMMTYuMjEyNyAxOC44MDg1QzE0LjIyNjggMTkuNjAyOCAxMy4yMzM5IDIwIDEyIDIwQzEwLjc2NjEgMjAgOS43NzMxOCAxOS42MDI4IDcuNzg3MyAxOC44MDg1TDQuOTc4ODMgMTcuNjg1MUMyLjk5Mjk0IDE2Ljg5MDcgMiAxNiAyIDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgNC43NUMxMC45Mzk2IDQuNzUgMTAuMDkwNyA1LjA3Nzk2IDguMDY1ODQgNS44ODc4OUw1LjI1NzM3IDcuMDExMjhDNC4yNDY5NCA3LjQxNTQ1IDMuNTQ2NzcgNy42OTY1OSAzLjA5Mjk1IDcuOTM0NTFDMy4wNDg2IDcuOTU3NzYgMy4wMDg2MyA3Ljk3OTU5IDIuOTcyNjcgOEMzLjAwODYzIDguMDIwNDEgMy4wNDg2IDguMDQyMjQgMy4wOTI5NSA4LjA2NTQ5QzMuNTQ2NzcgOC4zMDM0MSA0LjI0Njk0IDguNTg0NTUgNS4yNTczNyA4Ljk4ODcyTDguMDY1ODQgMTAuMTEyMUMxMC4wOTA3IDEwLjkyMiAxMC45Mzk2IDExLjI1IDEyIDExLjI1QzEzLjA2MDQgMTEuMjUgMTMuOTA5MyAxMC45MjIgMTUuOTM0MiAxMC4xMTIxTDE4Ljc0MjYgOC45ODg3MkMxOS43NTMxIDguNTg0NTUgMjAuNDUzMiA4LjMwMzQxIDIwLjkwNzEgOC4wNjU0OUMyMC45NTE0IDguMDQyMjQgMjAuOTkxNCA4LjAyMDQxIDIxLjAyNzMgOEMyMC45OTE0IDcuOTc5NTkgMjAuOTUxNCA3Ljk1Nzc2IDIwLjkwNzEgNy45MzQ1MUMyMC40NTMyIDcuNjk2NTkgMTkuNzUzMSA3LjQxNTQ1IDE4Ljc0MjYgNy4wMTEyOEwxNS45MzQyIDUuODg3ODlDMTMuOTA5MyA1LjA3Nzk2IDEzLjA2MDQgNC43NSAxMiA0Ljc1Wk03LjYyNDQyIDQuNDQ4OUM5LjUwMTIxIDMuNjk3OTYgMTAuNjIwOCAzLjI1IDEyIDMuMjVDMTMuMzc5MiAzLjI1IDE0LjQ5ODggMy42OTc5NiAxNi4zNzU2IDQuNDQ4OUMxNi40MTM4IDQuNDY0MiAxNi40NTI0IDQuNDc5NjIgMTYuNDkxMiA0LjQ5NTE3TDE5LjM0NTEgNS42MzY3QzIwLjI5OTYgNi4wMTg1MSAyMS4wNzI4IDYuMzI3NzYgMjEuNjAzNSA2LjYwNjAxQzIxLjg3MjEgNi43NDY4MyAyMi4xMzIzIDYuOTA2NDggMjIuMzMzIDcuMDk4OTRDMjIuNTM5MiA3LjI5NjY4IDIyLjc1IDcuNTk2NTggMjIuNzUgOEMyMi43NSA4LjQwMzQyIDIyLjUzOTIgOC43MDMzMiAyMi4zMzMgOC45MDEwNkMyMi4xMzIzIDkuMDkzNTIgMjEuODcyMSA5LjI1MzE3IDIxLjYwMzUgOS4zOTM5OUMyMS4wNzI4IDkuNjcyMjMgMjAuMjk5NiA5Ljk4MTQ4IDE5LjM0NTEgMTAuMzYzM0wxNi40OTEyIDExLjUwNDhDMTYuNDUyNCAxMS41MjA0IDE2LjQxMzggMTEuNTM1OCAxNi4zNzU2IDExLjU1MTFDMTQuNDk4OCAxMi4zMDIgMTMuMzc5MiAxMi43NSAxMiAxMi43NUMxMC42MjA4IDEyLjc1IDkuNTAxMjEgMTIuMzAyIDcuNjI0NDMgMTEuNTUxMUM3LjU4NjE5IDExLjUzNTggNy41NDc2MyAxMS41MjA0IDcuNTA4NzUgMTEuNTA0OEw0LjY1NDk1IDEwLjM2MzNDMy43MDAzNiA5Ljk4MTQ5IDIuOTI3MjEgOS42NzIyNCAyLjM5NjQ3IDkuMzkzOTlDMi4xMjc4NiA5LjI1MzE3IDEuODY3NjUgOS4wOTM1MiAxLjY2NzAxIDguOTAxMDZDMS40NjA4NSA4LjcwMzMyIDEuMjUgOC40MDM0MiAxLjI1IDhDMS4yNSA3LjU5NjU4IDEuNDYwODUgNy4yOTY2OCAxLjY2NzAxIDcuMDk4OTRDMS44Njc2NSA2LjkwNjQ4IDIuMTI3ODYgNi43NDY4MyAyLjM5NjQ3IDYuNjA2MDFDMi45MjcyMSA2LjMyNzc2IDMuNzAwMzcgNi4wMTg1MSA0LjY1NDk2IDUuNjM2NjlMNy41MDg3NSA0LjQ5NTE3QzcuNTQ3NjMgNC40Nzk2MiA3LjU4NjE4IDQuNDY0MiA3LjYyNDQyIDQuNDQ4OVpNMi40OTg5NiAxMS40NDAxTDIuNTAyNjEgMTEuNDQzMkMyLjUwNzAyIDExLjQ0NzEgMi41MTUyMiAxMS40NTQxIDIuNTI3MjIgMTEuNDY0MUMyLjU1MTIzIDExLjQ4NDIgMi41OTA0MiAxMS41MTYxIDIuNjQ0NzkgMTEuNTU4MUMyLjc1MzU0IDExLjY0MjIgMi45MjI4OSAxMS43NjYzIDMuMTUyOCAxMS45MTU0QzMuNjEyNjUgMTIuMjEzNiA0LjMxNDE5IDEyLjYxMTQgNS4yNTczNyAxMi45ODg3TDguMDY1ODQgMTQuMTEyMUMxMC4wOTA3IDE0LjkyMiAxMC45Mzk2IDE1LjI1IDEyIDE1LjI1QzEzLjA2MDQgMTUuMjUgMTMuOTA5MyAxNC45MjIgMTUuOTM0MiAxNC4xMTIxTDE4Ljc0MjYgMTIuOTg4N0MxOS42ODU4IDEyLjYxMTQgMjAuMzg3NCAxMi4yMTM2IDIwLjg0NzIgMTEuOTE1NEMyMS4wNzcxIDExLjc2NjMgMjEuMjQ2NSAxMS42NDIyIDIxLjM1NTIgMTEuNTU4MUMyMS40MDk2IDExLjUxNjEgMjEuNDQ4OCAxMS40ODQyIDIxLjQ3MjggMTEuNDY0MUMyMS40ODQ4IDExLjQ1NDEgMjEuNDkzIDExLjQ0NzEgMjEuNDk3NCAxMS40NDMyTDIxLjQ5OTUgMTEuNDQxNUMyMS41IDExLjQ0MSAyMS41MDA2IDExLjQ0MDUgMjEuNTAxMSAxMS40NEMyMS44MDk1IDExLjE2NTIgMjIuMjgyMyAxMS4xOTE1IDIyLjU1ODMgMTEuNDk5MkMyMi44MzQ5IDExLjgwNzUgMjIuODA5MSAxMi4yODE3IDIyLjUwMDggMTIuNTU4M0wyMiAxMkMyMi41MDA4IDEyLjU1ODMgMjIuNTAxIDEyLjU1ODEgMjIuNTAwOCAxMi41NTgzTDIyLjQ5OTQgMTIuNTU5NUwyMi40OTc3IDEyLjU2MTFMMjIuNDkzIDEyLjU2NTJMMjIuNDc5MyAxMi41NzcyQzIyLjQ2ODIgMTIuNTg2OCAyMi40NTMyIDEyLjU5OTcgMjIuNDM0MSAxMi42MTU1QzIyLjM5NjEgMTIuNjQ3MyAyMi4zNDIyIDEyLjY5MTEgMjIuMjcyNCAxMi43NDVDMjIuMTMyOSAxMi44NTI4IDIxLjkyOTkgMTMuMDAxIDIxLjY2MzQgMTMuMTczOUMyMS4xMzAzIDEzLjUxOTYgMjAuMzQyNCAxMy45NjQ0IDE5LjI5OTcgMTQuMzgxNEwxNi40OTEyIDE1LjUwNDhDMTYuNDUyNCAxNS41MjA0IDE2LjQxMzggMTUuNTM1OCAxNi4zNzU2IDE1LjU1MTFDMTQuNDk4OCAxNi4zMDIgMTMuMzc5MiAxNi43NSAxMiAxNi43NUMxMC42MjA4IDE2Ljc1IDkuNTAxMjEgMTYuMzAyIDcuNjI0NDMgMTUuNTUxMUM3LjU4NjE5IDE1LjUzNTggNy41NDc2MyAxNS41MjA0IDcuNTA4NzUgMTUuNTA0OEw0LjcwMDI5IDE0LjM4MTRDMy42NTc1OSAxMy45NjQ0IDIuODY5NzEgMTMuNTE5NiAyLjMzNjYyIDEzLjE3MzlDMi4wNzAwNSAxMy4wMDEgMS44NjcwNSAxMi44NTI4IDEuNzI3NTcgMTIuNzQ1QzEuNjU3ODIgMTIuNjkxMSAxLjYwMzkyIDEyLjY0NzMgMS41NjU4NyAxMi42MTU1QzEuNTQ2ODQgMTIuNTk5NyAxLjUzMTc3IDEyLjU4NjggMS41MjA2NiAxMi41NzcyTDEuNTA2OTYgMTIuNTY1MkwxLjUwMjMzIDEyLjU2MTFMMS41MDA1NyAxMi41NTk1TDEuNDk5NSAxMi41NTg2QzEuNDk5MzQgMTIuNTU4NCAxLjQ5OTE5IDEyLjU1ODMgMiAxMkwxLjQ5OTUgMTIuNTU4NkMxLjE5MTE2IDEyLjI4MiAxLjE2NTEyIDExLjgwNzUgMS40NDE3MSAxMS40OTkyQzEuNzE3NzUgMTEuMTkxNSAyLjE5MDU4IDExLjE2NTIgMi40OTg5NiAxMS40NDAxWk0yMS40OTk2IDE1LjQ0MTRDMjEuNTAwMSAxNS40NDA5IDIxLjUwMDYgMTUuNDQwNSAyMS41MDExIDE1LjQ0QzIxLjgwOTUgMTUuMTY1MiAyMi4yODIzIDE1LjE5MTUgMjIuNTU4MyAxNS40OTkyQzIyLjgzNDkgMTUuODA3NSAyMi44MDkxIDE2LjI4MTcgMjIuNTAwOCAxNi41NTgzTDIyIDE2QzIyLjUwMDggMTYuNTU4MyAyMi41MDEgMTYuNTU4MSAyMi41MDA4IDE2LjU1ODNMMjIuNDk5NCAxNi41NTk1TDIyLjQ5NzcgMTYuNTYxMUwyMi40OTMgMTYuNTY1MkwyMi40NzkzIDE2LjU3NzJDMjIuNDY4MiAxNi41ODY4IDIyLjQ1MzIgMTYuNTk5NyAyMi40MzQxIDE2LjYxNTVDMjIuMzk2MSAxNi42NDczIDIyLjM0MjIgMTYuNjkxMSAyMi4yNzI0IDE2Ljc0NUMyMi4xMzI5IDE2Ljg1MjggMjEuOTI5OSAxNy4wMDEgMjEuNjYzNCAxNy4xNzM5QzIxLjEzMDMgMTcuNTE5NiAyMC4zNDI0IDE3Ljk2NDQgMTkuMjk5NyAxOC4zODE0TDE2LjQ5MTIgMTkuNTA0OEMxNi40NTI0IDE5LjUyMDQgMTYuNDEzOCAxOS41MzU4IDE2LjM3NTYgMTkuNTUxMUMxNC40OTg4IDIwLjMwMiAxMy4zNzkyIDIwLjc1IDEyIDIwLjc1QzEwLjYyMDggMjAuNzUgOS41MDEyMSAyMC4zMDIgNy42MjQ0MyAxOS41NTExQzcuNTg2MTkgMTkuNTM1OCA3LjU0NzYzIDE5LjUyMDQgNy41MDg3NSAxOS41MDQ4TDQuNzAwMjkgMTguMzgxNEMzLjY1NzU5IDE3Ljk2NDQgMi44Njk3MSAxNy41MTk2IDIuMzM2NjIgMTcuMTczOUMyLjA3MDA1IDE3LjAwMSAxLjg2NzA1IDE2Ljg1MjggMS43Mjc1NyAxNi43NDVDMS42NTc4MiAxNi42OTExIDEuNjAzOTIgMTYuNjQ3MyAxLjU2NTg3IDE2LjYxNTVDMS41NDY4NCAxNi41OTk3IDEuNTMxNzcgMTYuNTg2OCAxLjUyMDY2IDE2LjU3NzJMMS41MDY5NiAxNi41NjUyTDEuNTAyMzMgMTYuNTYxMUwxLjUwMDU3IDE2LjU1OTVMMS40OTk1IDE2LjU1ODZDMS40OTkzNCAxNi41NTg0IDEuNDk5MTkgMTYuNTU4MyAyIDE2TDEuNDk5NSAxNi41NTg2QzEuMTkxMTYgMTYuMjgyIDEuMTY1MTIgMTUuODA3NSAxLjQ0MTcxIDE1LjQ5OTJDMS43MTc3NCAxNS4xOTE1IDIuMTkwNTMgMTUuMTY1MiAyLjQ5ODkxIDE1LjQ0QzIuNDk4NzEgMTUuNDM5OCAyLjQ5OTExIDE1LjQ0MDIgMi40OTg5MSAxNS40NEMyLjQ5OTEgMTUuNDQwMiAyLjQ5OTg3IDE1LjQ0MDkgMi41MDAwNiAxNS40NDFDMi40OTk5MSAxNS40NDA5IDIuNTAwMjIgMTUuNDQxMiAyLjUwMDA2IDE1LjQ0MUwyLjUwMjYxIDE1LjQ0MzJDMi41MDcwMiAxNS40NDcxIDIuNTE1MjIgMTUuNDU0MSAyLjUyNzIyIDE1LjQ2NDFDMi41NTEyMyAxNS40ODQyIDIuNTkwNDIgMTUuNTE2MSAyLjY0NDc5IDE1LjU1ODFDMi43NTM1NCAxNS42NDIyIDIuOTIyODkgMTUuNzY2MyAzLjE1MjggMTUuOTE1NEMzLjYxMjY1IDE2LjIxMzYgNC4zMTQxOSAxNi42MTE0IDUuMjU3MzcgMTYuOTg4N0w4LjA2NTg0IDE4LjExMjFDMTAuMDkwNyAxOC45MjIgMTAuOTM5NiAxOS4yNSAxMiAxOS4yNUMxMy4wNjA0IDE5LjI1IDEzLjkwOTMgMTguOTIyIDE1LjkzNDIgMTguMTEyMUwxOC43NDI2IDE2Ljk4ODdDMTkuNjg1OCAxNi42MTE0IDIwLjM4NzQgMTYuMjEzNiAyMC44NDcyIDE1LjkxNTRDMjEuMDc3MSAxNS43NjYzIDIxLjI0NjUgMTUuNjQyMiAyMS4zNTUyIDE1LjU1ODFDMjEuNDA5NiAxNS41MTYxIDIxLjQ0ODggMTUuNDg0MiAyMS40NzI4IDE1LjQ2NDFDMjEuNDg0OCAxNS40NTQxIDIxLjQ5MyAxNS40NDcxIDIxLjQ5NzQgMTUuNDQzMkwyMS40OTk2IDE1LjQ0MTRaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=) Outline
 */
const LayersMinimalistic: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <SSRBase ref={ref} {...props} weights={weights} />
))

LayersMinimalistic.displayName = "LayersMinimalistic"
export default LayersMinimalistic
