/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNC41IDNIMTFDNi4wMjk0MyAzIDIgNy4wMjk0NCAyIDEyQzIgMTYuOTcwNiA2LjAyOTQ0IDIxIDExIDIxSDE0LjVWMTYuNUgxMC45NDQ0QzguNDU5MTYgMTYuNSA2LjQ0NDQ0IDE0LjQ4NTMgNi40NDQ0NCAxMkM2LjQ0NDQ0IDkuNTE0NzIgOC40NTkxNiA3LjUgMTAuOTQ0NCA3LjVIMTQuNVYzWiIgZmlsbD0iIzFDMjc0QyIvPgo8ZyBvcGFjaXR5PSIwLjQiPgo8cGF0aCBkPSJNMjMuNTAzMSAxNC44NDZDMjMuMzU0MSAxNS42NTA0IDIzLjE1NDEgMTYuMzEzNiAyMi45NSAxNi44NDQzQzIyLjc0NjMgMTcuMzc0MSAyMi41Mzk0IDE3Ljc2OTIgMjIuMzc3NSAxOC4wMzkxQzIyLjI5NjYgMTguMTczOSAyMi4yMjcgMTguMjc3MyAyMi4xNzQ4IDE4LjM1MDRDMjIuMTQ4NyAxOC4zODcgMjIuMTI2OSAxOC40MTYgMjIuMTEwMiAxOC40Mzc2QzIyLjEwMTkgMTguNDQ4NCAyMi4wOTQ4IDE4LjQ1NzMgMjIuMDg5MSAxOC40NjQ0TDIyLjA4MTYgMTguNDczN0wyMi4wNzg2IDE4LjQ3NzNMMjIuMDc3MyAxOC40Nzg4TDIyLjA3NjIgMTguNDgwMkMyMS44MTEgMTguNzk4NCAyMS4zMzgxIDE4Ljg0MTQgMjEuMDE5OSAxOC41NzYyQzIwLjcwMzIgMTguMzEyMyAyMC42NTkxIDE3Ljg0MjcgMjAuOTIgMTcuNTI0NUwyMC45MjM1IDE3LjUyQzIwLjkyODggMTcuNTEzMiAyMC45MzkzIDE3LjQ5OTQgMjAuOTU0MiAxNy40Nzg1QzIwLjk4NCAxNy40MzY4IDIxLjAzMTYgMTcuMzY2OCAyMS4wOTEzIDE3LjI2NzNDMjEuMjEwNiAxNy4wNjgzIDIxLjM3ODggMTYuNzUxIDIxLjU1IDE2LjMwNThDMjEuNzExNSAxNS44ODU5IDIxLjg3NjcgMTUuMzQ5OSAyMi4wMDYgMTQuNjg5NEMyMi4xMzMyIDE0LjAzOTQgMjIuMjI1OCAxMy4yNjg4IDIyLjI0NTkgMTIuMzY5NkMyMi4yNDg2IDEyLjI0ODcgMjIuMjUgMTIuMTI1NSAyMi4yNSAxMkMyMi4yNSAxMS40OTc5IDIyLjIyNzYgMTEuMDMzMyAyMi4xODg3IDEwLjYwNDlDMjIuMDcxOSA5LjMxOTc2IDIxLjgwNjMgOC4zNjA3NiAyMS41NSA3LjY5NDI5QzIxLjM3ODggNy4yNDkwNyAyMS4yMTA2IDYuOTMxNzQgMjEuMDkxMyA2LjczMjhDMjEuMDMxNiA2LjYzMzI4IDIwLjk4NCA2LjU2MzI0IDIwLjk1NDIgNi41MjE1M0MyMC45MzkzIDYuNTAwNjggMjAuOTI4OCA2LjQ4NjkgMjAuOTIzNSA2LjQ4MDA2TDIwLjkyIDYuNDc1NThDMjAuNjU5MSA2LjE1NzQzIDIwLjcwMzIgNS42ODc3NSAyMS4wMTk5IDUuNDIzODVDMjEuMzM4MSA1LjE1ODY4IDIxLjgxMSA1LjIwMTY3IDIyLjA3NjIgNS41MTk4OEwyMi4wNzczIDUuNTIxMjZMMjIuMDc4NiA1LjUyMjhMMjIuMDgxNiA1LjUyNjQxTDIyLjA4OTEgNS41MzU2OEMyMi4wOTQ4IDUuNTQyNzggMjIuMTAxOSA1LjU1MTcxIDIyLjExMDIgNS41NjI1QzIyLjEyNjkgNS41ODQwOCAyMi4xNDg3IDUuNjEzMDcgMjIuMTc0OCA1LjY0OTY0QzIyLjIyNyA1LjcyMjc3IDIyLjI5NjYgNS44MjYxNyAyMi4zNzc1IDUuOTYxMDJDMjIuNTM5NCA2LjIzMDg0IDIyLjc0NjMgNi42MjYgMjIuOTUgNy4xNTU3OEMyMy4yNTEzIDcuOTM4OTYgMjMuNTQzNSA5LjAxMDY3IDIzLjY3NiAxMC4zOTkyQzIzLjcyMzEgMTAuODkyNCAyMy43NSAxMS40MjU2IDIzLjc1IDEyQzIzLjc1IDEyIDIzLjc1IDEyIDIzLjc1IDEyIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMy43NSAxMkMyMy43NSAxMy4wOTU4IDIzLjY1MjEgMTQuMDQxNSAyMy41MDMxIDE0Ljg0NkwyMy43NSAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9nPgo8cGF0aCBvcGFjaXR5PSIwLjciIGQ9Ik0yMC4xNTU4IDguNjM1OUMxOS45NTQ2IDguMjczODIgMTkuNDk4IDguMTQzMzYgMTkuMTM1OSA4LjM0NDUyQzE4Ljc3NjkgOC41NDM5NyAxOC42NDU2IDguOTk0NTUgMTguODM5NSA5LjM1NTEzTDE4Ljg0NDUgOS4zNjUzNkMxOC44NTEzIDkuMzc5NzYgMTguODY0NCA5LjQwODQ4IDE4Ljg4MTkgOS40NTIxMkMxOC45MTY4IDkuNTM5MzMgMTguOTY5MiA5LjY4NjY0IDE5LjAyMzYgOS44OTg5MkMxOS4xMzI0IDEwLjMyMyAxOS4yNTAxIDExLjAxMDMgMTkuMjUwMSAxMi4wMDAxQzE5LjI1MDEgMTIuOTkgMTkuMTMyNCAxMy42NzczIDE5LjAyMzYgMTQuMTAxNEMxOC45NjkyIDE0LjMxMzYgMTguOTE2OCAxNC40NjA5IDE4Ljg4MTkgMTQuNTQ4MkMxOC44NjQ0IDE0LjU5MTggMTguODUxMyAxNC42MjA1IDE4Ljg0NDUgMTQuNjM0OUwxOC44Mzk1IDE0LjY0NTJDMTguNjQ1NiAxNS4wMDU3IDE4Ljc3NjkgMTUuNDU2MyAxOS4xMzU5IDE1LjY1NThDMTkuNDk4IDE1Ljg1NjkgMTkuOTU0NiAxNS43MjY1IDIwLjE1NTggMTUuMzY0NEwxOS41MDAxIDE1LjAwMDFDMjAuMTU1OCAxNS4zNjQ0IDIwLjE1NTggMTUuMzY0NCAyMC4xNTU4IDE1LjM2NDRMMjAuMTU2NSAxNS4zNjMxTDIwLjE1NzMgMTUuMzYxN0wyMC4xNTg5IDE1LjM1ODZMMjAuMTYyOCAxNS4zNTE1TDIwLjE3MjQgMTUuMzMzMUMyMC4xNzk3IDE1LjMxOTEgMjAuMTg4NSAxNS4zMDEzIDIwLjE5ODggMTUuMjc5OEMyMC4yMTkzIDE1LjIzNjggMjAuMjQ1MiAxNS4xNzg4IDIwLjI3NDYgMTUuMTA1MkMyMC4zMzM1IDE0Ljk1ODEgMjAuNDA2MSAxNC43NDkxIDIwLjQ3NjYgMTQuNDczOUMyMC42MTc5IDEzLjkyMyAyMC43NTAxIDEzLjExMDMgMjAuNzUwMSAxMi4wMDAxQzIwLjc1MDEgMTAuODkgMjAuNjE3OSAxMC4wNzczIDIwLjQ3NjYgOS41MjYzNkMyMC40MDYxIDkuMjUxMTMgMjAuMzMzNSA5LjA0MjE5IDIwLjI3NDYgOC44OTUwM0MyMC4yNDUyIDguODIxNDkgMjAuMjE5MyA4Ljc2MzQ5IDIwLjE5ODggOC43MjA0NkMyMC4xODg1IDguNjk4OTUgMjAuMTc5NyA4LjY4MTIgMjAuMTcyNCA4LjY2NzEyTDIwLjE2MjggOC42NDg3N0wyMC4xNTg5IDguNjQxNjZMMjAuMTU3MyA4LjYzODYxTDIwLjE1NjUgOC42MzcyMkMyMC4xNTY1IDguNjM3MjIgMjAuMTU1OCA4LjYzNTkgMTkuNTAwMSA5LjAwMDE0TDIwLjE1NTggOC42MzU5WiIgZmlsbD0iIzFDMjc0QyIvPgo8ZyBvcGFjaXR5PSIwLjUiPgo8cGF0aCBkPSJNMTQuNSA3LjVIMTYuNUMxNy4zMjg0IDcuNSAxOCA2LjgyODQzIDE4IDZWNC41QzE4IDMuNjcxNTcgMTcuMzI4NCAzIDE2LjUgM0gxNC41VjcuNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE0LjUgMTYuNVYyMUgxNi41QzE3LjMyODQgMjEgMTggMjAuMzI4NCAxOCAxOS41VjE4QzE4IDE3LjE3MTYgMTcuMzI4NCAxNi41IDE2LjUgMTYuNUgxNC41WiIgZmlsbD0iIzFDMjc0QyIvPgo8L2c+Cjwvc3ZnPgo=)
 */
export const MagnetWave:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path d="M14.5 3H11C6.02943 3 2 7.02944 2 12C2 16.9706 6.02944 21 11 21H14.5V16.5H10.9444C8.45916 16.5 6.44444 14.4853 6.44444 12C6.44444 9.51472 8.45916 7.5 10.9444 7.5H14.5V3Z" fill="currentColor"/>
<g opacity="0.4">
<path d="M23.5031 14.846C23.3541 15.6504 23.1541 16.3136 22.95 16.8443C22.7463 17.3741 22.5394 17.7692 22.3775 18.0391C22.2966 18.1739 22.227 18.2773 22.1748 18.3504C22.1487 18.387 22.1269 18.416 22.1102 18.4376C22.1019 18.4484 22.0948 18.4573 22.0891 18.4644L22.0816 18.4737L22.0786 18.4773L22.0773 18.4788L22.0762 18.4802C21.811 18.7984 21.3381 18.8414 21.0199 18.5762C20.7032 18.3123 20.6591 17.8427 20.92 17.5245L20.9235 17.52C20.9288 17.5132 20.9393 17.4994 20.9542 17.4785C20.984 17.4368 21.0316 17.3668 21.0913 17.2673C21.2106 17.0683 21.3788 16.751 21.55 16.3058C21.7115 15.8859 21.8767 15.3499 22.006 14.6894C22.1332 14.0394 22.2258 13.2688 22.2459 12.3696C22.2486 12.2487 22.25 12.1255 22.25 12C22.25 11.4979 22.2276 11.0333 22.1887 10.6049C22.0719 9.31976 21.8063 8.36076 21.55 7.69429C21.3788 7.24907 21.2106 6.93174 21.0913 6.7328C21.0316 6.63328 20.984 6.56324 20.9542 6.52153C20.9393 6.50068 20.9288 6.4869 20.9235 6.48006L20.92 6.47558C20.6591 6.15743 20.7032 5.68775 21.0199 5.42385C21.3381 5.15868 21.811 5.20167 22.0762 5.51988L22.0773 5.52126L22.0786 5.5228L22.0816 5.52641L22.0891 5.53568C22.0948 5.54278 22.1019 5.55171 22.1102 5.5625C22.1269 5.58408 22.1487 5.61307 22.1748 5.64964C22.227 5.72277 22.2966 5.82617 22.3775 5.96102C22.5394 6.23084 22.7463 6.626 22.95 7.15578C23.2513 7.93896 23.5435 9.01067 23.676 10.3992C23.7231 10.8924 23.75 11.4256 23.75 12C23.75 12 23.75 12 23.75 12" fill="currentColor"/>
<path d="M23.75 12C23.75 13.0958 23.6521 14.0415 23.5031 14.846L23.75 12Z" fill="currentColor"/>
</g>
<path opacity="0.7" d="M20.1558 8.6359C19.9546 8.27382 19.498 8.14336 19.1359 8.34452C18.7769 8.54397 18.6456 8.99455 18.8395 9.35513L18.8445 9.36536C18.8513 9.37976 18.8644 9.40848 18.8819 9.45212C18.9168 9.53933 18.9692 9.68664 19.0236 9.89892C19.1324 10.323 19.2501 11.0103 19.2501 12.0001C19.2501 12.99 19.1324 13.6773 19.0236 14.1014C18.9692 14.3136 18.9168 14.4609 18.8819 14.5482C18.8644 14.5918 18.8513 14.6205 18.8445 14.6349L18.8395 14.6452C18.6456 15.0057 18.7769 15.4563 19.1359 15.6558C19.498 15.8569 19.9546 15.7265 20.1558 15.3644L19.5001 15.0001C20.1558 15.3644 20.1558 15.3644 20.1558 15.3644L20.1565 15.3631L20.1573 15.3617L20.1589 15.3586L20.1628 15.3515L20.1724 15.3331C20.1797 15.3191 20.1885 15.3013 20.1988 15.2798C20.2193 15.2368 20.2452 15.1788 20.2746 15.1052C20.3335 14.9581 20.4061 14.7491 20.4766 14.4739C20.6179 13.923 20.7501 13.1103 20.7501 12.0001C20.7501 10.89 20.6179 10.0773 20.4766 9.52636C20.4061 9.25113 20.3335 9.04219 20.2746 8.89503C20.2452 8.82149 20.2193 8.76349 20.1988 8.72046C20.1885 8.69895 20.1797 8.6812 20.1724 8.66712L20.1628 8.64877L20.1589 8.64166L20.1573 8.63861L20.1565 8.63722C20.1565 8.63722 20.1558 8.6359 19.5001 9.00014L20.1558 8.6359Z" fill="currentColor"/>
<g opacity="0.5">
<path d="M14.5 7.5H16.5C17.3284 7.5 18 6.82843 18 6V4.5C18 3.67157 17.3284 3 16.5 3H14.5V7.5Z" fill="currentColor"/>
<path d="M14.5 16.5V21H16.5C17.3284 21 18 20.3284 18 19.5V18C18 17.1716 17.3284 16.5 16.5 16.5H14.5Z" fill="currentColor"/>
</g>
    </IconBase>
))

MagnetWave.displayName = "MagnetWave"
