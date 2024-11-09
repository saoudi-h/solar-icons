/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNi43NzUyNiA1LjI1SDE3LjIyNDRDMTguMDQwOCA1LjI0OTk5IDE4LjY5OTIgNS4yNDk5OSAxOS4yMzIzIDUuMjkzNzNDMTkuNzgxMiA1LjMzODc2IDIwLjI2MzMgNS40MzM5MiAyMC43MDkgNS42NjIxNEMyMS40MDkzIDYuMDIwNzQgMjEuOTc5MSA2LjU5MDUzIDIyLjMzNzcgNy4yOTA4NEMyMi41NjU5IDcuNzM2NTUgMjIuNjYxMSA4LjIxODYxIDIyLjcwNjEgOC43Njc1NEMyMi43NDk5IDkuMzAwNjYgMjIuNzQ5OSA5Ljk1OTEgMjIuNzQ5OCAxMC43NzU0VjEwLjgwNzdDMjIuNzQ5OCAxMC44MzYzIDIyLjc0OTkgMTAuODY1MSAyMi43NSAxMC44OTRDMjIuNzUxIDExLjIzMjEgMjIuNzUyIDExLjU5MjEgMjIuNjIxNSAxMS45MTM5QzIyLjUwOTMgMTIuMTkwMiAyMi4zMjg1IDEyLjQzMzMgMjIuMDk2IDEyLjYyMDFDMjEuOTkgMTIuNzA1NCAyMS44NzI1IDEyLjc3MjkgMjEuNzQ5NCAxMi44MjkzQzIxLjc0NjQgMTQuNDQxNiAyMS43MjU4IDE2LjA3MDggMjEuNTgxMSAxNy40NjY0QzIxLjQ5NjIgMTguMjg1NiAyMS4zNjU4IDE5LjA1NDggMjEuMTU5MSAxOS43MTA1QzIwLjk1NTcgMjAuMzU1NyAyMC42NTU0IDIwLjk2NjUgMjAuMTgwMSAyMS4zODlDMTkuMzU2NyAyMi4xMjA5IDE4LjMyMDMgMjIuNDQzNiAxNy4wMjY2IDIyLjU5ODNDMTUuNzU2NyAyMi43NSAxNC4xMjkgMjIuNzUgMTIuMDUxMSAyMi43NUgxMS45NDg2QzkuODcwNzEgMjIuNzUgOC4yNDMwNCAyMi43NSA2Ljk3MzEzIDIyLjU5ODNDNS42Nzk0IDIyLjQ0MzYgNC42NDMwMyAyMi4xMjA5IDMuODE5NiAyMS4zODlDMy4zNDQyNSAyMC45NjY1IDMuMDQzOTUgMjAuMzU1NyAyLjg0MDU5IDE5LjcxMDVDMi42MzM4NiAxOS4wNTQ4IDIuNTAzNTIgMTguMjg1NiAyLjQxODYgMTcuNDY2NEMyLjI3MzkyIDE2LjA3MDggMi4yNTMyOCAxNC40NDE2IDIuMjUwMzQgMTIuODI5M0MyLjEyNzIgMTIuNzcyOSAyLjAwOTc1IDEyLjcwNTQgMS45MDM3IDEyLjYyMDFDMS42NzEyMyAxMi40MzMzIDEuNDkwMzUgMTIuMTkwMiAxLjM3ODI0IDExLjkxMzlDMS4yNDc2NiAxMS41OTIxIDEuMjQ4NyAxMS4yMzIxIDEuMjQ5NjggMTAuODk0QzEuMjQ5NzcgMTAuODY1MSAxLjI0OTg1IDEwLjgzNjMgMS4yNDk4NSAxMC44MDc3TDEuMjQ5ODUgMTAuNzc1NEMxLjI0OTg0IDkuOTU5MDggMS4yNDk4MyA5LjMwMDY1IDEuMjkzNTcgOC43Njc1NEMxLjMzODYxIDguMjE4NjEgMS40MzM3NyA3LjczNjU1IDEuNjYxOTkgNy4yOTA4NEMyLjAyMDU5IDYuNTkwNTMgMi41OTAzOCA2LjAyMDc0IDMuMjkwNjkgNS42NjIxNEMzLjczNjM5IDUuNDMzOTIgNC4yMTg0NiA1LjMzODc2IDQuNzY3MzggNS4yOTM3M0M1LjMwMDUgNS4yNDk5OSA1Ljk1ODkzIDUuMjQ5OTkgNi43NzUyNiA1LjI1Wk0zLjc1MTk0IDEzLjMwODdDMy43NTg3NCAxNC43NDU1IDMuNzg3NjcgMTYuMTI1OSAzLjkxMDYgMTcuMzExOEMzLjk5MDQzIDE4LjA4MTggNC4xMDcyMyAxOC43Mzk0IDQuMjcxMTkgMTkuMjU5NkM0LjQzODUxIDE5Ljc5MDQgNC42MzI0NyAyMC4xMDQ2IDQuODE2MTQgMjAuMjY3OUM1LjMxMDcyIDIwLjcwNzUgNS45OTQwMiAyMC45NzA2IDcuMTUxMTIgMjEuMTA4OUM4LjMyMTYyIDIxLjI0ODcgOS44NTk2MyAyMS4yNSAxMS45OTk4IDIxLjI1QzE0LjE0MDEgMjEuMjUgMTUuNjc4MSAyMS4yNDg3IDE2Ljg0ODYgMjEuMTA4OUMxOC4wMDU3IDIwLjk3MDYgMTguNjg5IDIwLjcwNzUgMTkuMTgzNiAyMC4yNjc5QzE5LjM2NzIgMjAuMTA0NiAxOS41NjEyIDE5Ljc5MDQgMTkuNzI4NSAxOS4yNTk2QzE5Ljg5MjUgMTguNzM5NCAyMC4wMDkzIDE4LjA4MTggMjAuMDg5MSAxNy4zMTE4QzIwLjIxMiAxNi4xMjU5IDIwLjI0MSAxNC43NDU1IDIwLjI0NzggMTMuMzA4N0wxNS4yNDk4IDE0LjgwOFYxNS4xNjE1QzE1LjI0OTggMTUuNjcyNiAxNC45Mzg3IDE2LjEzMjIgMTQuNDY0MSAxNi4zMjIxTDEzLjc2NCAxNi42MDIxQzEyLjYzMTUgMTcuMDU1MSAxMS4zNjgyIDE3LjA1NTEgMTAuMjM1NyAxNi42MDIxTDkuNTM1NjEgMTYuMzIyMUM5LjA2MTA0IDE2LjEzMjMgOC43NDk4NSAxNS42NzI2IDguNzQ5ODUgMTUuMTYxNVYxNC44MDhMMy43NTE5NCAxMy4zMDg3Wk04Ljc0OTg1IDEzLjI0MkwzLjM1NzQyIDExLjYyNDJDMy4xNDIgMTEuNTU5NiAzLjAxNzUxIDExLjUyMTggMi45MjYyNCAxMS40ODczQzIuODcwMyAxMS40NjYxIDIuODQ4MDIgMTEuNDUzNiAyLjg0MjIzIDExLjQ1QzIuODA5ODYgMTEuNDIzNyAyLjc4NDU3IDExLjM4OTcgMi43Njg2OSAxMS4zNTEyQzIuNzY2ODkgMTEuMzQ0NiAyLjc2MTM3IDExLjMxOTcgMi43NTcxNiAxMS4yNkMyLjc1MDI4IDExLjE2MjcgMi43NDk4NSAxMS4wMzI2IDIuNzQ5ODUgMTAuODA3N0MyLjc0OTg1IDkuOTUxNTMgMi43NTA0NCA5LjM1NDc0IDIuNzg4NTUgOC44OTAxOUMyLjgyNTk0IDguNDM0NDUgMi44OTU2NCA4LjE3MjcxIDIuOTk3MTMgNy45NzQ1MUMzLjIxMjI5IDcuNTU0MzIgMy41NTQxNyA3LjIxMjQ1IDMuOTc0MzYgNi45OTcyOUM0LjE3MjU2IDYuODk1NzkgNC40MzQzIDYuODI2MDkgNC44OTAwNCA2Ljc4ODdDNS4zNTQ1OSA2Ljc1MDU5IDUuOTUxMzggNi43NSA2LjgwNzUgNi43NUgxNy4xOTIyQzE4LjA0ODMgNi43NSAxOC42NDUxIDYuNzUwNTkgMTkuMTA5NyA2Ljc4ODdDMTkuNTY1NCA2LjgyNjA5IDE5LjgyNzEgNi44OTU3OSAyMC4wMjUzIDYuOTk3MjlDMjAuNDQ1NSA3LjIxMjQ1IDIwLjc4NzQgNy41NTQzMiAyMS4wMDI2IDcuOTc0NTFDMjEuMTA0MSA4LjE3MjcxIDIxLjE3MzggOC40MzQ0NSAyMS4yMTExIDguODkwMTlDMjEuMjQ5MyA5LjM1NDc0IDIxLjI0OTggOS45NTE1MyAyMS4yNDk4IDEwLjgwNzdDMjEuMjQ5OCAxMS4wMzI2IDIxLjI0OTQgMTEuMTYyNyAyMS4yNDI1IDExLjI2QzIxLjIzODMgMTEuMzE5NyAyMS4yMzI4IDExLjM0NDYgMjEuMjMxIDExLjM1MTJDMjEuMjE1MSAxMS4zODk3IDIxLjE4OTggMTEuNDIzNyAyMS4xNTc1IDExLjQ1QzIxLjE1MTcgMTEuNDUzNiAyMS4xMjk0IDExLjQ2NjEgMjEuMDczNSAxMS40ODczQzIwLjk4MjIgMTEuNTIxOCAyMC44NTc3IDExLjU1OTYgMjAuNjQyMyAxMS42MjQyTDE1LjI0OTggMTMuMjQyVjEzQzE1LjI0OTggMTIuMzA5NiAxNC42OTAyIDExLjc1IDEzLjk5OTggMTEuNzVIOS45OTk4NUM5LjMwOTQ5IDExLjc1IDguNzQ5ODUgMTIuMzA5NiA4Ljc0OTg1IDEzVjEzLjI0MlpNMjEuMTU5MSAxMS40NDg5TDIxLjE1NzUgMTEuNDVMMjEuMTU5MSAxMS40NDg5Wk0yMS4yMzA0IDExLjM1MzFMMjEuMjMxIDExLjM1MTJMMjEuMjMwNCAxMS4zNTMxWk0yLjc2OTI4IDExLjM1MzFMMi43Njg2OSAxMS4zNTEyTDIuNzY5MjggMTEuMzUzMVpNMi44NDA2IDExLjQ0ODlMMi44NDIyMyAxMS40NUwyLjg0MDYgMTEuNDQ4OVpNMTAuMjQ5OCAxMy4yNVYxNC45OTIyTDEwLjc5MjggMTUuMjA5NEMxMS41Njc3IDE1LjUxOTQgMTIuNDMyIDE1LjUxOTQgMTMuMjA2OSAxNS4yMDk0TDEzLjc0OTggMTQuOTkyMlYxMy4yNUgxMC4yNDk4WiIgZmlsbD0iIzFDMjc0RCIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDIuNzVDMTEuMDIxNSAyLjc1IDEwLjE4NzEgMy4zNzUwMyA5Ljg3Nzg4IDQuMjQ5OTNDOS43Mzk4NCA0LjY0MDQ3IDkuMzExMzUgNC44NDUxNyA4LjkyMDgxIDQuNzA3MTNDOC41MzAyOCA0LjU2OTA5IDguMzI1NTggNC4xNDA2IDguNDYzNjIgMy43NTAwN0M4Ljk3ODA2IDIuMjk0NTkgMTAuMzY2MSAxLjI1IDEyIDEuMjVDMTMuNjM0IDEuMjUgMTUuMDIyIDIuMjk0NTkgMTUuNTM2NSAzLjc1MDA3QzE1LjY3NDUgNC4xNDA2IDE1LjQ2OTggNC41NjkwOSAxNS4wNzkzIDQuNzA3MTNDMTQuNjg4NyA0Ljg0NTE3IDE0LjI2MDIgNC42NDA0NyAxNC4xMjIyIDQuMjQ5OTNDMTMuODEzIDMuMzc1MDMgMTIuOTc4NSAyLjc1IDEyIDIuNzVaIiBmaWxsPSIjMUMyNzREIi8+Cjwvc3ZnPgo=)
 */
export const CaseRound:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M6.77526 5.25H17.2244C18.0408 5.24999 18.6992 5.24999 19.2323 5.29373C19.7812 5.33876 20.2633 5.43392 20.709 5.66214C21.4093 6.02074 21.9791 6.59053 22.3377 7.29084C22.5659 7.73655 22.6611 8.21861 22.7061 8.76754C22.7499 9.30066 22.7499 9.9591 22.7498 10.7754V10.8077C22.7498 10.8363 22.7499 10.8651 22.75 10.894C22.751 11.2321 22.752 11.5921 22.6215 11.9139C22.5093 12.1902 22.3285 12.4333 22.096 12.6201C21.99 12.7054 21.8725 12.7729 21.7494 12.8293C21.7464 14.4416 21.7258 16.0708 21.5811 17.4664C21.4962 18.2856 21.3658 19.0548 21.1591 19.7105C20.9557 20.3557 20.6554 20.9665 20.1801 21.389C19.3567 22.1209 18.3203 22.4436 17.0266 22.5983C15.7567 22.75 14.129 22.75 12.0511 22.75H11.9486C9.87071 22.75 8.24304 22.75 6.97313 22.5983C5.6794 22.4436 4.64303 22.1209 3.8196 21.389C3.34425 20.9665 3.04395 20.3557 2.84059 19.7105C2.63386 19.0548 2.50352 18.2856 2.4186 17.4664C2.27392 16.0708 2.25328 14.4416 2.25034 12.8293C2.1272 12.7729 2.00975 12.7054 1.9037 12.6201C1.67123 12.4333 1.49035 12.1902 1.37824 11.9139C1.24766 11.5921 1.2487 11.2321 1.24968 10.894C1.24977 10.8651 1.24985 10.8363 1.24985 10.8077L1.24985 10.7754C1.24984 9.95908 1.24983 9.30065 1.29357 8.76754C1.33861 8.21861 1.43377 7.73655 1.66199 7.29084C2.02059 6.59053 2.59038 6.02074 3.29069 5.66214C3.73639 5.43392 4.21846 5.33876 4.76738 5.29373C5.3005 5.24999 5.95893 5.24999 6.77526 5.25ZM3.75194 13.3087C3.75874 14.7455 3.78767 16.1259 3.9106 17.3118C3.99043 18.0818 4.10723 18.7394 4.27119 19.2596C4.43851 19.7904 4.63247 20.1046 4.81614 20.2679C5.31072 20.7075 5.99402 20.9706 7.15112 21.1089C8.32162 21.2487 9.85963 21.25 11.9998 21.25C14.1401 21.25 15.6781 21.2487 16.8486 21.1089C18.0057 20.9706 18.689 20.7075 19.1836 20.2679C19.3672 20.1046 19.5612 19.7904 19.7285 19.2596C19.8925 18.7394 20.0093 18.0818 20.0891 17.3118C20.212 16.1259 20.241 14.7455 20.2478 13.3087L15.2498 14.808V15.1615C15.2498 15.6726 14.9387 16.1322 14.4641 16.3221L13.764 16.6021C12.6315 17.0551 11.3682 17.0551 10.2357 16.6021L9.53561 16.3221C9.06104 16.1323 8.74985 15.6726 8.74985 15.1615V14.808L3.75194 13.3087ZM8.74985 13.242L3.35742 11.6242C3.142 11.5596 3.01751 11.5218 2.92624 11.4873C2.8703 11.4661 2.84802 11.4536 2.84223 11.45C2.80986 11.4237 2.78457 11.3897 2.76869 11.3512C2.76689 11.3446 2.76137 11.3197 2.75716 11.26C2.75028 11.1627 2.74985 11.0326 2.74985 10.8077C2.74985 9.95153 2.75044 9.35474 2.78855 8.89019C2.82594 8.43445 2.89564 8.17271 2.99713 7.97451C3.21229 7.55432 3.55417 7.21245 3.97436 6.99729C4.17256 6.89579 4.4343 6.82609 4.89004 6.7887C5.35459 6.75059 5.95138 6.75 6.8075 6.75H17.1922C18.0483 6.75 18.6451 6.75059 19.1097 6.7887C19.5654 6.82609 19.8271 6.89579 20.0253 6.99729C20.4455 7.21245 20.7874 7.55432 21.0026 7.97451C21.1041 8.17271 21.1738 8.43445 21.2111 8.89019C21.2493 9.35474 21.2498 9.95153 21.2498 10.8077C21.2498 11.0326 21.2494 11.1627 21.2425 11.26C21.2383 11.3197 21.2328 11.3446 21.231 11.3512C21.2151 11.3897 21.1898 11.4237 21.1575 11.45C21.1517 11.4536 21.1294 11.4661 21.0735 11.4873C20.9822 11.5218 20.8577 11.5596 20.6423 11.6242L15.2498 13.242V13C15.2498 12.3096 14.6902 11.75 13.9998 11.75H9.99985C9.30949 11.75 8.74985 12.3096 8.74985 13V13.242ZM21.1591 11.4489L21.1575 11.45L21.1591 11.4489ZM21.2304 11.3531L21.231 11.3512L21.2304 11.3531ZM2.76928 11.3531L2.76869 11.3512L2.76928 11.3531ZM2.8406 11.4489L2.84223 11.45L2.8406 11.4489ZM10.2498 13.25V14.9922L10.7928 15.2094C11.5677 15.5194 12.432 15.5194 13.2069 15.2094L13.7498 14.9922V13.25H10.2498Z" fill="currentColor"/>
<path fillRule="evenodd" clipRule="evenodd" d="M12 2.75C11.0215 2.75 10.1871 3.37503 9.87788 4.24993C9.73984 4.64047 9.31135 4.84517 8.92081 4.70713C8.53028 4.56909 8.32558 4.1406 8.46362 3.75007C8.97806 2.29459 10.3661 1.25 12 1.25C13.634 1.25 15.022 2.29459 15.5365 3.75007C15.6745 4.1406 15.4698 4.56909 15.0793 4.70713C14.6887 4.84517 14.2602 4.64047 14.1222 4.24993C13.813 3.37503 12.9785 2.75 12 2.75Z" fill="currentColor"/>
    </IconBase>
))

CaseRound.displayName = "CaseRound"
