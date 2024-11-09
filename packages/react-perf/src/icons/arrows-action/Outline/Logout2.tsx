/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNC45NDUzIDEuMjVDMTMuNTc3OCAxLjI0OTk4IDEyLjQ3NTQgMS4yNDk5NiAxMS42MDg1IDEuMzY2NTJDMTAuNzA4NCAxLjQ4NzU0IDkuOTUwNDggMS43NDY0MyA5LjM0ODU3IDIuMzQ4MzVDOC44MjM2MyAyLjg3MzI4IDguNTU4MzkgMy41MTgzNiA4LjQxOTE2IDQuMjc2MzVDOC4yODM4NyA1LjAxMjkxIDguMjU3OTkgNS45MTQzIDguMjUxOTYgNi45OTU4M0M4LjI0OTY2IDcuNDEwMDMgOC41ODM1NyA3Ljc0NzY4IDguOTk3NzggNy43NDk5OUM5LjQxMTk5IDcuNzUyMyA5Ljc0OTY0IDcuNDE4MzggOS43NTE5NCA3LjAwNDE4QzkuNzU4MDMgNS45MTA2OCA5Ljc4NjQzIDUuMTM1NiA5Ljg5NDQ4IDQuNTQ3MzVDOS45OTg1OSAzLjk4MDU0IDEwLjE2NTggMy42NTI0NiAxMC40MDkyIDMuNDA5MDFDMTAuNjg2IDMuMTMyMjUgMTEuMDc0NiAyLjk1MTggMTEuODA4MyAyLjg1MzE1QzEyLjU2MzcgMi43NTE1OSAxMy41NjQ4IDIuNzUgMTUuMDAwMiAyLjc1SDE2LjAwMDJDMTcuNDM1NiAyLjc1IDE4LjQzNjcgMi43NTE1OSAxOS4xOTIxIDIuODUzMTVDMTkuOTI1OSAyLjk1MTggMjAuMzE0NCAzLjEzMjI1IDIwLjU5MTIgMy40MDkwMUMyMC44NjggMy42ODU3NyAyMS4wNDg0IDQuMDc0MzUgMjEuMTQ3MSA0LjgwODEyQzIxLjI0ODYgNS41NjM0NyAyMS4yNTAyIDYuNTY0NTkgMjEuMjUwMiA4VjE2QzIxLjI1MDIgMTcuNDM1NCAyMS4yNDg2IDE4LjQzNjUgMjEuMTQ3MSAxOS4xOTE5QzIxLjA0ODQgMTkuOTI1NyAyMC44NjggMjAuMzE0MiAyMC41OTEyIDIwLjU5MUMyMC4zMTQ0IDIwLjg2NzggMTkuOTI1OSAyMS4wNDgyIDE5LjE5MjEgMjEuMTQ2OUMxOC40MzY3IDIxLjI0ODQgMTcuNDM1NiAyMS4yNSAxNi4wMDAyIDIxLjI1SDE1LjAwMDJDMTMuNTY0OCAyMS4yNSAxMi41NjM3IDIxLjI0ODQgMTEuODA4MyAyMS4xNDY5QzExLjA3NDYgMjEuMDQ4MiAxMC42ODYgMjAuODY3OCAxMC40MDkyIDIwLjU5MUMxMC4xNjU4IDIwLjM0NzUgOS45OTg1OSAyMC4wMTk1IDkuODk0NDggMTkuNDUyN0M5Ljc4NjQzIDE4Ljg2NDQgOS43NTgwMyAxOC4wODkzIDkuNzUxOTQgMTYuOTk1OEM5Ljc0OTY0IDE2LjU4MTYgOS40MTE5OSAxNi4yNDc3IDguOTk3NzggMTYuMjVDOC41ODM1NyAxNi4yNTIzIDguMjQ5NjYgMTYuNTkgOC4yNTE5NiAxNy4wMDQyQzguMjU3OTkgMTguMDg1NyA4LjI4Mzg3IDE4Ljk4NzEgOC40MTkxNiAxOS43MjM2QzguNTU4MzkgMjAuNDgxNiA4LjgyMzYzIDIxLjEyNjcgOS4zNDg1NyAyMS42NTE3QzkuOTUwNDggMjIuMjUzNiAxMC43MDg0IDIyLjUxMjUgMTEuNjA4NSAyMi42MzM1QzEyLjQ3NTQgMjIuNzUgMTMuNTc3OCAyMi43NSAxNC45NDUzIDIyLjc1SDE2LjA1NTFDMTcuNDIyNyAyMi43NSAxOC41MjUgMjIuNzUgMTkuMzkyIDIyLjYzMzVDMjAuMjkyMSAyMi41MTI1IDIxLjA0OTkgMjIuMjUzNiAyMS42NTE5IDIxLjY1MTdDMjIuMjUzOCAyMS4wNDk3IDIyLjUxMjcgMjAuMjkxOSAyMi42MzM3IDE5LjM5MThDMjIuNzUwMyAxOC41MjQ4IDIyLjc1MDIgMTcuNDIyNSAyMi43NTAyIDE2LjA1NDlWNy45NDUxM0MyMi43NTAyIDYuNTc3NTQgMjIuNzUwMyA1LjQ3NTIyIDIyLjYzMzcgNC42MDgyNUMyMi41MTI3IDMuNzA4MTQgMjIuMjUzOCAyLjk1MDI3IDIxLjY1MTkgMi4zNDgzNUMyMS4wNDk5IDEuNzQ2NDMgMjAuMjkyMSAxLjQ4NzU0IDE5LjM5MiAxLjM2NjUyQzE4LjUyNSAxLjI0OTk2IDE3LjQyMjcgMS4yNDk5OCAxNi4wNTUxIDEuMjVIMTQuOTQ1M1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE1IDExLjI1QzE1LjQxNDIgMTEuMjUgMTUuNzUgMTEuNTg1OCAxNS43NSAxMkMxNS43NSAxMi40MTQyIDE1LjQxNDIgMTIuNzUgMTUgMTIuNzVINC4wMjc0NEw1Ljk4ODA5IDE0LjQzMDZDNi4zMDI1OSAxNC43MDAxIDYuMzM5MDEgMTUuMTczNiA2LjA2OTQ0IDE1LjQ4ODFDNS43OTk4OCAxNS44MDI2IDUuMzI2NCAxNS44MzkgNS4wMTE5MSAxNS41Njk0TDEuNTExOTEgMTIuNTY5NEMxLjM0NTY3IDEyLjQyNyAxLjI1IDEyLjIxODkgMS4yNSAxMkMxLjI1IDExLjc4MTEgMS4zNDU2NyAxMS41NzMgMS41MTE5MSAxMS40MzA2TDUuMDExOTEgOC40MzA1NkM1LjMyNjQgOC4xNjA5OSA1Ljc5OTg4IDguMTk3NDEgNi4wNjk0NCA4LjUxMTkxQzYuMzM5MDEgOC44MjY0IDYuMzAyNTkgOS4yOTk4OCA1Ljk4ODA5IDkuNTY5NDRMNC4wMjc0NCAxMS4yNUgxNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
 */
export const Logout2:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path d="M14.9453 1.25C13.5778 1.24998 12.4754 1.24996 11.6085 1.36652C10.7084 1.48754 9.95048 1.74643 9.34857 2.34835C8.82363 2.87328 8.55839 3.51836 8.41916 4.27635C8.28387 5.01291 8.25799 5.9143 8.25196 6.99583C8.24966 7.41003 8.58357 7.74768 8.99778 7.74999C9.41199 7.7523 9.74964 7.41838 9.75194 7.00418C9.75803 5.91068 9.78643 5.1356 9.89448 4.54735C9.99859 3.98054 10.1658 3.65246 10.4092 3.40901C10.686 3.13225 11.0746 2.9518 11.8083 2.85315C12.5637 2.75159 13.5648 2.75 15.0002 2.75H16.0002C17.4356 2.75 18.4367 2.75159 19.1921 2.85315C19.9259 2.9518 20.3144 3.13225 20.5912 3.40901C20.868 3.68577 21.0484 4.07435 21.1471 4.80812C21.2486 5.56347 21.2502 6.56459 21.2502 8V16C21.2502 17.4354 21.2486 18.4365 21.1471 19.1919C21.0484 19.9257 20.868 20.3142 20.5912 20.591C20.3144 20.8678 19.9259 21.0482 19.1921 21.1469C18.4367 21.2484 17.4356 21.25 16.0002 21.25H15.0002C13.5648 21.25 12.5637 21.2484 11.8083 21.1469C11.0746 21.0482 10.686 20.8678 10.4092 20.591C10.1658 20.3475 9.99859 20.0195 9.89448 19.4527C9.78643 18.8644 9.75803 18.0893 9.75194 16.9958C9.74964 16.5816 9.41199 16.2477 8.99778 16.25C8.58357 16.2523 8.24966 16.59 8.25196 17.0042C8.25799 18.0857 8.28387 18.9871 8.41916 19.7236C8.55839 20.4816 8.82363 21.1267 9.34857 21.6517C9.95048 22.2536 10.7084 22.5125 11.6085 22.6335C12.4754 22.75 13.5778 22.75 14.9453 22.75H16.0551C17.4227 22.75 18.525 22.75 19.392 22.6335C20.2921 22.5125 21.0499 22.2536 21.6519 21.6517C22.2538 21.0497 22.5127 20.2919 22.6337 19.3918C22.7503 18.5248 22.7502 17.4225 22.7502 16.0549V7.94513C22.7502 6.57754 22.7503 5.47522 22.6337 4.60825C22.5127 3.70814 22.2538 2.95027 21.6519 2.34835C21.0499 1.74643 20.2921 1.48754 19.392 1.36652C18.525 1.24996 17.4227 1.24998 16.0551 1.25H14.9453Z" fill="currentColor"/>
<path d="M15 11.25C15.4142 11.25 15.75 11.5858 15.75 12C15.75 12.4142 15.4142 12.75 15 12.75H4.02744L5.98809 14.4306C6.30259 14.7001 6.33901 15.1736 6.06944 15.4881C5.79988 15.8026 5.3264 15.839 5.01191 15.5694L1.51191 12.5694C1.34567 12.427 1.25 12.2189 1.25 12C1.25 11.7811 1.34567 11.573 1.51191 11.4306L5.01191 8.43056C5.3264 8.16099 5.79988 8.19741 6.06944 8.51191C6.33901 8.8264 6.30259 9.29988 5.98809 9.56944L4.02744 11.25H15Z" fill="currentColor"/>
    </IconBase>
))

Logout2.displayName = "Logout2"
