/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMi43NUMxMS4zNDIzIDIuNzUgMTAuNjk1MSAyLjk2MTY0IDkuMDgwNjIgMy41MTQzTDguNTA3OCAzLjcxMDM3QzYuOTk1MjEgNC4yMjgxNCA1Ljg5MjEgNC42MDYwNSA1LjExNzU5IDQuOTIwNjlDNC43MzEgNS4wNzc3NCA0LjQ1MDkgNS4yMDkzNSA0LjI1NDI5IDUuMzIzNTNDNC4xNTcyMiA1LjM3OTkgNC4wOTAzNCA1LjQyNjQyIDQuMDQ1NjcgNS40NjI3M0M0LjAwNzggNS40OTM1MSAzLjk5MzM2IDUuNTEwOTUgMy45OTEyOSA1LjUxMzQ5QzMuOTg5MzYgNS41MTY2MyAzLjk3NjkzIDUuNTM3NCAzLjk1OTQzIDUuNTg2NTRDMy45Mzk0NCA1LjY0MjY1IDMuOTE3MjkgNS43MjMwOSAzLjg5NTcxIDUuODM1MDZDMy44NTIwNCA2LjA2MTY5IDMuODE4OTQgNi4zNzMwMSAzLjc5NjA4IDYuNzkyOTJDMy43NTAyOCA3LjYzNDExIDMuNzUgOC44MDgzMyAzLjc1IDEwLjQxNjdWMTEuOTkxNEMzLjc1IDE3LjE2NjUgNy42MTk5IDE5LjcxMzUgMTAuMTk4OCAyMC44NEMxMC41NzAzIDIxLjAwMjMgMTAuNzg0OCAyMS4wOTQxIDExLjAyMzYgMjEuMTU1MkMxMS4yNTE3IDIxLjIxMzYgMTEuNTMgMjEuMjUgMTIgMjEuMjVDMTIuNDcgMjEuMjUgMTIuNzQ4MyAyMS4yMTM2IDEyLjk3NjQgMjEuMTU1MkMxMy4yMTUyIDIxLjA5NDEgMTMuNDI5NyAyMS4wMDIzIDEzLjgwMTIgMjAuODRDMTYuMzgwMSAxOS43MTM1IDIwLjI1IDE3LjE2NjUgMjAuMjUgMTEuOTkxNFYxMC40MTY3QzIwLjI1IDguODA4MzMgMjAuMjQ5NyA3LjYzNDExIDIwLjIwMzkgNi43OTI5MkMyMC4xODExIDYuMzczMDEgMjAuMTQ4IDYuMDYxNjkgMjAuMTA0MyA1LjgzNTA2QzIwLjA4MjcgNS43MjMwOSAyMC4wNjA2IDUuNjQyNjUgMjAuMDQwNiA1LjU4NjU0QzIwLjAyMzEgNS41MzczNyAyMC4wMTA2IDUuNTE2NiAyMC4wMDg3IDUuNTEzNDhDMjAuMDA2NiA1LjUxMDkyIDE5Ljk5MjIgNS40OTM0OSAxOS45NTQzIDUuNDYyNzNDMTkuOTA5NyA1LjQyNjQyIDE5Ljg0MjggNS4zNzk5IDE5Ljc0NTcgNS4zMjM1M0MxOS41NDkxIDUuMjA5MzUgMTkuMjY5IDUuMDc3NzQgMTguODgyNCA0LjkyMDY5QzE4LjEwNzkgNC42MDYwNSAxNy4wMDQ4IDQuMjI4MTQgMTUuNDkyMiAzLjcxMDM3TDE0LjkxOTQgMy41MTQzQzEzLjMwNDkgMi45NjE2NCAxMi42NTc3IDIuNzUgMTIgMi43NVpNOC43MjMzOSAyLjA1MTEyQzEwLjE2NzMgMS41NTY1OCAxMS4wNjI1IDEuMjUgMTIgMS4yNUMxMi45Mzc1IDEuMjUgMTMuODMyNyAxLjU1NjU4IDE1LjI3NjYgMi4wNTExMkMxNS4zMTkgMi4wNjU2MyAxNS4zNjE4IDIuMDgwMyAxNS40MDUyIDIuMDk1MTRMMTYuMDA0IDIuMzAwMTNDMTcuNDg1NCAyLjgwNzIgMTguNjI4NiAzLjE5ODUyIDE5LjQ0NyAzLjUzMDk5QzE5Ljg1OTIgMy42OTg0NiAyMC4yMTM2IDMuODYwNjcgMjAuNDk5IDQuMDI2NDFDMjAuNzczNyA0LjE4NTkgMjEuMDQ5MiA0LjM4NDg0IDIxLjIzNjQgNC42NTE1NEMyMS40MjE0IDQuOTE1MTYgMjEuNTE3MSA1LjIzOTI0IDIxLjU3NzIgNS41NTEyMkMyMS42Mzk3IDUuODc1NTYgMjEuNjc3NCA2LjI2NDY0IDIxLjcwMTcgNi43MTEzNkMyMS43NSA3LjU5ODQgMjEuNzUgOC44MTM2MSAyMS43NSAxMC4zODk4VjExLjk5MTRDMjEuNzUgMTguMDkyNCAxNy4xNDIgMjEuMDE3NSAxNC40MDE3IDIyLjIxNDZMMTQuMzc0NiAyMi4yMjY0QzE0LjAzNDggMjIuMzc0OSAxMy43MTU0IDIyLjUxNDQgMTMuMzQ4NCAyMi42MDg0QzEyLjk2MDkgMjIuNzA3NiAxMi41NDkzIDIyLjc1IDEyIDIyLjc1QzExLjQ1MDcgMjIuNzUgMTEuMDM5MSAyMi43MDc2IDEwLjY1MTYgMjIuNjA4NEMxMC4yODQ2IDIyLjUxNDQgOS45NjUyMyAyMi4zNzQ5IDkuNjI1NDMgMjIuMjI2NEw5LjU5ODMzIDIyLjIxNDZDNi44NTgwMyAyMS4wMTc1IDIuMjUgMTguMDkyNCAyLjI1IDExLjk5MTRWMTAuMzg5OUMyLjI1IDguODEzNjUgMi4yNSA3LjU5ODQxIDIuMjk4MyA2LjcxMTM2QzIuMzIyNjIgNi4yNjQ2NCAyLjM2MDMxIDUuODc1NTYgMi40MjI4MSA1LjU1MTIyQzIuNDgyOTMgNS4yMzkyNCAyLjU3ODYgNC45MTUxNiAyLjc2MzYzIDQuNjUxNTRDMi45NTA4MiA0LjM4NDg0IDMuMjI2MzQgNC4xODU5IDMuNTAwOTggNC4wMjY0MUMzLjc4NjM3IDMuODYwNjcgNC4xNDA3OCAzLjY5ODQ2IDQuNTUzMDMgMy41MzA5OUM1LjM3MTQgMy4xOTg1MiA2LjUxNDYyIDIuODA3MiA3Ljk5NTk1IDIuMzAwMTRMOC41OTQ4MyAyLjA5NTE0QzguNjM4MTcgMi4wODAzIDguNjgxMDEgMi4wNjU2MyA4LjcyMzM5IDIuMDUxMTJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
 */
export const ShieldMinimalistic:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M12 2.75C11.3423 2.75 10.6951 2.96164 9.08062 3.5143L8.5078 3.71037C6.99521 4.22814 5.8921 4.60605 5.11759 4.92069C4.731 5.07774 4.4509 5.20935 4.25429 5.32353C4.15722 5.3799 4.09034 5.42642 4.04567 5.46273C4.0078 5.49351 3.99336 5.51095 3.99129 5.51349C3.98936 5.51663 3.97693 5.5374 3.95943 5.58654C3.93944 5.64265 3.91729 5.72309 3.89571 5.83506C3.85204 6.06169 3.81894 6.37301 3.79608 6.79292C3.75028 7.63411 3.75 8.80833 3.75 10.4167V11.9914C3.75 17.1665 7.6199 19.7135 10.1988 20.84C10.5703 21.0023 10.7848 21.0941 11.0236 21.1552C11.2517 21.2136 11.53 21.25 12 21.25C12.47 21.25 12.7483 21.2136 12.9764 21.1552C13.2152 21.0941 13.4297 21.0023 13.8012 20.84C16.3801 19.7135 20.25 17.1665 20.25 11.9914V10.4167C20.25 8.80833 20.2497 7.63411 20.2039 6.79292C20.1811 6.37301 20.148 6.06169 20.1043 5.83506C20.0827 5.72309 20.0606 5.64265 20.0406 5.58654C20.0231 5.53737 20.0106 5.5166 20.0087 5.51348C20.0066 5.51092 19.9922 5.49349 19.9543 5.46273C19.9097 5.42642 19.8428 5.3799 19.7457 5.32353C19.5491 5.20935 19.269 5.07774 18.8824 4.92069C18.1079 4.60605 17.0048 4.22814 15.4922 3.71037L14.9194 3.5143C13.3049 2.96164 12.6577 2.75 12 2.75ZM8.72339 2.05112C10.1673 1.55658 11.0625 1.25 12 1.25C12.9375 1.25 13.8327 1.55658 15.2766 2.05112C15.319 2.06563 15.3618 2.0803 15.4052 2.09514L16.004 2.30013C17.4854 2.8072 18.6286 3.19852 19.447 3.53099C19.8592 3.69846 20.2136 3.86067 20.499 4.02641C20.7737 4.1859 21.0492 4.38484 21.2364 4.65154C21.4214 4.91516 21.5171 5.23924 21.5772 5.55122C21.6397 5.87556 21.6774 6.26464 21.7017 6.71136C21.75 7.5984 21.75 8.81361 21.75 10.3898V11.9914C21.75 18.0924 17.142 21.0175 14.4017 22.2146L14.3746 22.2264C14.0348 22.3749 13.7154 22.5144 13.3484 22.6084C12.9609 22.7076 12.5493 22.75 12 22.75C11.4507 22.75 11.0391 22.7076 10.6516 22.6084C10.2846 22.5144 9.96523 22.3749 9.62543 22.2264L9.59833 22.2146C6.85803 21.0175 2.25 18.0924 2.25 11.9914V10.3899C2.25 8.81365 2.25 7.59841 2.2983 6.71136C2.32262 6.26464 2.36031 5.87556 2.42281 5.55122C2.48293 5.23924 2.5786 4.91516 2.76363 4.65154C2.95082 4.38484 3.22634 4.1859 3.50098 4.02641C3.78637 3.86067 4.14078 3.69846 4.55303 3.53099C5.3714 3.19852 6.51462 2.8072 7.99595 2.30014L8.59483 2.09514C8.63817 2.0803 8.68101 2.06563 8.72339 2.05112Z" fill="currentColor"/>
    </IconBase>
))

ShieldMinimalistic.displayName = "ShieldMinimalistic"
