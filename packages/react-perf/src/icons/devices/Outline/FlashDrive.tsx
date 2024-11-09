/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTUuODkyMiAzLjE0MzkzQzE1LjQ2NzUgMy40NzMyNCAxNC45NjU4IDMuOTgwNzUgMTQuMjI3NiA0LjczMDg4TDEzLjE2NzIgNS44MDgzOEMxMy44OTQ1IDYuMzc5MDEgMTQuNzEwOCA3LjE5NTMgMTUuNzE4NiA4LjIwMzE0TDE1Ljc5NjkgOC4yODE0NUMxNi44NDg2IDkuMzMzMDggMTcuNjkxNiAxMC4xNzYxIDE4LjI2NDcgMTAuOTI3MkMxOC4yNjk3IDEwLjkzMzggMTguMjc0OCAxMC45NDA0IDE4LjI3OTggMTAuOTQ3MUwxOS4yOTU2IDkuOTE0ODlDMjAuMDMzNiA5LjE2NDkzIDIwLjUzMzMgOC42NTQ5MiAyMC44NTc3IDguMjIyODdDMjEuMTY4OCA3LjgwODYgMjEuMjQ5OSA3LjU1MzI3IDIxLjI0OTkgNy4zMjI4OUMyMS4yNDk5IDcuMDkyNTEgMjEuMTY4OCA2LjgzNzE4IDIwLjg1NzcgNi40MjI5MUMyMC41MzMzIDUuOTkwODUgMjAuMDMzNiA1LjQ4MDg0IDE5LjI5NTYgNC43MzA4OEMxOC41NTczIDMuOTgwNzUgMTguMDU1NiAzLjQ3MzI0IDE3LjYzMDkgMy4xNDM5M0MxNy4yMjI5IDIuODI3NjUgMTYuOTc3MyAyLjc1IDE2Ljc2MTYgMi43NUMxNi41NDU4IDIuNzUgMTYuMzAwMiAyLjgyNzY1IDE1Ljg5MjIgMy4xNDM5M1pNMTkuMDQ4IDEyLjMwNUwyMC40MDE1IDEwLjkyOTZDMjEuMDkzNCAxMC4yMjY2IDIxLjY2NTMgOS42NDU0OSAyMi4wNTcyIDkuMTIzNTJDMjIuNDY5NCA4LjU3NDU0IDIyLjc0OTkgOC4wMDU3NyAyMi43NDk5IDcuMzIyODlDMjIuNzQ5OSA2LjY0IDIyLjQ2OTQgNi4wNzEyMyAyMi4wNTcyIDUuNTIyMjVDMjEuNjY1MyA1LjAwMDI4IDIxLjA5MzQgNC40MTkyMSAyMC40MDE1IDMuNzE2MTRMMjAuMzI3NSAzLjY0MTAxQzE5LjYzNTkgMi45MzgyIDE5LjA2NCAyLjM1NyAxOC41NSAxLjk1ODQ3QzE4LjAxIDEuNTM5ODIgMTcuNDQ0NiAxLjI1IDE2Ljc2MTYgMS4yNUMxNi4wNzg1IDEuMjUgMTUuNTEzMiAxLjUzOTgyIDE0Ljk3MzIgMS45NTg0OEMxNC40NTkxIDIuMzU3IDEzLjg4NzIgMi45MzgyIDEzLjE5NTYgMy42NDFMMTEuODQ4NiA1LjAwOTcyQzExLjQ2MTQgNC44NTQyNSAxMS4wNTg4IDQuNzY3OTQgMTAuNjI0NiA0Ljc2Nzk0QzkuNzIwNjMgNC43Njc5NCA4Ljk1NDA3IDUuMTQyIDguMTc2MzkgNS43MzUzNUM3LjQyNTMyIDYuMzA4NCA2LjU4MjI2IDcuMTUxNDggNS41MzA2MSA4LjIwMzE1TDQuNjg1MjIgOS4wNDg1NUMzLjYzMzU0IDEwLjEwMDIgMi43OTA0NSAxMC45NDMzIDIuMjE3NCAxMS42OTQzQzEuNjI0MDYgMTIuNDcyIDEuMjUgMTMuMjM4NiAxLjI1IDE0LjE0MjZDMS4yNSAxNS4wNDY1IDEuNjI0MDYgMTUuODEzMSAyLjIxNzQgMTYuNTkwOEMyLjc5MDQ2IDE3LjM0MTkgMy42MzM1NSAxOC4xODQ5IDQuNjg1MjMgMTkuMjM2Nkw0Ljc2MzQ5IDE5LjMxNDhDNS44MTUxMyAyMC4zNjY1IDYuNjU4MTkgMjEuMjA5NiA3LjQwOTI2IDIxLjc4MjZDOC4xODY5MyAyMi4zNzYgOC45NTM0OSAyMi43NSA5Ljg1NzQ4IDIyLjc1QzEwLjc2MTUgMjIuNzUgMTEuNTI4IDIyLjM3NiAxMi4zMDU3IDIxLjc4MjZDMTMuMDU2OCAyMS4yMDk2IDEzLjg5OTggMjAuMzY2NSAxNC45NTE1IDE5LjMxNDhMMTUuNzk2OSAxOC40Njk0QzE2Ljg0ODYgMTcuNDE3OCAxNy42OTE2IDE2LjU3NDcgMTguMjY0NyAxNS44MjM2QzE4Ljg1OCAxNS4wNDYgMTkuMjMyMSAxNC4yNzk0IDE5LjIzMjEgMTMuMzc1NEMxOS4yMzIxIDEyLjk5ODMgMTkuMTY3IDEyLjY0NSAxOS4wNDggMTIuMzA1Wk0xMS41NDM1IDYuNTIwNTJDMTEuMjAwOSA2LjMzODIzIDEwLjkxMTUgNi4yNjc5NCAxMC42MjQ2IDYuMjY3OTRDMTAuMTgwNSA2LjI2Nzk0IDkuNzMwNTEgNi40MzYzMyA5LjA4NjI2IDYuOTI3ODhDOC40MjQ3MSA3LjQzMjYzIDcuNjUyMDIgOC4yMDMwNiA2LjU1MjE0IDkuMzAyOTVMNS43ODUgMTAuMDcwMUM0LjY4NTEyIDExLjE3IDMuOTE0NjggMTEuOTQyNyAzLjQwOTkzIDEyLjYwNDJDMi45MTgzOSAxMy4yNDg1IDIuNzUgMTMuNjk4NCAyLjc1IDE0LjE0MjZDMi43NSAxNC41ODY3IDIuOTE4MzkgMTUuMDM2NyAzLjQwOTkzIDE1LjY4MDlDMy45MTQ2OCAxNi4zNDI1IDQuNjg1MTIgMTcuMTE1MSA1Ljc4NSAxOC4yMTVDNi44ODQ4OSAxOS4zMTQ5IDcuNjU3NTggMjAuMDg1MyA4LjMxOTEzIDIwLjU5MDFDOC45NjMzOCAyMS4wODE2IDkuNDEzMzMgMjEuMjUgOS44NTc0OCAyMS4yNUMxMC4zMDE2IDIxLjI1IDEwLjc1MTYgMjEuMDgxNiAxMS4zOTU4IDIwLjU5MDFDMTIuMDU3NCAyMC4wODUzIDEyLjgzMDEgMTkuMzE0OSAxMy45Mjk5IDE4LjIxNUwxNC42OTcxIDE3LjQ0NzlDMTUuNzk3IDE2LjM0OCAxNi41Njc0IDE1LjU3NTMgMTcuMDcyMiAxNC45MTM4QzE3LjU2MzcgMTQuMjY5NSAxNy43MzIxIDEzLjgxOTYgMTcuNzMyMSAxMy4zNzU0QzE3LjczMjEgMTIuOTMxMyAxNy41NjM3IDEyLjQ4MTMgMTcuMDcyMiAxMS44MzcxQzE2LjU2NzQgMTEuMTc1NSAxNS43OTcgMTAuNDAyOCAxNC42OTcxIDkuMzAyOTVDMTMuNTk3MiA4LjIwMzA2IDEyLjgyNDUgNy40MzI2MyAxMi4xNjMgNi45Mjc4OEMxMi4wMDQxIDYuODA2NjYgMTEuODU3IDYuNzA1MSAxMS43MTkgNi42MjA4NkMxMS42NTczIDYuNTk1OTcgMTEuNTk4MiA2LjU2MjUzIDExLjU0MzUgNi41MjA1MlpNMTcuMTI2NSA0Ljc1MjE2QzE3LjQxOTQgNS4wNDUwNSAxNy40MTk0IDUuNTE5OTIgMTcuMTI2NSA1LjgxMjgyTDE2LjQxOTQgNi41MTk5MkMxNi4xMjY1IDYuODEyODIgMTUuNjUxNiA2LjgxMjgyIDE1LjM1ODcgNi41MTk5MkMxNS4wNjU4IDYuMjI3MDMgMTUuMDY1OCA1Ljc1MjE2IDE1LjM1ODcgNS40NTkyNkwxNi4wNjU4IDQuNzUyMTZDMTYuMzU4NyA0LjQ1OTI2IDE2LjgzMzYgNC40NTkyNiAxNy4xMjY1IDQuNzUyMTZaTTE5LjI0NzggNi44NzM0OEMxOS41NDA3IDcuMTY2MzcgMTkuNTQwNyA3LjY0MTI0IDE5LjI0NzggNy45MzQxNEwxOC41NDA3IDguNjQxMjRDMTguMjQ3OCA4LjkzNDE0IDE3Ljc3MjkgOC45MzQxNCAxNy40OCA4LjY0MTI0QzE3LjE4NzIgOC4zNDgzNSAxNy4xODcyIDcuODczNDggMTcuNDggNy41ODA1OEwxOC4xODcyIDYuODczNDhDMTguNDggNi41ODA1OCAxOC45NTQ5IDYuNTgwNTggMTkuMjQ3OCA2Ljg3MzQ4Wk00LjcyNDM0IDEzLjYxMjJDNS4wMTcyNCAxMy4zMTkzIDUuNDkyMTEgMTMuMzE5MyA1Ljc4NSAxMy42MTIyTDEwLjM4NzggMTguMjE1QzEwLjY4MDcgMTguNTA3OSAxMC42ODA3IDE4Ljk4MjggMTAuMzg3OCAxOS4yNzU3QzEwLjA5NDkgMTkuNTY4NiA5LjYyMDA0IDE5LjU2ODYgOS4zMjcxNSAxOS4yNzU3TDQuNzI0MzQgMTQuNjcyOUM0LjQzMTQ1IDE0LjM4IDQuNDMxNDUgMTMuOTA1MSA0LjcyNDM0IDEzLjYxMjJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
 */
export const FlashDrive:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M15.8922 3.14393C15.4675 3.47324 14.9658 3.98075 14.2276 4.73088L13.1672 5.80838C13.8945 6.37901 14.7108 7.1953 15.7186 8.20314L15.7969 8.28145C16.8486 9.33308 17.6916 10.1761 18.2647 10.9272C18.2697 10.9338 18.2748 10.9404 18.2798 10.9471L19.2956 9.91489C20.0336 9.16493 20.5333 8.65492 20.8577 8.22287C21.1688 7.8086 21.2499 7.55327 21.2499 7.32289C21.2499 7.09251 21.1688 6.83718 20.8577 6.42291C20.5333 5.99085 20.0336 5.48084 19.2956 4.73088C18.5573 3.98075 18.0556 3.47324 17.6309 3.14393C17.2229 2.82765 16.9773 2.75 16.7616 2.75C16.5458 2.75 16.3002 2.82765 15.8922 3.14393ZM19.048 12.305L20.4015 10.9296C21.0934 10.2266 21.6653 9.64549 22.0572 9.12352C22.4694 8.57454 22.7499 8.00577 22.7499 7.32289C22.7499 6.64 22.4694 6.07123 22.0572 5.52225C21.6653 5.00028 21.0934 4.41921 20.4015 3.71614L20.3275 3.64101C19.6359 2.9382 19.064 2.357 18.55 1.95847C18.01 1.53982 17.4446 1.25 16.7616 1.25C16.0785 1.25 15.5132 1.53982 14.9732 1.95848C14.4591 2.357 13.8872 2.9382 13.1956 3.641L11.8486 5.00972C11.4614 4.85425 11.0588 4.76794 10.6246 4.76794C9.72063 4.76794 8.95407 5.142 8.17639 5.73535C7.42532 6.3084 6.58226 7.15148 5.53061 8.20315L4.68522 9.04855C3.63354 10.1002 2.79045 10.9433 2.2174 11.6943C1.62406 12.472 1.25 13.2386 1.25 14.1426C1.25 15.0465 1.62406 15.8131 2.2174 16.5908C2.79046 17.3419 3.63355 18.1849 4.68523 19.2366L4.76349 19.3148C5.81513 20.3665 6.65819 21.2096 7.40926 21.7826C8.18693 22.376 8.95349 22.75 9.85748 22.75C10.7615 22.75 11.528 22.376 12.3057 21.7826C13.0568 21.2096 13.8998 20.3665 14.9515 19.3148L15.7969 18.4694C16.8486 17.4178 17.6916 16.5747 18.2647 15.8236C18.858 15.046 19.2321 14.2794 19.2321 13.3754C19.2321 12.9983 19.167 12.645 19.048 12.305ZM11.5435 6.52052C11.2009 6.33823 10.9115 6.26794 10.6246 6.26794C10.1805 6.26794 9.73051 6.43633 9.08626 6.92788C8.42471 7.43263 7.65202 8.20306 6.55214 9.30295L5.785 10.0701C4.68512 11.17 3.91468 11.9427 3.40993 12.6042C2.91839 13.2485 2.75 13.6984 2.75 14.1426C2.75 14.5867 2.91839 15.0367 3.40993 15.6809C3.91468 16.3425 4.68512 17.1151 5.785 18.215C6.88489 19.3149 7.65758 20.0853 8.31913 20.5901C8.96338 21.0816 9.41333 21.25 9.85748 21.25C10.3016 21.25 10.7516 21.0816 11.3958 20.5901C12.0574 20.0853 12.8301 19.3149 13.9299 18.215L14.6971 17.4479C15.797 16.348 16.5674 15.5753 17.0722 14.9138C17.5637 14.2695 17.7321 13.8196 17.7321 13.3754C17.7321 12.9313 17.5637 12.4813 17.0722 11.8371C16.5674 11.1755 15.797 10.4028 14.6971 9.30295C13.5972 8.20306 12.8245 7.43263 12.163 6.92788C12.0041 6.80666 11.857 6.7051 11.719 6.62086C11.6573 6.59597 11.5982 6.56253 11.5435 6.52052ZM17.1265 4.75216C17.4194 5.04505 17.4194 5.51992 17.1265 5.81282L16.4194 6.51992C16.1265 6.81282 15.6516 6.81282 15.3587 6.51992C15.0658 6.22703 15.0658 5.75216 15.3587 5.45926L16.0658 4.75216C16.3587 4.45926 16.8336 4.45926 17.1265 4.75216ZM19.2478 6.87348C19.5407 7.16637 19.5407 7.64124 19.2478 7.93414L18.5407 8.64124C18.2478 8.93414 17.7729 8.93414 17.48 8.64124C17.1872 8.34835 17.1872 7.87348 17.48 7.58058L18.1872 6.87348C18.48 6.58058 18.9549 6.58058 19.2478 6.87348ZM4.72434 13.6122C5.01724 13.3193 5.49211 13.3193 5.785 13.6122L10.3878 18.215C10.6807 18.5079 10.6807 18.9828 10.3878 19.2757C10.0949 19.5686 9.62004 19.5686 9.32715 19.2757L4.72434 14.6729C4.43145 14.38 4.43145 13.9051 4.72434 13.6122Z" fill="currentColor"/>
    </IconBase>
))

FlashDrive.displayName = "FlashDrive"
