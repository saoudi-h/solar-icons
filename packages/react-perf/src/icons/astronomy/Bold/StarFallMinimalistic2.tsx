/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMS44MTE1IDYuNzI2ODJDMTIuODI0OCA0LjkwOTAyIDEzLjMzMTUgNC4wMDAxMiAxNC4wODkgNC4wMDAxMkMxNC44NDY1IDQuMDAwMTIgMTUuMzUzMSA0LjkwOTAyIDE2LjM2NjUgNi43MjY4MkwxNi42Mjg2IDcuMTk3MTFDMTYuOTE2NiA3LjcxMzY3IDE3LjA2MDUgNy45NzE5NSAxNy4yODUgOC4xNDIzN0MxNy41MDk1IDguMzEyNzggMTcuNzg5MSA4LjM3NjA0IDE4LjM0ODMgOC41MDI1NkwxOC44NTc0IDguNjE3NzRDMjAuODI1MSA5LjA2Mjk3IDIxLjgwOSA5LjI4NTU4IDIyLjA0MzEgMTAuMDM4M0MyMi4yNzcxIDEwLjc5MSAyMS42MDY0IDExLjU3NTQgMjAuMjY0OSAxMy4xNDQxTDE5LjkxNzkgMTMuNTQ5OUMxOS41MzY2IDEzLjk5NTcgMTkuMzQ2IDE0LjIxODYgMTkuMjYwMyAxNC40OTQzQzE5LjE3NDYgMTQuNzcgMTkuMjAzNCAxNS4wNjc0IDE5LjI2MSAxNS42NjIyTDE5LjMxMzUgMTYuMjAzNkMxOS41MTYzIDE4LjI5NjYgMTkuNjE3NyAxOS4zNDMxIDE5LjAwNDkgMTkuODA4M0MxOC4zOTIgMjAuMjczNSAxNy40NzA4IDE5Ljg0OTQgMTUuNjI4NSAxOS4wMDExTDE1LjE1MTggMTguNzgxNkMxNC42MjgyIDE4LjU0MDUgMTQuMzY2NSAxOC40MiAxNC4wODkgMTguNDJDMTMuODExNSAxOC40MiAxMy41NDk3IDE4LjU0MDUgMTMuMDI2MiAxOC43ODE2TDEyLjU0OTUgMTkuMDAxMUMxMC43MDcxIDE5Ljg0OTQgOS43ODU5MyAyMC4yNzM1IDkuMTczMTEgMTkuODA4M0M4LjU2MDI5IDE5LjM0MzEgOC42NjE2OSAxOC4yOTY2IDguODY0NTEgMTYuMjAzNkw4LjkxNjk4IDE1LjY2MjJDOC45NzQ2MSAxNS4wNjc0IDkuMDAzNDMgMTQuNzcgOC45MTc2OCAxNC40OTQzQzguODMxOTMgMTQuMjE4NiA4LjY0MTMzIDEzLjk5NTcgOC4yNjAxMiAxMy41NDk5TDcuOTEzMDcgMTMuMTQ0MUM2LjU3MTU5IDExLjU3NTQgNS45MDA4NSAxMC43OTEgNi4xMzQ5MiAxMC4wMzgzQzYuMzY5IDkuMjg1NTggNy4zNTI4NyA5LjA2Mjk3IDkuMzIwNjIgOC42MTc3NEw5LjgyOTcgOC41MDI1NkMxMC4zODg5IDguMzc2MDQgMTAuNjY4NSA4LjMxMjc4IDEwLjg5MjkgOC4xNDIzN0MxMS4xMTc0IDcuOTcxOTUgMTEuMjYxNCA3LjcxMzY3IDExLjU0OTQgNy4xOTcxMUwxMS44MTE1IDYuNzI2ODJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNOC43NDU0OSA1LjIwMjQxQzYuNzYzODcgNC42MzEzOCA0LjYzODIxIDQuOTMzIDIuNTg3MjkgNi4xMzQwN0wyLjM3OTEzIDYuMjU1OThDMi4wMjE3IDYuNDY1MyAxLjU2MjI2IDYuMzQ1MjMgMS4zNTI5MyA1Ljk4NzhDMS4xNDM2MSA1LjYzMDM3IDEuMjYzNjggNS4xNzA5MiAxLjYyMTExIDQuOTYxNkwxLjgyOTI3IDQuODM5N0M0LjE4OTY5IDMuNDU3MzcgNi43MzcwMiAzLjA2MjYgOS4xNjA4MyAzLjc2MTA2TDkuMzY4NzEgMy44MjA5NkM5Ljc2NjczIDMuOTM1NjYgOS45OTY0MSA0LjM1MTI5IDkuODgxNzEgNC43NDkzMUM5Ljc2NzAyIDUuMTQ3MzMgOS4zNTEzOSA1LjM3NzAxIDguOTUzMzcgNS4yNjIzMUw4Ljc0NTQ5IDUuMjAyNDFaTTQuODM2MjggOS45MzY0NkM0Ljg3MTQ0IDEwLjM0OTIgNC41NjUzNyAxMC43MTIzIDQuMTUyNjUgMTAuNzQ3NEMzLjk5OTQ5IDEwLjc2MDUgMy44ODIwNiAxMC43Njc5IDMuNzgzNjUgMTAuNzc0MkMzLjYwNjI3IDEwLjc4NTQgMy40OTA2OSAxMC43OTI4IDMuMzM5MDIgMTAuODIxOUMzLjE0MjUzIDEwLjg1OTYgMi44ODc0IDEwLjkzOTQgMi40MjQ0IDExLjE3MDlDMi4wNTM5MSAxMS4zNTYyIDEuNjAzNDEgMTEuMjA2IDEuNDE4MTcgMTAuODM1NUMxLjIzMjkzIDEwLjQ2NSAxLjM4MzA5IDEwLjAxNDUgMS43NTM1OCA5LjgyOTNDMi4yOTA1NyA5LjU2MDggMi42ODAzMiA5LjQyMDkyIDMuMDU2MjcgOS4zNDg3NkMzLjMwMzE3IDkuMzAxMzcgMy41NTgwNCA5LjI4NDc3IDMuNzg3MjQgOS4yNjk4NEMzLjg3MDUzIDkuMjY0NDEgMy45NTA0MyA5LjI1OTIxIDQuMDI1MzMgOS4yNTI4M0M0LjQzODA0IDkuMjE3NjcgNC44MDExMiA5LjUyMzc0IDQuODM2MjggOS45MzY0NlpNNS45MTc4OCAxNS44NTYxQzQuNzMzOTIgMTUuNTc4NiAzLjQ4NjUzIDE1Ljg1MzggMi41NTMxNiAxNi41ODkyQzIuMjI3ODEgMTYuODQ1NiAxLjc1NjI0IDE2Ljc4OTYgMS40OTk4OCAxNi40NjQzQzEuMjQzNTMgMTYuMTM4OSAxLjI5OTQ2IDE1LjY2NzQgMS42MjQ4MiAxNS40MTFDMi45MjI2MSAxNC4zODg0IDQuNjM5MTEgMTQuMDE1OCA2LjI2MDEgMTQuMzk1NkM2LjY2MzM5IDE0LjQ5MDEgNi45MTM3MSAxNC44OTM3IDYuODE5MjEgMTUuMjk3QzYuNzI0NzEgMTUuNzAwMyA2LjMyMTE3IDE1Ljk1MDYgNS45MTc4OCAxNS44NTYxWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
 */
export const StarFallMinimalistic2:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path d="M11.8115 6.72682C12.8248 4.90902 13.3315 4.00012 14.089 4.00012C14.8465 4.00012 15.3531 4.90902 16.3665 6.72682L16.6286 7.19711C16.9166 7.71367 17.0605 7.97195 17.285 8.14237C17.5095 8.31278 17.7891 8.37604 18.3483 8.50256L18.8574 8.61774C20.8251 9.06297 21.809 9.28558 22.0431 10.0383C22.2771 10.791 21.6064 11.5754 20.2649 13.1441L19.9179 13.5499C19.5366 13.9957 19.346 14.2186 19.2603 14.4943C19.1746 14.77 19.2034 15.0674 19.261 15.6622L19.3135 16.2036C19.5163 18.2966 19.6177 19.3431 19.0049 19.8083C18.392 20.2735 17.4708 19.8494 15.6285 19.0011L15.1518 18.7816C14.6282 18.5405 14.3665 18.42 14.089 18.42C13.8115 18.42 13.5497 18.5405 13.0262 18.7816L12.5495 19.0011C10.7071 19.8494 9.78593 20.2735 9.17311 19.8083C8.56029 19.3431 8.66169 18.2966 8.86451 16.2036L8.91698 15.6622C8.97461 15.0674 9.00343 14.77 8.91768 14.4943C8.83193 14.2186 8.64133 13.9957 8.26012 13.5499L7.91307 13.1441C6.57159 11.5754 5.90085 10.791 6.13492 10.0383C6.369 9.28558 7.35287 9.06297 9.32062 8.61774L9.8297 8.50256C10.3889 8.37604 10.6685 8.31278 10.8929 8.14237C11.1174 7.97195 11.2614 7.71367 11.5494 7.19711L11.8115 6.72682Z" fill="currentColor"/>
<path fillRule="evenodd" clipRule="evenodd" d="M8.74549 5.20241C6.76387 4.63138 4.63821 4.933 2.58729 6.13407L2.37913 6.25598C2.0217 6.4653 1.56226 6.34523 1.35293 5.9878C1.14361 5.63037 1.26368 5.17092 1.62111 4.9616L1.82927 4.8397C4.18969 3.45737 6.73702 3.0626 9.16083 3.76106L9.36871 3.82096C9.76673 3.93566 9.99641 4.35129 9.88171 4.74931C9.76702 5.14733 9.35139 5.37701 8.95337 5.26231L8.74549 5.20241ZM4.83628 9.93646C4.87144 10.3492 4.56537 10.7123 4.15265 10.7474C3.99949 10.7605 3.88206 10.7679 3.78365 10.7742C3.60627 10.7854 3.49069 10.7928 3.33902 10.8219C3.14253 10.8596 2.8874 10.9394 2.4244 11.1709C2.05391 11.3562 1.60341 11.206 1.41817 10.8355C1.23293 10.465 1.38309 10.0145 1.75358 9.8293C2.29057 9.5608 2.68032 9.42092 3.05627 9.34876C3.30317 9.30137 3.55804 9.28477 3.78724 9.26984C3.87053 9.26441 3.95043 9.25921 4.02533 9.25283C4.43804 9.21767 4.80112 9.52374 4.83628 9.93646ZM5.91788 15.8561C4.73392 15.5786 3.48653 15.8538 2.55316 16.5892C2.22781 16.8456 1.75624 16.7896 1.49988 16.4643C1.24353 16.1389 1.29946 15.6674 1.62482 15.411C2.92261 14.3884 4.63911 14.0158 6.2601 14.3956C6.66339 14.4901 6.91371 14.8937 6.81921 15.297C6.72471 15.7003 6.32117 15.9506 5.91788 15.8561Z" fill="currentColor"/>
    </IconBase>
))

StarFallMinimalistic2.displayName = "StarFallMinimalistic2"