/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTAuNTkzNiAyLjMxODgzQzExLjQ4MyAxLjg5MzcyIDEyLjUxNyAxLjg5MzcyIDEzLjQwNjQgMi4zMTg4M0MxMy43OTI4IDIuNTAzNTEgMTQuMTQ2OCAyLjgwNTUxIDE0LjYzNzEgMy4yMjM2N0MxNC42NjI1IDMuMjQ1MzggMTQuNjg4MyAzLjI2NzQgMTQuNzE0NiAzLjI4OTczQzE0Ljk1MjYgMy40OTI2MiAxNS4wMjc2IDMuNTU1IDE1LjEwMzUgMy42MDU4NUMxNS4yOTY1IDMuNzM1MTkgMTUuNTEzMiAzLjgyNDk1IDE1Ljc0MTEgMy44Njk5NUMxNS44MzA3IDMuODg3NjQgMTUuOTI3OCAzLjg5NjU0IDE2LjIzOTYgMy45MjE0M0MxNi4yNzM5IDMuOTI0MTcgMTYuMzA3OCAzLjkyNjg1IDE2LjM0MTEgMy45Mjk0OUMxNi45ODM0IDMuOTgwNDYgMTcuNDQ3MyA0LjAxNzI3IDE3Ljg1MTEgNC4xNTk5MUMxOC43ODA3IDQuNDg4MjIgMTkuNTExOCA1LjIxOTM1IDE5Ljg0MDEgNi4xNDg4NUMxOS45ODI3IDYuNTUyNjcgMjAuMDE5NSA3LjAxNjU2IDIwLjA3MDUgNy42NTg5QzIwLjA3MzIgNy42OTIyNCAyMC4wNzU4IDcuNzI2MDcgMjAuMDc4NiA3Ljc2MDM5QzIwLjEwMzUgOC4wNzIyIDIwLjExMjQgOC4xNjkzMyAyMC4xMzAxIDguMjU4OTRDMjAuMTc1IDguNDg2ODQgMjAuMjY0OCA4LjcwMzU1IDIwLjM5NDEgOC44OTY1MkMyMC40NDUgOC45NzIzOSAyMC41MDc0IDkuMDQ3MzcgMjAuNzEwMyA5LjI4NTQ1QzIwLjczMjYgOS4zMTE2NiAyMC43NTQ2IDkuMzM3NDggMjAuNzc2MyA5LjM2MjkzQzIxLjE5NDUgOS44NTMxNiAyMS40OTY1IDEwLjIwNzIgMjEuNjgxMiAxMC41OTM2QzIyLjEwNjMgMTEuNDgzIDIyLjEwNjMgMTIuNTE3IDIxLjY4MTIgMTMuNDA2NEMyMS40OTY1IDEzLjc5MjggMjEuMTk0NSAxNC4xNDY4IDIwLjc3NjQgMTQuNjM3MUMyMC43NTQ2IDE0LjY2MjUgMjAuNzMyNiAxNC42ODgzIDIwLjcxMDMgMTQuNzE0NkMyMC41MDc0IDE0Ljk1MjYgMjAuNDQ1IDE1LjAyNzYgMjAuMzk0MSAxNS4xMDM1QzIwLjI2NDggMTUuMjk2NSAyMC4xNzUgMTUuNTEzMiAyMC4xMzAxIDE1Ljc0MTFDMjAuMTEyNCAxNS44MzA3IDIwLjEwMzUgMTUuOTI3OCAyMC4wNzg2IDE2LjIzOTZDMjAuMDc1OCAxNi4yNzM5IDIwLjA3MzIgMTYuMzA3OCAyMC4wNzA1IDE2LjM0MTFDMjAuMDE5NSAxNi45ODM0IDE5Ljk4MjcgMTcuNDQ3MyAxOS44NDAxIDE3Ljg1MTFDMTkuNTExOCAxOC43ODA3IDE4Ljc4MDcgMTkuNTExOCAxNy44NTExIDE5Ljg0MDFDMTcuNDQ3MyAxOS45ODI3IDE2Ljk4MzQgMjAuMDE5NSAxNi4zNDExIDIwLjA3MDVDMTYuMzA3OCAyMC4wNzMyIDE2LjI3MzkgMjAuMDc1OCAxNi4yMzk2IDIwLjA3ODZDMTUuOTI3OCAyMC4xMDM1IDE1LjgzMDcgMjAuMTEyNCAxNS43NDExIDIwLjEzMDFDMTUuNTEzMiAyMC4xNzUgMTUuMjk2NSAyMC4yNjQ4IDE1LjEwMzUgMjAuMzk0MUMxNS4wMjc2IDIwLjQ0NSAxNC45NTI2IDIwLjUwNzQgMTQuNzE0NiAyMC43MTAzQzE0LjY4ODMgMjAuNzMyNiAxNC42NjI1IDIwLjc1NDYgMTQuNjM3MSAyMC43NzYzQzE0LjE0NjggMjEuMTk0NSAxMy43OTI4IDIxLjQ5NjUgMTMuNDA2NCAyMS42ODEyQzEyLjUxNyAyMi4xMDYzIDExLjQ4MyAyMi4xMDYzIDEwLjU5MzYgMjEuNjgxMkMxMC4yMDcyIDIxLjQ5NjUgOS44NTMxNSAyMS4xOTQ1IDkuMzYyOSAyMC43NzYzQzkuMzM3NDYgMjAuNzU0NiA5LjMxMTY1IDIwLjczMjYgOS4yODU0NSAyMC43MTAzQzkuMDQ3MzYgMjAuNTA3NCA4Ljk3MjM5IDIwLjQ0NSA4Ljg5NjUyIDIwLjM5NDFDOC43MDM1NSAyMC4yNjQ4IDguNDg2ODQgMjAuMTc1IDguMjU4OTQgMjAuMTMwMUM4LjE2OTMzIDIwLjExMjQgOC4wNzIyIDIwLjEwMzUgNy43NjAzOSAyMC4wNzg2QzcuNzI2MDcgMjAuMDc1OCA3LjY5MjI1IDIwLjA3MzIgNy42NTg5IDIwLjA3MDVDNy4wMTY1NiAyMC4wMTk1IDYuNTUyNjcgMTkuOTgyNyA2LjE0ODg1IDE5Ljg0MDFDNS4yMTkzNSAxOS41MTE4IDQuNDg4MjIgMTguNzgwNyA0LjE1OTkxIDE3Ljg1MTFDNC4wMTcyNyAxNy40NDczIDMuOTgwNDYgMTYuOTgzNCAzLjkyOTQ5IDE2LjM0MTFDMy45MjY4NSAxNi4zMDc4IDMuOTI0MTcgMTYuMjczOSAzLjkyMTQzIDE2LjIzOTZDMy44OTY1NCAxNS45Mjc4IDMuODg3NjQgMTUuODMwNyAzLjg2OTk1IDE1Ljc0MTFDMy44MjQ5NSAxNS41MTMyIDMuNzM1MTkgMTUuMjk2NSAzLjYwNTg1IDE1LjEwMzVDMy41NTUgMTUuMDI3NiAzLjQ5MjYyIDE0Ljk1MjYgMy4yODk3MyAxNC43MTQ2QzMuMjY3NCAxNC42ODg0IDMuMjQ1MzggMTQuNjYyNSAzLjIyMzY4IDE0LjYzNzFDMi44MDU1MSAxNC4xNDY4IDIuNTAzNTEgMTMuNzkyOCAyLjMxODgzIDEzLjQwNjRDMS44OTM3MiAxMi41MTcgMS44OTM3MiAxMS40ODMgMi4zMTg4MyAxMC41OTM2QzIuNTAzNTEgMTAuMjA3MiAyLjgwNTUxIDkuODUzMTUgMy4yMjM2NyA5LjM2MjkxQzMuMjQ1MzcgOS4zMzc0NyAzLjI2NzM5IDkuMzExNjUgMy4yODk3MyA5LjI4NTQ1QzMuNDkyNjIgOS4wNDczNiAzLjU1NSA4Ljk3MjM5IDMuNjA1ODUgOC44OTY1MkMzLjczNTE5IDguNzAzNTUgMy44MjQ5NSA4LjQ4Njg0IDMuODY5OTUgOC4yNTg5NEMzLjg4NzY0IDguMTY5MzMgMy44OTY1NCA4LjA3MjIgMy45MjE0MyA3Ljc2MDM5QzMuOTI0MTcgNy43MjYwNyAzLjkyNjg1IDcuNjkyMjUgMy45Mjk0OSA3LjY1ODlDMy45ODA0NiA3LjAxNjU3IDQuMDE3MjcgNi41NTI2NyA0LjE1OTkxIDYuMTQ4ODVDNC40ODgyMiA1LjIxOTM1IDUuMjE5MzUgNC40ODgyMiA2LjE0ODg1IDQuMTU5OTFDNi41NTI2NyA0LjAxNzI3IDcuMDE2NTcgMy45ODA0NiA3LjY1ODkxIDMuOTI5NDlDNy42OTIyNSAzLjkyNjg1IDcuNzI2MDcgMy45MjQxNyA3Ljc2MDM5IDMuOTIxNDNDOC4wNzIyIDMuODk2NTQgOC4xNjkzMyAzLjg4NzY0IDguMjU4OTQgMy44Njk5NUM4LjQ4Njg0IDMuODI0OTUgOC43MDM1NSAzLjczNTE5IDguODk2NTIgMy42MDU4NUM4Ljk3MjM5IDMuNTU1IDkuMDQ3MzYgMy40OTI2MiA5LjI4NTQ1IDMuMjg5NzNDOS4zMTE2NSAzLjI2NzM5IDkuMzM3NDYgMy4yNDUzOCA5LjM2MjkxIDMuMjIzNjdDOS44NTMxNSAyLjgwNTUxIDEwLjIwNzIgMi41MDM1MSAxMC41OTM2IDIuMzE4ODNaTTEyLjc1NzMgMy42NzY5QzEyLjI3ODQgMy40NDc5OSAxMS43MjE2IDMuNDQ3OTkgMTEuMjQyNyAzLjY3NjlDMTEuMDU3NiAzLjc2NTM5IDEwLjg2MjQgMy45MjM1MiAxMC4yNjE4IDQuNDM1MzdDMTAuMjUxOSA0LjQ0Mzc4IDEwLjI0MjIgNC40NTIwNyAxMC4yMzI2IDQuNDYwMjZDMTAuMDM1NCA0LjYyODMgOS44OTE1NiA0Ljc1MDk3IDkuNzM0NTYgNC44NTYyQzkuMzc2MTkgNS4wOTYzOSA4Ljk3MzczIDUuMjYzMSA4LjU1MDQ4IDUuMzQ2NjZDOC4zNjUwNSA1LjM4MzI3IDguMTc2NTcgNS4zOTgyNyA3LjkxODM3IDUuNDE4ODNDNy45MDU3OSA1LjQxOTgzIDcuODkzMDQgNS40MjA4NCA3Ljg4MDEyIDUuNDIxODdDNy4wOTM0OCA1LjQ4NDY1IDYuODQzNjcgNS41MTA4NCA2LjY1MDE2IDUuNTc5MTlDNi4xNDk2NiA1Ljc1NTk3IDUuNzU1OTcgNi4xNDk2NiA1LjU3OTE5IDYuNjUwMTZDNS41MTA4NCA2Ljg0MzY3IDUuNDg0NjUgNy4wOTM0OCA1LjQyMTg3IDcuODgwMTJDNS40MjA4NCA3Ljg5MzA0IDUuNDE5ODMgNy45MDU3OSA1LjQxODgzIDcuOTE4MzdDNS4zOTgyNyA4LjE3NjU3IDUuMzgzMjcgOC4zNjUwNSA1LjM0NjY2IDguNTUwNDhDNS4yNjMxIDguOTczNzMgNS4wOTYzOSA5LjM3NjE5IDQuODU2MiA5LjczNDU2QzQuNzUwOTcgOS44OTE1NiA0LjYyODMgMTAuMDM1NCA0LjQ2MDI1IDEwLjIzMjZDNC40NTIwNyAxMC4yNDIyIDQuNDQzNzcgMTAuMjUxOSA0LjQzNTM3IDEwLjI2MThDMy45MjM1MiAxMC44NjI0IDMuNzY1MzkgMTEuMDU3NiAzLjY3NjkgMTEuMjQyN0MzLjQ0Nzk5IDExLjcyMTYgMy40NDc5OSAxMi4yNzg0IDMuNjc2OSAxMi43NTczQzMuNzY1MzkgMTIuOTQyNCAzLjkyMzUyIDEzLjEzNzYgNC40MzUzNyAxMy43MzgyQzQuNDQzNzggMTMuNzQ4MSA0LjQ1MjA3IDEzLjc1NzggNC40NjAyNiAxMy43Njc0QzQuNjI4MyAxMy45NjQ2IDQuNzUwOTcgMTQuMTA4NCA0Ljg1NjIgMTQuMjY1NEM1LjA5NjM5IDE0LjYyMzggNS4yNjMxIDE1LjAyNjMgNS4zNDY2NiAxNS40NDk1QzUuMzgzMjcgMTUuNjM0OSA1LjM5ODI3IDE1LjgyMzQgNS40MTg4MyAxNi4wODE2QzUuNDE5ODMgMTYuMDk0MiA1LjQyMDg0IDE2LjEwNyA1LjQyMTg3IDE2LjExOTlDNS40ODQ2NSAxNi45MDY1IDUuNTEwODQgMTcuMTU2MyA1LjU3OTE5IDE3LjM0OThDNS43NTU5NyAxNy44NTAzIDYuMTQ5NjYgMTguMjQ0IDYuNjUwMTYgMTguNDIwOEM2Ljg0MzY3IDE4LjQ4OTIgNy4wOTM0OCAxOC41MTU0IDcuODgwMTIgMTguNTc4MUw3LjkxODM2IDE4LjU4MTJDOC4xNzY1OCAxOC42MDE3IDguMzY1MDYgMTguNjE2NyA4LjU1MDQ4IDE4LjY1MzNDOC45NzM3MyAxOC43MzY5IDkuMzc2MTkgMTguOTAzNiA5LjczNDU2IDE5LjE0MzhDOS44OTE1NiAxOS4yNDkgMTAuMDM1NCAxOS4zNzE3IDEwLjIzMjYgMTkuNTM5N0wxMC4yNjE4IDE5LjU2NDZDMTAuODYyNCAyMC4wNzY1IDExLjA1NzYgMjAuMjM0NiAxMS4yNDI3IDIwLjMyMzFDMTEuNzIxNiAyMC41NTIgMTIuMjc4NCAyMC41NTIgMTIuNzU3MyAyMC4zMjMxQzEyLjk0MjQgMjAuMjM0NiAxMy4xMzc2IDIwLjA3NjUgMTMuNzM4MiAxOS41NjQ2TDEzLjc2NzUgMTkuNTM5N0MxMy45NjQ2IDE5LjM3MTcgMTQuMTA4NCAxOS4yNDkgMTQuMjY1NCAxOS4xNDM4QzE0LjYyMzggMTguOTAzNiAxNS4wMjYzIDE4LjczNjkgMTUuNDQ5NSAxOC42NTMzQzE1LjYzNDkgMTguNjE2NyAxNS44MjM0IDE4LjYwMTcgMTYuMDgxNiAxOC41ODEyTDE2LjExOTkgMTguNTc4MUMxNi45MDY1IDE4LjUxNTQgMTcuMTU2MyAxOC40ODkyIDE3LjM0OTggMTguNDIwOEMxNy44NTAzIDE4LjI0NCAxOC4yNDQgMTcuODUwMyAxOC40MjA4IDE3LjM0OThDMTguNDg5MiAxNy4xNTYzIDE4LjUxNTQgMTYuOTA2NSAxOC41NzgxIDE2LjExOTlMMTguNTgxMiAxNi4wODE2QzE4LjYwMTcgMTUuODIzNCAxOC42MTY3IDE1LjYzNDkgMTguNjUzMyAxNS40NDk1QzE4LjczNjkgMTUuMDI2MyAxOC45MDM2IDE0LjYyMzggMTkuMTQzOCAxNC4yNjU0QzE5LjI0OSAxNC4xMDg0IDE5LjM3MTcgMTMuOTY0NiAxOS41Mzk3IDEzLjc2NzVMMTkuNTY0NiAxMy43MzgyQzIwLjA3NjUgMTMuMTM3NiAyMC4yMzQ2IDEyLjk0MjQgMjAuMzIzMSAxMi43NTczQzIwLjU1MiAxMi4yNzg0IDIwLjU1MiAxMS43MjE2IDIwLjMyMzEgMTEuMjQyN0MyMC4yMzQ2IDExLjA1NzYgMjAuMDc2NSAxMC44NjI0IDE5LjU2NDYgMTAuMjYxOEwxOS41Mzk3IDEwLjIzMjVDMTkuMzcxNyAxMC4wMzU0IDE5LjI0OSA5Ljg5MTU1IDE5LjE0MzggOS43MzQ1NkMxOC45MDM2IDkuMzc2MTkgMTguNzM2OSA4Ljk3MzczIDE4LjY1MzMgOC41NTA0OEMxOC42MTY3IDguMzY1MDUgMTguNjAxNyA4LjE3NjU4IDE4LjU4MTIgNy45MTgzNkwxOC41NzgxIDcuODgwMTJDMTguNTE1NCA3LjA5MzQ4IDE4LjQ4OTIgNi44NDM2NyAxOC40MjA4IDYuNjUwMTZDMTguMjQ0IDYuMTQ5NjYgMTcuODUwMyA1Ljc1NTk3IDE3LjM0OTggNS41NzkxOUMxNy4xNTYzIDUuNTEwODQgMTYuOTA2NSA1LjQ4NDY1IDE2LjExOTkgNS40MjE4N0MxNi4xMDcgNS40MjA4NCAxNi4wOTQyIDUuNDE5ODMgMTYuMDgxNiA1LjQxODgzQzE1LjgyMzQgNS4zOTgyNyAxNS42MzQ5IDUuMzgzMjcgMTUuNDQ5NSA1LjM0NjY2QzE1LjAyNjMgNS4yNjMxIDE0LjYyMzggNS4wOTYzOSAxNC4yNjU0IDQuODU2MkMxNC4xMDg0IDQuNzUwOTcgMTMuOTY0NiA0LjYyODMgMTMuNzY3NCA0LjQ2MDI1QzEzLjc1NzggNC40NTIwNyAxMy43NDgxIDQuNDQzNzcgMTMuNzM4MiA0LjQzNTM3QzEzLjEzNzYgMy45MjM1MiAxMi45NDI0IDMuNzY1MzkgMTIuNzU3MyAzLjY3NjlaTTE2LjA0NDMgOC45NTkxM0MxNi4zMzgzIDkuMjUzMDQgMTYuMzM4MyA5LjcyOTU3IDE2LjA0NDMgMTAuMDIzNUwxMS4wMjcgMTUuMDQwOUMxMC43MzMgMTUuMzM0OCAxMC4yNTY1IDE1LjMzNDggOS45NjI2MSAxNS4wNDA5TDcuOTU1NjUgMTMuMDMzOUM3LjY2MTc0IDEyLjc0IDcuNjYxNzQgMTIuMjYzNSA3Ljk1NTY1IDExLjk2OTZDOC4yNDk1NyAxMS42NzU3IDguNzI2MDkgMTEuNjc1NyA5LjAyIDExLjk2OTZMMTAuNDk0OCAxMy40NDQzTDE0Ljk4IDguOTU5MTNDMTUuMjczOSA4LjY2NTIyIDE1Ljc1MDQgOC42NjUyMiAxNi4wNDQzIDguOTU5MTNaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
 */
export const VerifiedCheck:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M10.5936 2.31883C11.483 1.89372 12.517 1.89372 13.4064 2.31883C13.7928 2.50351 14.1468 2.80551 14.6371 3.22367C14.6625 3.24538 14.6883 3.2674 14.7146 3.28973C14.9526 3.49262 15.0276 3.555 15.1035 3.60585C15.2965 3.73519 15.5132 3.82495 15.7411 3.86995C15.8307 3.88764 15.9278 3.89654 16.2396 3.92143C16.2739 3.92417 16.3078 3.92685 16.3411 3.92949C16.9834 3.98046 17.4473 4.01727 17.8511 4.15991C18.7807 4.48822 19.5118 5.21935 19.8401 6.14885C19.9827 6.55267 20.0195 7.01656 20.0705 7.6589C20.0732 7.69224 20.0758 7.72607 20.0786 7.76039C20.1035 8.0722 20.1124 8.16933 20.1301 8.25894C20.175 8.48684 20.2648 8.70355 20.3941 8.89652C20.445 8.97239 20.5074 9.04737 20.7103 9.28545C20.7326 9.31166 20.7546 9.33748 20.7763 9.36293C21.1945 9.85316 21.4965 10.2072 21.6812 10.5936C22.1063 11.483 22.1063 12.517 21.6812 13.4064C21.4965 13.7928 21.1945 14.1468 20.7764 14.6371C20.7546 14.6625 20.7326 14.6883 20.7103 14.7146C20.5074 14.9526 20.445 15.0276 20.3941 15.1035C20.2648 15.2965 20.175 15.5132 20.1301 15.7411C20.1124 15.8307 20.1035 15.9278 20.0786 16.2396C20.0758 16.2739 20.0732 16.3078 20.0705 16.3411C20.0195 16.9834 19.9827 17.4473 19.8401 17.8511C19.5118 18.7807 18.7807 19.5118 17.8511 19.8401C17.4473 19.9827 16.9834 20.0195 16.3411 20.0705C16.3078 20.0732 16.2739 20.0758 16.2396 20.0786C15.9278 20.1035 15.8307 20.1124 15.7411 20.1301C15.5132 20.175 15.2965 20.2648 15.1035 20.3941C15.0276 20.445 14.9526 20.5074 14.7146 20.7103C14.6883 20.7326 14.6625 20.7546 14.6371 20.7763C14.1468 21.1945 13.7928 21.4965 13.4064 21.6812C12.517 22.1063 11.483 22.1063 10.5936 21.6812C10.2072 21.4965 9.85315 21.1945 9.3629 20.7763C9.33746 20.7546 9.31165 20.7326 9.28545 20.7103C9.04736 20.5074 8.97239 20.445 8.89652 20.3941C8.70355 20.2648 8.48684 20.175 8.25894 20.1301C8.16933 20.1124 8.0722 20.1035 7.76039 20.0786C7.72607 20.0758 7.69225 20.0732 7.6589 20.0705C7.01656 20.0195 6.55267 19.9827 6.14885 19.8401C5.21935 19.5118 4.48822 18.7807 4.15991 17.8511C4.01727 17.4473 3.98046 16.9834 3.92949 16.3411C3.92685 16.3078 3.92417 16.2739 3.92143 16.2396C3.89654 15.9278 3.88764 15.8307 3.86995 15.7411C3.82495 15.5132 3.73519 15.2965 3.60585 15.1035C3.555 15.0276 3.49262 14.9526 3.28973 14.7146C3.2674 14.6884 3.24538 14.6625 3.22368 14.6371C2.80551 14.1468 2.50351 13.7928 2.31883 13.4064C1.89372 12.517 1.89372 11.483 2.31883 10.5936C2.50351 10.2072 2.80551 9.85315 3.22367 9.36291C3.24537 9.33747 3.26739 9.31165 3.28973 9.28545C3.49262 9.04736 3.555 8.97239 3.60585 8.89652C3.73519 8.70355 3.82495 8.48684 3.86995 8.25894C3.88764 8.16933 3.89654 8.0722 3.92143 7.76039C3.92417 7.72607 3.92685 7.69225 3.92949 7.6589C3.98046 7.01657 4.01727 6.55267 4.15991 6.14885C4.48822 5.21935 5.21935 4.48822 6.14885 4.15991C6.55267 4.01727 7.01657 3.98046 7.65891 3.92949C7.69225 3.92685 7.72607 3.92417 7.76039 3.92143C8.0722 3.89654 8.16933 3.88764 8.25894 3.86995C8.48684 3.82495 8.70355 3.73519 8.89652 3.60585C8.97239 3.555 9.04736 3.49262 9.28545 3.28973C9.31165 3.26739 9.33746 3.24538 9.36291 3.22367C9.85315 2.80551 10.2072 2.50351 10.5936 2.31883ZM12.7573 3.6769C12.2784 3.44799 11.7216 3.44799 11.2427 3.6769C11.0576 3.76539 10.8624 3.92352 10.2618 4.43537C10.2519 4.44378 10.2422 4.45207 10.2326 4.46026C10.0354 4.6283 9.89156 4.75097 9.73456 4.8562C9.37619 5.09639 8.97373 5.2631 8.55048 5.34666C8.36505 5.38327 8.17657 5.39827 7.91837 5.41883C7.90579 5.41983 7.89304 5.42084 7.88012 5.42187C7.09348 5.48465 6.84367 5.51084 6.65016 5.57919C6.14966 5.75597 5.75597 6.14966 5.57919 6.65016C5.51084 6.84367 5.48465 7.09348 5.42187 7.88012C5.42084 7.89304 5.41983 7.90579 5.41883 7.91837C5.39827 8.17657 5.38327 8.36505 5.34666 8.55048C5.2631 8.97373 5.09639 9.37619 4.8562 9.73456C4.75097 9.89156 4.6283 10.0354 4.46025 10.2326C4.45207 10.2422 4.44377 10.2519 4.43537 10.2618C3.92352 10.8624 3.76539 11.0576 3.6769 11.2427C3.44799 11.7216 3.44799 12.2784 3.6769 12.7573C3.76539 12.9424 3.92352 13.1376 4.43537 13.7382C4.44378 13.7481 4.45207 13.7578 4.46026 13.7674C4.6283 13.9646 4.75097 14.1084 4.8562 14.2654C5.09639 14.6238 5.2631 15.0263 5.34666 15.4495C5.38327 15.6349 5.39827 15.8234 5.41883 16.0816C5.41983 16.0942 5.42084 16.107 5.42187 16.1199C5.48465 16.9065 5.51084 17.1563 5.57919 17.3498C5.75597 17.8503 6.14966 18.244 6.65016 18.4208C6.84367 18.4892 7.09348 18.5154 7.88012 18.5781L7.91836 18.5812C8.17658 18.6017 8.36506 18.6167 8.55048 18.6533C8.97373 18.7369 9.37619 18.9036 9.73456 19.1438C9.89156 19.249 10.0354 19.3717 10.2326 19.5397L10.2618 19.5646C10.8624 20.0765 11.0576 20.2346 11.2427 20.3231C11.7216 20.552 12.2784 20.552 12.7573 20.3231C12.9424 20.2346 13.1376 20.0765 13.7382 19.5646L13.7675 19.5397C13.9646 19.3717 14.1084 19.249 14.2654 19.1438C14.6238 18.9036 15.0263 18.7369 15.4495 18.6533C15.6349 18.6167 15.8234 18.6017 16.0816 18.5812L16.1199 18.5781C16.9065 18.5154 17.1563 18.4892 17.3498 18.4208C17.8503 18.244 18.244 17.8503 18.4208 17.3498C18.4892 17.1563 18.5154 16.9065 18.5781 16.1199L18.5812 16.0816C18.6017 15.8234 18.6167 15.6349 18.6533 15.4495C18.7369 15.0263 18.9036 14.6238 19.1438 14.2654C19.249 14.1084 19.3717 13.9646 19.5397 13.7675L19.5646 13.7382C20.0765 13.1376 20.2346 12.9424 20.3231 12.7573C20.552 12.2784 20.552 11.7216 20.3231 11.2427C20.2346 11.0576 20.0765 10.8624 19.5646 10.2618L19.5397 10.2325C19.3717 10.0354 19.249 9.89155 19.1438 9.73456C18.9036 9.37619 18.7369 8.97373 18.6533 8.55048C18.6167 8.36505 18.6017 8.17658 18.5812 7.91836L18.5781 7.88012C18.5154 7.09348 18.4892 6.84367 18.4208 6.65016C18.244 6.14966 17.8503 5.75597 17.3498 5.57919C17.1563 5.51084 16.9065 5.48465 16.1199 5.42187C16.107 5.42084 16.0942 5.41983 16.0816 5.41883C15.8234 5.39827 15.6349 5.38327 15.4495 5.34666C15.0263 5.2631 14.6238 5.09639 14.2654 4.8562C14.1084 4.75097 13.9646 4.6283 13.7674 4.46025C13.7578 4.45207 13.7481 4.44377 13.7382 4.43537C13.1376 3.92352 12.9424 3.76539 12.7573 3.6769ZM16.0443 8.95913C16.3383 9.25304 16.3383 9.72957 16.0443 10.0235L11.027 15.0409C10.733 15.3348 10.2565 15.3348 9.96261 15.0409L7.95565 13.0339C7.66174 12.74 7.66174 12.2635 7.95565 11.9696C8.24957 11.6757 8.72609 11.6757 9.02 11.9696L10.4948 13.4443L14.98 8.95913C15.2739 8.66522 15.7504 8.66522 16.0443 8.95913Z" fill="currentColor"/>
    </IconBase>
))

VerifiedCheck.displayName = "VerifiedCheck"
