/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjEuMzAyMyAxMy4xNjI4QzIxLjY4NzYgMTMuMTYyOCAyMiAxMy40NzUyIDIyIDEzLjg2MDVWMTMuOTEyOUMyMiAxNS42MjI1IDIyIDE2Ljk3NjYgMjEuODU3NSAxOC4wMzYzQzIxLjcxMDkgMTkuMTI2OSAyMS40MDIgMjAuMDA5NyAyMC43MDU4IDIwLjcwNThDMjAuMDA5NyAyMS40MDIgMTkuMTI2OSAyMS43MTA5IDE4LjAzNjMgMjEuODU3NUMxNi45NzY2IDIyIDE1LjYyMjUgMjIgMTMuOTEyOSAyMkgxMy44NjA1QzEzLjQ3NTIgMjIgMTMuMTYyOCAyMS42ODc2IDEzLjE2MjggMjEuMzAyM0MxMy4xNjI4IDIwLjkxNyAxMy40NzUyIDIwLjYwNDcgMTMuODYwNSAyMC42MDQ3QzE1LjYzNDMgMjAuNjA0NyAxNi44OTQ0IDIwLjYwMzIgMTcuODUwNCAyMC40NzQ2QzE4Ljc4NjMgMjAuMzQ4OCAxOS4zMjU1IDIwLjExMjggMTkuNzE5MiAxOS43MTkyQzIwLjExMjggMTkuMzI1NSAyMC4zNDg4IDE4Ljc4NjMgMjAuNDc0NiAxNy44NTA0QzIwLjYwMzIgMTYuODk0NCAyMC42MDQ3IDE1LjYzNDMgMjAuNjA0NyAxMy44NjA1QzIwLjYwNDcgMTMuNDc1MiAyMC45MTcgMTMuMTYyOCAyMS4zMDIzIDEzLjE2MjhaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMi42OTc2OCAxMy4xNjI4QzMuMDgyOTkgMTMuMTYyOCAzLjM5NTM1IDEzLjQ3NTIgMy4zOTUzNSAxMy44NjA1QzMuMzk1MzUgMTUuNjM0MyAzLjM5NjgzIDE2Ljg5NDQgMy41MjUzNiAxNy44NTA0QzMuNjUxMTkgMTguNzg2MyAzLjg4NzE2IDE5LjMyNTUgNC4yODA4NCAxOS43MTkyQzQuNjc0NTIgMjAuMTEyOCA1LjIxMzczIDIwLjM0ODggNi4xNDk2MyAyMC40NzQ2QzcuMTA1NTkgMjAuNjAzMiA4LjM2NTc1IDIwLjYwNDcgMTAuMTM5NSAyMC42MDQ3QzEwLjUyNDggMjAuNjA0NyAxMC44MzcyIDIwLjkxNyAxMC44MzcyIDIxLjMwMjNDMTAuODM3MiAyMS42ODc2IDEwLjUyNDggMjIgMTAuMTM5NSAyMkgxMC4wODcxQzguMzc3NTEgMjIgNy4wMjM0NCAyMiA1Ljk2MzcgMjEuODU3NUM0Ljg3MzA3IDIxLjcxMDkgMy45OTAzMyAyMS40MDIgMy4yOTQxOCAyMC43MDU4QzIuNTk4MDMgMjAuMDA5NyAyLjI4OTA4IDE5LjEyNjkgMi4xNDI0NSAxOC4wMzYzQzEuOTk5OTcgMTYuOTc2NiAxLjk5OTk5IDE1LjYyMjUgMiAxMy45MTI5QzIgMTMuODk1NSAyIDEzLjg3OCAyIDEzLjg2MDVDMiAxMy40NzUyIDIuMzEyMzYgMTMuMTYyOCAyLjY5NzY4IDEzLjE2MjhaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTAuMDg3MSAyTDEwLjEzOTUgMkMxMC41MjQ5IDIgMTAuODM3MiAyLjMxMjM2IDEwLjgzNzIgMi42OTc2OEMxMC44MzcyIDMuMDgyOTkgMTAuNTI0OSAzLjM5NTM1IDEwLjEzOTUgMy4zOTUzNUM4LjM2NTc1IDMuMzk1MzUgNy4xMDU1OSAzLjM5NjgzIDYuMTQ5NjMgMy41MjUzNkM1LjIxMzczIDMuNjUxMTkgNC42NzQ1MiAzLjg4NzE2IDQuMjgwODQgNC4yODA4NEMzLjg4NzE2IDQuNjc0NTIgMy42NTExOSA1LjIxMzczIDMuNTI1MzYgNi4xNDk2M0MzLjM5NjgzIDcuMTA1NTkgMy4zOTUzNSA4LjM2NTc1IDMuMzk1MzUgMTAuMTM5NUMzLjM5NTM1IDEwLjUyNDggMy4wODI5OSAxMC44MzcyIDIuNjk3NjggMTAuODM3MkMyLjMxMjM2IDEwLjgzNzIgMiAxMC41MjQ4IDIgMTAuMTM5NUwyIDEwLjA4NzFDMS45OTk5OSA4LjM3NzUxIDEuOTk5OTcgNy4wMjM0MyAyLjE0MjQ1IDUuOTYzN0MyLjI4OTA4IDQuODczMDcgMi41OTgwMyAzLjk5MDMzIDMuMjk0MTggMy4yOTQxOEMzLjk5MDMzIDIuNTk4MDMgNC44NzMwOCAyLjI4OTA4IDUuOTYzNyAyLjE0MjQ1QzcuMDIzNDMgMS45OTk5NyA4LjM3NzUxIDEuOTk5OTkgMTAuMDg3MSAyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTE3Ljg1MDQgMy41MjUzNkMxNi44OTQ0IDMuMzk2ODMgMTUuNjM0MyAzLjM5NTM1IDEzLjg2MDUgMy4zOTUzNUMxMy40NzUyIDMuMzk1MzUgMTMuMTYyOCAzLjA4Mjk5IDEzLjE2MjggMi42OTc2OEMxMy4xNjI4IDIuMzEyMzYgMTMuNDc1MiAyIDEzLjg2MDUgMkMxMy44NzggMiAxMy44OTU1IDIgMTMuOTEyOSAyQzE1LjYyMjUgMS45OTk5OSAxNi45NzY2IDEuOTk5OTcgMTguMDM2MyAyLjE0MjQ1QzE5LjEyNjkgMi4yODkwOCAyMC4wMDk3IDIuNTk4MDMgMjAuNzA1OCAzLjI5NDE4QzIxLjQwMiAzLjk5MDMzIDIxLjcxMDkgNC44NzMwNyAyMS44NTc1IDUuOTYzN0MyMiA3LjAyMzQ0IDIyIDguMzc3NTEgMjIgMTAuMDg3MVYxMC4xMzk1QzIyIDEwLjUyNDkgMjEuNjg3NiAxMC44MzcyIDIxLjMwMjMgMTAuODM3MkMyMC45MTcgMTAuODM3MiAyMC42MDQ3IDEwLjUyNDkgMjAuNjA0NyAxMC4xMzk1QzIwLjYwNDcgOC4zNjU3NSAyMC42MDMyIDcuMTA1NTkgMjAuNDc0NiA2LjE0OTYzQzIwLjM0ODggNS4yMTM3MyAyMC4xMTI4IDQuNjc0NTIgMTkuNzE5MiA0LjI4MDg0QzE5LjMyNTUgMy44ODcxNiAxOC43ODYzIDMuNjUxMTkgMTcuODUwNCAzLjUyNTM2WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTUuMzc1NTIgNS4zNzU1MkM0LjU1ODE0IDYuMTkyODkgNC41NTgxNCA3LjUwODQ0IDQuNTU4MTQgMTAuMTM5NVYxMy44NjA1QzQuNTU4MTQgMTYuNDkxNiA0LjU1ODE0IDE3LjgwNzEgNS4zNzU1MiAxOC42MjQ1QzYuMTkyODkgMTkuNDQxOSA3LjUwODQ0IDE5LjQ0MTkgMTAuMTM5NSAxOS40NDE5SDEzLjg2MDVDMTYuNDkxNiAxOS40NDE5IDE3LjgwNzEgMTkuNDQxOSAxOC42MjQ1IDE4LjYyNDVDMTkuNDQxOSAxNy44MDcxIDE5LjQ0MTkgMTYuNDkxNiAxOS40NDE5IDEzLjg2MDVWMTAuMTM5NUMxOS40NDE5IDcuNTA4NDQgMTkuNDQxOSA2LjE5Mjg5IDE4LjYyNDUgNS4zNzU1MkMxNy44MDcxIDQuNTU4MTQgMTYuNDkxNiA0LjU1ODE0IDEzLjg2MDUgNC41NTgxNEgxMC4xMzk1QzcuNTA4NDQgNC41NTgxNCA2LjE5Mjg5IDQuNTU4MTQgNS4zNzU1MiA1LjM3NTUyWk05LjA2NzcxIDE0LjU0MzVDOS4yNjg0OCAxNC4yNzI2IDkuNjUwODEgMTQuMjE1OCA5LjkyMTY2IDE0LjQxNjVDMTAuNTE0NSAxNC44NTYgMTEuMjMwMSAxNS4xMTA1IDEyIDE1LjExMDVDMTIuNzY5OSAxNS4xMTA1IDEzLjQ4NTUgMTQuODU2IDE0LjA3ODMgMTQuNDE2NUMxNC4zNDkyIDE0LjIxNTggMTQuNzMxNSAxNC4yNzI2IDE0LjkzMjMgMTQuNTQzNUMxNS4xMzMxIDE0LjgxNDMgMTUuMDc2MiAxNS4xOTY2IDE0LjgwNTQgMTUuMzk3NEMxNC4wMTM5IDE1Ljk4NDEgMTMuMDQ1OSAxNi4zMzE0IDEyIDE2LjMzMTRDMTAuOTU0MSAxNi4zMzE0IDkuOTg2MTEgMTUuOTg0MSA5LjE5NDYyIDE1LjM5NzRDOC45MjM3NiAxNS4xOTY2IDguODY2OTQgMTQuODE0MyA5LjA2NzcxIDE0LjU0MzVaTTE1LjI1NTggMTAuNDMwMkMxNS4yNTU4IDExLjEwNDUgMTQuODkxNCAxMS42NTEyIDE0LjQ0MTkgMTEuNjUxMkMxMy45OTIzIDExLjY1MTIgMTMuNjI3OSAxMS4xMDQ1IDEzLjYyNzkgMTAuNDMwMkMxMy42Mjc5IDkuNzU1OTMgMTMuOTkyMyA5LjIwOTMgMTQuNDQxOSA5LjIwOTNDMTQuODkxNCA5LjIwOTMgMTUuMjU1OCA5Ljc1NTkzIDE1LjI1NTggMTAuNDMwMlpNOS41NTgxNCAxMS42NTEyQzEwLjAwNzcgMTEuNjUxMiAxMC4zNzIxIDExLjEwNDUgMTAuMzcyMSAxMC40MzAyQzEwLjM3MjEgOS43NTU5MyAxMC4wMDc3IDkuMjA5MyA5LjU1ODE0IDkuMjA5M0M5LjEwODYxIDkuMjA5MyA4Ljc0NDE5IDkuNzU1OTMgOC43NDQxOSAxMC40MzAyQzguNzQ0MTkgMTEuMTA0NSA5LjEwODYxIDExLjY1MTIgOS41NTgxNCAxMS42NTEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
 */
export const FaceScanSquare:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M21.3023 13.1628C21.6876 13.1628 22 13.4752 22 13.8605V13.9129C22 15.6225 22 16.9766 21.8575 18.0363C21.7109 19.1269 21.402 20.0097 20.7058 20.7058C20.0097 21.402 19.1269 21.7109 18.0363 21.8575C16.9766 22 15.6225 22 13.9129 22H13.8605C13.4752 22 13.1628 21.6876 13.1628 21.3023C13.1628 20.917 13.4752 20.6047 13.8605 20.6047C15.6343 20.6047 16.8944 20.6032 17.8504 20.4746C18.7863 20.3488 19.3255 20.1128 19.7192 19.7192C20.1128 19.3255 20.3488 18.7863 20.4746 17.8504C20.6032 16.8944 20.6047 15.6343 20.6047 13.8605C20.6047 13.4752 20.917 13.1628 21.3023 13.1628Z" fill="currentColor"/>
<path fillRule="evenodd" clipRule="evenodd" d="M2.69768 13.1628C3.08299 13.1628 3.39535 13.4752 3.39535 13.8605C3.39535 15.6343 3.39683 16.8944 3.52536 17.8504C3.65119 18.7863 3.88716 19.3255 4.28084 19.7192C4.67452 20.1128 5.21373 20.3488 6.14963 20.4746C7.10559 20.6032 8.36575 20.6047 10.1395 20.6047C10.5248 20.6047 10.8372 20.917 10.8372 21.3023C10.8372 21.6876 10.5248 22 10.1395 22H10.0871C8.37751 22 7.02344 22 5.9637 21.8575C4.87307 21.7109 3.99033 21.402 3.29418 20.7058C2.59803 20.0097 2.28908 19.1269 2.14245 18.0363C1.99997 16.9766 1.99999 15.6225 2 13.9129C2 13.8955 2 13.878 2 13.8605C2 13.4752 2.31236 13.1628 2.69768 13.1628Z" fill="currentColor"/>
<path fillRule="evenodd" clipRule="evenodd" d="M10.0871 2L10.1395 2C10.5249 2 10.8372 2.31236 10.8372 2.69768C10.8372 3.08299 10.5249 3.39535 10.1395 3.39535C8.36575 3.39535 7.10559 3.39683 6.14963 3.52536C5.21373 3.65119 4.67452 3.88716 4.28084 4.28084C3.88716 4.67452 3.65119 5.21373 3.52536 6.14963C3.39683 7.10559 3.39535 8.36575 3.39535 10.1395C3.39535 10.5248 3.08299 10.8372 2.69768 10.8372C2.31236 10.8372 2 10.5248 2 10.1395L2 10.0871C1.99999 8.37751 1.99997 7.02343 2.14245 5.9637C2.28908 4.87307 2.59803 3.99033 3.29418 3.29418C3.99033 2.59803 4.87308 2.28908 5.9637 2.14245C7.02343 1.99997 8.37751 1.99999 10.0871 2Z" fill="currentColor"/>
<path fillRule="evenodd" clipRule="evenodd" d="M17.8504 3.52536C16.8944 3.39683 15.6343 3.39535 13.8605 3.39535C13.4752 3.39535 13.1628 3.08299 13.1628 2.69768C13.1628 2.31236 13.4752 2 13.8605 2C13.878 2 13.8955 2 13.9129 2C15.6225 1.99999 16.9766 1.99997 18.0363 2.14245C19.1269 2.28908 20.0097 2.59803 20.7058 3.29418C21.402 3.99033 21.7109 4.87307 21.8575 5.9637C22 7.02344 22 8.37751 22 10.0871V10.1395C22 10.5249 21.6876 10.8372 21.3023 10.8372C20.917 10.8372 20.6047 10.5249 20.6047 10.1395C20.6047 8.36575 20.6032 7.10559 20.4746 6.14963C20.3488 5.21373 20.1128 4.67452 19.7192 4.28084C19.3255 3.88716 18.7863 3.65119 17.8504 3.52536Z" fill="currentColor"/>
<path fillRule="evenodd" clipRule="evenodd" d="M5.37552 5.37552C4.55814 6.19289 4.55814 7.50844 4.55814 10.1395V13.8605C4.55814 16.4916 4.55814 17.8071 5.37552 18.6245C6.19289 19.4419 7.50844 19.4419 10.1395 19.4419H13.8605C16.4916 19.4419 17.8071 19.4419 18.6245 18.6245C19.4419 17.8071 19.4419 16.4916 19.4419 13.8605V10.1395C19.4419 7.50844 19.4419 6.19289 18.6245 5.37552C17.8071 4.55814 16.4916 4.55814 13.8605 4.55814H10.1395C7.50844 4.55814 6.19289 4.55814 5.37552 5.37552ZM9.06771 14.5435C9.26848 14.2726 9.65081 14.2158 9.92166 14.4165C10.5145 14.856 11.2301 15.1105 12 15.1105C12.7699 15.1105 13.4855 14.856 14.0783 14.4165C14.3492 14.2158 14.7315 14.2726 14.9323 14.5435C15.1331 14.8143 15.0762 15.1966 14.8054 15.3974C14.0139 15.9841 13.0459 16.3314 12 16.3314C10.9541 16.3314 9.98611 15.9841 9.19462 15.3974C8.92376 15.1966 8.86694 14.8143 9.06771 14.5435ZM15.2558 10.4302C15.2558 11.1045 14.8914 11.6512 14.4419 11.6512C13.9923 11.6512 13.6279 11.1045 13.6279 10.4302C13.6279 9.75593 13.9923 9.2093 14.4419 9.2093C14.8914 9.2093 15.2558 9.75593 15.2558 10.4302ZM9.55814 11.6512C10.0077 11.6512 10.3721 11.1045 10.3721 10.4302C10.3721 9.75593 10.0077 9.2093 9.55814 9.2093C9.10861 9.2093 8.74419 9.75593 8.74419 10.4302C8.74419 11.1045 9.10861 11.6512 9.55814 11.6512Z" fill="currentColor"/>
    </IconBase>
))

FaceScanSquare.displayName = "FaceScanSquare"