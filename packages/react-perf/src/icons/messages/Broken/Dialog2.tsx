/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMC44NjkzIDIxLjUxMDJMMTEuNTE0NyAyMS44OTIyTDEwLjg2OTMgMjEuNTEwMlpNMTEuMTI4OCAyMS4wNzE5TDEwLjQ4MzMgMjAuNjg5OUwxMS4xMjg4IDIxLjA3MTlaTTguODcxMjEgMjEuMDcxOUw5LjUxNjYzIDIwLjY4OTlMOS41MTY2MiAyMC42ODk5TDguODcxMjEgMjEuMDcxOVpNOS4xMzA2NCAyMS41MTAyTDguNDg1MjMgMjEuODkyMkw5LjEzMDY0IDIxLjUxMDJaTTEuMjUgMTIuOEMxLjI1IDEzLjIxNDIgMS41ODU3OSAxMy41NSAyIDEzLjU1QzIuNDE0MjEgMTMuNTUgMi43NSAxMy4yMTQyIDIuNzUgMTIuOEgxLjI1Wk0yLjk5NzM5IDE2Ljg0MzhDMi44Mzg4OCAxNi40NjExIDIuNDAwMTUgMTYuMjc5NCAyLjAxNzQ3IDE2LjQzNzlDMS42MzQ3OSAxNi41OTY0IDEuNDUzMDYgMTcuMDM1MSAxLjYxMTU3IDE3LjQxNzhMMi45OTczOSAxNi44NDM4Wk02LjI4OTMxIDE5LjU4NUw2LjMxMzI4IDE4LjgzNTRMNi4yODkzMSAxOS41ODVaTTQuNDY5MjcgMTkuMjk1Nkw0LjE4MjI1IDE5Ljk4ODVINC4xODIyNUw0LjQ2OTI3IDE5LjI5NTZaTTE3LjY5NTUgMTcuMTMwOEwxOC4zODg0IDE3LjQxNzhMMTguMzg4NCAxNy40MTc4TDE3LjY5NTUgMTcuMTMwOFpNMTMuNzEwNyAxOS41ODVMMTMuNjg2NyAxOC44MzU0TDEzLjcxMDcgMTkuNTg1Wk0xNS41MzA3IDE5LjI5NTZMMTUuODE3NyAxOS45ODg1TDE1LjUzMDcgMTkuMjk1NlpNMy45MTAwMSA2LjU4OTQ0TDMuNTE4MTMgNS45NDk5NlY1Ljk0OTk2TDMuOTEwMDEgNi41ODk0NFpNMi41ODk0NCA3LjkxMDAxTDEuOTQ5OTYgNy41MTgxNEgxLjk0OTk2TDIuNTg5NDQgNy45MTAwMVpNNy45MTYzNyAxOS44MjIzTDcuNTM0NTMgMjAuNDY3OUg3LjUzNDUzTDcuOTE2MzcgMTkuODIyM1pNMTQuODQ4NCA2LjkxMzkzQzE1LjI1NDEgNi45OTc2NSAxNS42NTA4IDYuNzM2NjUgMTUuNzM0NSA2LjMzMDk5QzE1LjgxODIgNS45MjUzMiAxNS41NTcyIDUuNTI4NiAxNS4xNTE2IDUuNDQ0ODlMMTQuODQ4NCA2LjkxMzkzWk0xOC41NTUxIDguODQ4NDJDMTguNDcxNCA4LjQ0Mjc1IDE4LjA3NDcgOC4xODE3NiAxNy42NjkgOC4yNjU0OEMxNy4yNjMzIDguMzQ5MTkgMTcuMDAyNCA4Ljc0NTkxIDE3LjA4NjEgOS4xNTE1OEwxOC41NTUxIDguODQ4NDJaTTExLjUxNDcgMjEuODkyMkwxMS43NzQyIDIxLjQ1MzlMMTAuNDgzMyAyMC42ODk5TDEwLjIyMzkgMjEuMTI4MkwxMS41MTQ3IDIxLjg5MjJaTTguMjI1NzkgMjEuNDUzOUw4LjQ4NTIzIDIxLjg5MjJMOS43NzYwNiAyMS4xMjgyTDkuNTE2NjMgMjAuNjg5OUw4LjIyNTc5IDIxLjQ1MzlaTTEwLjIyMzkgMjEuMTI4MkMxMC4xNzg1IDIxLjIwNDkgMTAuMDk5MiAyMS4yNSA5Ljk5OTk4IDIxLjI1QzkuOTAwNzQgMjEuMjUgOS44MjE0NyAyMS4yMDQ5IDkuNzc2MDYgMjEuMTI4Mkw4LjQ4NTIzIDIxLjg5MjJDOS4xNjIxNyAyMy4wMzU5IDEwLjgzNzggMjMuMDM1OSAxMS41MTQ3IDIxLjg5MjJMMTAuMjIzOSAyMS4xMjgyWk04LjggNi43NUgxMS4yVjUuMjVIOC44VjYuNzVaTTE3LjI1IDEyLjhWMTMuNkgxOC43NVYxMi44SDE3LjI1Wk02LjMxMzI4IDE4LjgzNTRDNS41MjEwMiAxOC44MSA1LjA5MDQ2IDE4Ljc0MTEgNC43NTYyOCAxOC42MDI3TDQuMTgyMjUgMTkuOTg4NUM0Ljc3OTEyIDIwLjIzNTcgNS40Mzc0NCAyMC4zMDgxIDYuMjY1MzMgMjAuMzM0Nkw2LjMxMzI4IDE4LjgzNTRaTTEuNjExNTcgMTcuNDE3OEMyLjA5MzY3IDE4LjU4MTcgMy4wMTgzNyAxOS41MDY0IDQuMTgyMjUgMTkuOTg4NUw0Ljc1NjI4IDE4LjYwMjdDMy45NTk5NCAxOC4yNzI4IDMuMzI3MjUgMTcuNjQwMSAyLjk5NzM5IDE2Ljg0MzhMMS42MTE1NyAxNy40MTc4Wk0xNy4yNSAxMy42QzE3LjI1IDE0LjU0MjIgMTcuMjQ5NiAxNS4yMTEyIDE3LjIxMzcgMTUuNzM3NkMxNy4xNzgyIDE2LjI1NzMgMTcuMTEwNyAxNi41ODI4IDE3LjAwMjYgMTYuODQzOEwxOC4zODg0IDE3LjQxNzhDMTguNTg0OCAxNi45NDM2IDE4LjY2OTUgMTYuNDM1NyAxOC43MTAyIDE1LjgzOTdDMTguNzUwNCAxNS4yNTA0IDE4Ljc1IDE0LjUyMTcgMTguNzUgMTMuNkgxNy4yNVpNMTMuNzM0NiAyMC4zMzQ2QzE0LjU2MjUgMjAuMzA4MSAxNS4yMjA5IDIwLjIzNTcgMTUuODE3NyAxOS45ODg1TDE1LjI0MzcgMTguNjAyN0MxNC45MDk1IDE4Ljc0MTEgMTQuNDc5IDE4LjgxIDEzLjY4NjcgMTguODM1NEwxMy43MzQ2IDIwLjMzNDZaTTE3LjAwMjYgMTYuODQzOEMxNi42NzI4IDE3LjY0MDEgMTYuMDQwMSAxOC4yNzI4IDE1LjI0MzcgMTguNjAyN0wxNS44MTc3IDE5Ljk4ODVDMTYuOTgxNiAxOS41MDY0IDE3LjkwNjMgMTguNTgxNyAxOC4zODg0IDE3LjQxNzhMMTcuMDAyNiAxNi44NDM4Wk04LjggNS4yNUM3LjUwNTE1IDUuMjUgNi40ODEzNSA1LjI0OTIxIDUuNjYyNjkgNS4zMjcwNUM0LjgzMjg3IDUuNDA1OTUgNC4xMzY3MiA1LjU3MDg5IDMuNTE4MTMgNS45NDk5Nkw0LjMwMTg4IDcuMjI4OTJDNC42NDUxNyA3LjAxODU1IDUuMDg0NjUgNi44ODg3NyA1LjgwNDY3IDYuODIwMzFDNi41MzU4NSA2Ljc1MDc5IDcuNDc2MTEgNi43NSA4LjggNi43NVY1LjI1Wk0yLjc1IDEyLjhDMi43NSAxMS40NzYxIDIuNzUwNzkgMTAuNTM1OSAyLjgyMDMxIDkuODA0NjhDMi44ODg3NyA5LjA4NDY2IDMuMDE4NTUgOC42NDUxOCAzLjIyODkyIDguMzAxODlMMS45NDk5NiA3LjUxODE0QzEuNTcwODkgOC4xMzY3MyAxLjQwNTk1IDguODMyODggMS4zMjcwNSA5LjY2MjdDMS4yNDkyMSAxMC40ODE0IDEuMjUgMTEuNTA1MiAxLjI1IDEyLjhIMi43NVpNMy41MTgxMyA1Ljk0OTk2QzIuODc4OTkgNi4zNDE2MyAyLjM0MTYyIDYuODc5IDEuOTQ5OTYgNy41MTgxNEwzLjIyODkyIDguMzAxODlDMy40OTY5IDcuODY0NTggMy44NjQ1OCA3LjQ5NjkgNC4zMDE4OCA3LjIyODkyTDMuNTE4MTMgNS45NDk5NlpNOS41MTY2MiAyMC42ODk5QzkuMzE1ODIgMjAuMzUwNiA5LjEzOTY5IDIwLjA1MTYgOC45Njg4OCAxOS44MTY0QzguNzg5MTcgMTkuNTY5IDguNTgzMjcgMTkuMzQ1NCA4LjI5ODIyIDE5LjE3NjhMNy41MzQ1MyAyMC40Njc5QzcuNTgwNjQgMjAuNDk1MSA3LjY0NDI3IDIwLjU0NTEgNy43NTUyNCAyMC42OTc5QzcuODc1MTEgMjAuODYzIDguMDEwODIgMjEuMDkwNyA4LjIyNTggMjEuNDUzOUw5LjUxNjYyIDIwLjY4OTlaTTYuMjY1MzMgMjAuMzM0NkM2LjcxMDc4IDIwLjM0ODkgNi45OTU1MiAyMC4zNTg3IDcuMjExODIgMjAuMzg1MUM3LjQxNjMxIDIwLjQxIDcuNDkzMDUgMjAuNDQzMyA3LjUzNDUzIDIwLjQ2NzlMOC4yOTgyMiAxOS4xNzY4QzguMDA4NTMgMTkuMDA1NSA3LjcwMzcxIDE4LjkzMzkgNy4zOTM0NCAxOC44OTYxQzcuMDk0OTggMTguODU5NyA2LjczMTc3IDE4Ljg0ODggNi4zMTMyOCAxOC44MzU0TDYuMjY1MzMgMjAuMzM0NlpNMTEuNzc0MiAyMS40NTM5QzExLjk4OTEgMjEuMDkwNyAxMi4xMjQ5IDIwLjg2MyAxMi4yNDQ3IDIwLjY5NzlDMTIuMzU1NyAyMC41NDUxIDEyLjQxOTMgMjAuNDk1MSAxMi40NjU0IDIwLjQ2NzlMMTEuNzAxOCAxOS4xNzY4QzExLjQxNjcgMTkuMzQ1NCAxMS4yMTA4IDE5LjU2OSAxMS4wMzExIDE5LjgxNjRDMTAuODYwMyAyMC4wNTE2IDEwLjY4NDEgMjAuMzUwNiAxMC40ODMzIDIwLjY4OTlMMTEuNzc0MiAyMS40NTM5Wk0xMy42ODY3IDE4LjgzNTRDMTMuMjY4MiAxOC44NDg4IDEyLjkwNSAxOC44NTk3IDEyLjYwNjUgMTguODk2MUMxMi4yOTYzIDE4LjkzMzkgMTEuOTkxNCAxOS4wMDU1IDExLjcwMTggMTkuMTc2OEwxMi40NjU0IDIwLjQ2NzlDMTIuNTA2OSAyMC40NDMzIDEyLjU4MzcgMjAuNDEgMTIuNzg4MSAyMC4zODUxQzEzLjAwNDQgMjAuMzU4NyAxMy4yODkyIDIwLjM0ODkgMTMuNzM0NiAyMC4zMzQ2TDEzLjY4NjcgMTguODM1NFpNMTEuMiA2Ljc1QzEyLjk5NzggNi43NSAxNC4wNzI3IDYuNzUzODYgMTQuODQ4NCA2LjkxMzkzTDE1LjE1MTYgNS40NDQ4OUMxNC4xODg1IDUuMjQ2MTQgMTIuOTI1MyA1LjI1IDExLjIgNS4yNVY2Ljc1Wk0xOC43NSAxMi44QzE4Ljc1IDExLjA3NDcgMTguNzUzOSA5LjgxMTQ5IDE4LjU1NTEgOC44NDg0MkwxNy4wODYxIDkuMTUxNThDMTcuMjQ2MSA5LjkyNzI3IDE3LjI1IDExLjAwMjIgMTcuMjUgMTIuOEgxOC43NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTcuMDMzMiA2QzcuMDg0ODEgNS4wMDc4NyA3LjIxNjUgNC4zMzkwMiA3LjU1MjU1IDMuNzkwNjRDNy44NjE3NiAzLjI4NjA1IDguMjg1OTkgMi44NjE4MSA4Ljc5MDU4IDIuNTUyNkM5LjY5MjM0IDIgMTAuOTE5OSAyIDEzLjM3NDkgMkgxNS42MjQ5QzE3LjE1MyAyIDE4LjIwNTYgMiAxOSAyLjEzMzI1TTE4IDE0LjczNTJDMTguNzQ3NyAxNC43MTA0IDE5LjI1MjcgMTQuNjQzNyAxOS42ODUgMTQuNDY0NkMyMC42MDM5IDE0LjA4NCAyMS4zMzM5IDEzLjM1NCAyMS43MTQ1IDEyLjQzNTFDMjEuOTk5OSAxMS43NDYgMjEuOTk5OSAxMC44NzIzIDIxLjk5OTkgOS4xMjUwM1Y4LjM3NTAzQzIxLjk5OTkgNi44NDY5NSAyMS45OTk5IDUuNzk0NDIgMjEuODY2NyA1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTYuNTA5MjggMTNINi41MTgyOE0xMCAxM0gxMC4wMDlNMTMuNDkxIDEzSDEzLjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIyIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
 */
export const Dialog2:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path d="M10.8693 21.5102L11.5147 21.8922L10.8693 21.5102ZM11.1288 21.0719L10.4833 20.6899L11.1288 21.0719ZM8.87121 21.0719L9.51663 20.6899L9.51662 20.6899L8.87121 21.0719ZM9.13064 21.5102L8.48523 21.8922L9.13064 21.5102ZM1.25 12.8C1.25 13.2142 1.58579 13.55 2 13.55C2.41421 13.55 2.75 13.2142 2.75 12.8H1.25ZM2.99739 16.8438C2.83888 16.4611 2.40015 16.2794 2.01747 16.4379C1.63479 16.5964 1.45306 17.0351 1.61157 17.4178L2.99739 16.8438ZM6.28931 19.585L6.31328 18.8354L6.28931 19.585ZM4.46927 19.2956L4.18225 19.9885H4.18225L4.46927 19.2956ZM17.6955 17.1308L18.3884 17.4178L18.3884 17.4178L17.6955 17.1308ZM13.7107 19.585L13.6867 18.8354L13.7107 19.585ZM15.5307 19.2956L15.8177 19.9885L15.5307 19.2956ZM3.91001 6.58944L3.51813 5.94996V5.94996L3.91001 6.58944ZM2.58944 7.91001L1.94996 7.51814H1.94996L2.58944 7.91001ZM7.91637 19.8223L7.53453 20.4679H7.53453L7.91637 19.8223ZM14.8484 6.91393C15.2541 6.99765 15.6508 6.73665 15.7345 6.33099C15.8182 5.92532 15.5572 5.5286 15.1516 5.44489L14.8484 6.91393ZM18.5551 8.84842C18.4714 8.44275 18.0747 8.18176 17.669 8.26548C17.2633 8.34919 17.0024 8.74591 17.0861 9.15158L18.5551 8.84842ZM11.5147 21.8922L11.7742 21.4539L10.4833 20.6899L10.2239 21.1282L11.5147 21.8922ZM8.22579 21.4539L8.48523 21.8922L9.77606 21.1282L9.51663 20.6899L8.22579 21.4539ZM10.2239 21.1282C10.1785 21.2049 10.0992 21.25 9.99998 21.25C9.90074 21.25 9.82147 21.2049 9.77606 21.1282L8.48523 21.8922C9.16217 23.0359 10.8378 23.0359 11.5147 21.8922L10.2239 21.1282ZM8.8 6.75H11.2V5.25H8.8V6.75ZM17.25 12.8V13.6H18.75V12.8H17.25ZM6.31328 18.8354C5.52102 18.81 5.09046 18.7411 4.75628 18.6027L4.18225 19.9885C4.77912 20.2357 5.43744 20.3081 6.26533 20.3346L6.31328 18.8354ZM1.61157 17.4178C2.09367 18.5817 3.01837 19.5064 4.18225 19.9885L4.75628 18.6027C3.95994 18.2728 3.32725 17.6401 2.99739 16.8438L1.61157 17.4178ZM17.25 13.6C17.25 14.5422 17.2496 15.2112 17.2137 15.7376C17.1782 16.2573 17.1107 16.5828 17.0026 16.8438L18.3884 17.4178C18.5848 16.9436 18.6695 16.4357 18.7102 15.8397C18.7504 15.2504 18.75 14.5217 18.75 13.6H17.25ZM13.7346 20.3346C14.5625 20.3081 15.2209 20.2357 15.8177 19.9885L15.2437 18.6027C14.9095 18.7411 14.479 18.81 13.6867 18.8354L13.7346 20.3346ZM17.0026 16.8438C16.6728 17.6401 16.0401 18.2728 15.2437 18.6027L15.8177 19.9885C16.9816 19.5064 17.9063 18.5817 18.3884 17.4178L17.0026 16.8438ZM8.8 5.25C7.50515 5.25 6.48135 5.24921 5.66269 5.32705C4.83287 5.40595 4.13672 5.57089 3.51813 5.94996L4.30188 7.22892C4.64517 7.01855 5.08465 6.88877 5.80467 6.82031C6.53585 6.75079 7.47611 6.75 8.8 6.75V5.25ZM2.75 12.8C2.75 11.4761 2.75079 10.5359 2.82031 9.80468C2.88877 9.08466 3.01855 8.64518 3.22892 8.30189L1.94996 7.51814C1.57089 8.13673 1.40595 8.83288 1.32705 9.6627C1.24921 10.4814 1.25 11.5052 1.25 12.8H2.75ZM3.51813 5.94996C2.87899 6.34163 2.34162 6.879 1.94996 7.51814L3.22892 8.30189C3.4969 7.86458 3.86458 7.4969 4.30188 7.22892L3.51813 5.94996ZM9.51662 20.6899C9.31582 20.3506 9.13969 20.0516 8.96888 19.8164C8.78917 19.569 8.58327 19.3454 8.29822 19.1768L7.53453 20.4679C7.58064 20.4951 7.64427 20.5451 7.75524 20.6979C7.87511 20.863 8.01082 21.0907 8.2258 21.4539L9.51662 20.6899ZM6.26533 20.3346C6.71078 20.3489 6.99552 20.3587 7.21182 20.3851C7.41631 20.41 7.49305 20.4433 7.53453 20.4679L8.29822 19.1768C8.00853 19.0055 7.70371 18.9339 7.39344 18.8961C7.09498 18.8597 6.73177 18.8488 6.31328 18.8354L6.26533 20.3346ZM11.7742 21.4539C11.9891 21.0907 12.1249 20.863 12.2447 20.6979C12.3557 20.5451 12.4193 20.4951 12.4654 20.4679L11.7018 19.1768C11.4167 19.3454 11.2108 19.569 11.0311 19.8164C10.8603 20.0516 10.6841 20.3506 10.4833 20.6899L11.7742 21.4539ZM13.6867 18.8354C13.2682 18.8488 12.905 18.8597 12.6065 18.8961C12.2963 18.9339 11.9914 19.0055 11.7018 19.1768L12.4654 20.4679C12.5069 20.4433 12.5837 20.41 12.7881 20.3851C13.0044 20.3587 13.2892 20.3489 13.7346 20.3346L13.6867 18.8354ZM11.2 6.75C12.9978 6.75 14.0727 6.75386 14.8484 6.91393L15.1516 5.44489C14.1885 5.24614 12.9253 5.25 11.2 5.25V6.75ZM18.75 12.8C18.75 11.0747 18.7539 9.81149 18.5551 8.84842L17.0861 9.15158C17.2461 9.92727 17.25 11.0022 17.25 12.8H18.75Z" fill="currentColor"/>
<path d="M7.0332 6C7.08481 5.00787 7.2165 4.33902 7.55255 3.79064C7.86176 3.28605 8.28599 2.86181 8.79058 2.5526C9.69234 2 10.9199 2 13.3749 2H15.6249C17.153 2 18.2056 2 19 2.13325M18 14.7352C18.7477 14.7104 19.2527 14.6437 19.685 14.4646C20.6039 14.084 21.3339 13.354 21.7145 12.4351C21.9999 11.746 21.9999 10.8723 21.9999 9.12503V8.37503C21.9999 6.84695 21.9999 5.79442 21.8667 5" stroke="currentColor" strokeWidth="1.5" strokeLinecap="round"/>
<path d="M6.50928 13H6.51828M10 13H10.009M13.491 13H13.5" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
    </IconBase>
))

Dialog2.displayName = "Dialog2"