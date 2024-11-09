/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMC45MjYgMi4zNjAyMUMxMS4yNzk0IDIuNTc2MjYgMTEuMzkwNyAzLjAzNzg5IDExLjE3NDcgMy4zOTEzQzExLjAxNzkgMy42NDc3NSAxMS4wNTcyIDMuOTc4MjEgMTEuMjY5NyA0LjE5MDc1TDExLjM2NzYgNC4yODg2M0MxMS45NTYzIDQuODc3MjkgMTIuMTczMyA1Ljc0MjA2IDExLjkzMjQgNi41Mzg5NEMxMS44MTI2IDYuOTM1NDMgMTEuMzk0IDcuMTU5NyAxMC45OTc1IDcuMDM5ODVDMTAuNjAxIDYuOTE5OTkgMTAuMzc2OCA2LjUwMTQxIDEwLjQ5NjYgNi4xMDQ5MkMxMC41Nzc1IDUuODM3MzQgMTAuNTA0NiA1LjU0Njk1IDEwLjMwNjkgNS4zNDkyOUwxMC4yMDkxIDUuMjUxNDFDOS41MDY1NCA0LjU0ODg5IDkuMzc2NjYgMy40NTY1OSA5Ljg5NDg3IDIuNjA4OTJDMTAuMTEwOSAyLjI1NTUxIDEwLjU3MjUgMi4xNDQxNiAxMC45MjYgMi4zNjAyMVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE5Ljk3NDMgNy4wNDY4MUMxOS44MzU4IDcuMTAwMTQgMTkuNzEzMSA3LjIyMjgzIDE5LjQ2NzggNy40NjgyMkMxOS4yMjI0IDcuNzEzNjIgMTkuMDk5NyA3LjgzNjMxIDE5LjA0NjMgNy45NzQ3MkMxOC45ODM5IDguMTM2NyAxOC45ODM5IDguMzE2MDkgMTkuMDQ2MyA4LjQ3ODA3QzE5LjA5OTcgOC42MTY0OSAxOS4yMjI0IDguNzM5MTggMTkuNDY3OCA4Ljk4NDU3QzE5LjcxMzEgOS4yMjk5NiAxOS44MzU4IDkuMzUyNjYgMTkuOTc0MyA5LjQwNTk5QzIwLjEzNjIgOS40Njg0IDIwLjMxNTYgOS40Njg0IDIwLjQ3NzYgOS40MDU5OUMyMC42MTYgOS4zNTI2NiAyMC43Mzg3IDkuMjI5OTYgMjAuOTg0MSA4Ljk4NDU3QzIxLjIyOTUgOC43MzkxOCAyMS4zNTIyIDguNjE2NDkgMjEuNDA1NSA4LjQ3ODA3QzIxLjQ2NzkgOC4zMTYwOSAyMS40Njc5IDguMTM2NyAyMS40MDU1IDcuOTc0NzJDMjEuMzUyMiA3LjgzNjMxIDIxLjIyOTUgNy43MTM2MiAyMC45ODQxIDcuNDY4MjJDMjAuNzM4NyA3LjIyMjgzIDIwLjYxNiA3LjEwMDE0IDIwLjQ3NzYgNy4wNDY4MUMyMC4zMTU2IDYuOTg0NCAyMC4xMzYyIDYuOTg0NCAxOS45NzQzIDcuMDQ2ODFaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMS40MDc3IDEyLjU1OTZDMjEuMDQ2IDEyLjQwMTUgMjAuNjI1MyAxMi40Njc5IDIwLjMzIDEyLjcyOThDMTkuNTIwNyAxMy40NDc0IDE4LjM0MzEgMTMuNTY2NyAxNy40MDY0IDEzLjAyNTlMMTcuMTkzNSAxMi45MDNDMTYuODM0OCAxMi42OTU5IDE2LjcxMTkgMTIuMjM3MiAxNi45MTkgMTEuODc4NUMxNy4xMjYxIDExLjUxOTggMTcuNTg0OCAxMS4zOTY4IDE3Ljk0MzUgMTEuNjA0TDE4LjE1NjQgMTEuNzI2OEMxOC41MzM5IDExLjk0NDggMTkuMDA4NiAxMS44OTY3IDE5LjMzNDggMTEuNjA3NUMyMC4wNjc2IDEwLjk1NzcgMjEuMTExMiAxMC43OTI5IDIyLjAwODYgMTEuMTg1MkwyMi4zMDAxIDExLjMxMjdDMjIuNjc5NiAxMS40Nzg2IDIyLjg1MjggMTEuOTIwOCAyMi42ODY4IDEyLjMwMDNDMjIuNTIwOSAxMi42Nzk5IDIyLjA3ODcgMTIuODUzIDIxLjY5OTIgMTIuNjg3MUwyMS40MDc3IDEyLjU1OTZaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNyIgZD0iTTEzLjU2MSA0LjM5NjQ4QzEzLjc2MjEgNC4xOTU0MiAxMy44NjI2IDQuMDk0ODkgMTMuOTc4OCA0LjA1ODA0QzE0LjA3NzIgNC4wMjY4OCAxNC4xODI3IDQuMDI2ODggMTQuMjgxIDQuMDU4MDRDMTQuMzk3MyA0LjA5NDg5IDE0LjQ5NzggNC4xOTU0MiAxNC42OTg5IDQuMzk2NDhDMTQuODk5OSA0LjU5NzUzIDE1LjAwMDQgNC42OTgwNiAxNS4wMzczIDQuODE0M0MxNS4wNjg1IDQuOTEyNjIgMTUuMDY4NSA1LjAxODE3IDE1LjAzNzMgNS4xMTY0OEMxNS4wMDA0IDUuMjMyNzIgMTQuODk5OSA1LjMzMzI1IDE0LjY5ODkgNS41MzQzQzE0LjQ5NzggNS43MzUzNiAxNC4zOTczIDUuODM1ODkgMTQuMjgxIDUuODcyNzRDMTQuMTgyNyA1LjkwMzkxIDE0LjA3NzIgNS45MDM5MSAxMy45Nzg4IDUuODcyNzRDMTMuODYyNiA1LjgzNTg5IDEzLjc2MjEgNS43MzUzNiAxMy41NjEgNS41MzQzMUMxMy4zNiA1LjMzMzI1IDEzLjI1OTQgNS4yMzI3MiAxMy4yMjI2IDUuMTE2NDhDMTMuMTkxNCA1LjAxODE3IDEzLjE5MTQgNC45MTI2MiAxMy4yMjI2IDQuODE0M0MxMy4yNTk0IDQuNjk4MDYgMTMuMzYgNC41OTc1MyAxMy41NjEgNC4zOTY0OFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC43IiBkPSJNMTkuMDU3NSAxNS4zMTM0QzE5LjI2NyAxNS4xMDM5IDE5LjYwNjYgMTUuMTAzOSAxOS44MTYgMTUuMzEzNEMyMC4wMjU1IDE1LjUyMjggMjAuMDI1NSAxNS44NjI0IDE5LjgxNiAxNi4wNzE5QzE5LjYwNjYgMTYuMjgxNCAxOS4yNjcgMTYuMjgxNCAxOS4wNTc1IDE2LjA3MTlDMTguODQ4IDE1Ljg2MjQgMTguODQ4IDE1LjUyMjggMTkuMDU3NSAxNS4zMTM0WiIgZmlsbD0iIzFDMjc0QyIvPgo8ZyBvcGFjaXR5PSIwLjUiPgo8cGF0aCBkPSJNNi45MjY2MyAzLjk0MDc5QzcuMTM2MSAzLjczMTMyIDcuNDc1NzIgMy43MzEzMiA3LjY4NTE5IDMuOTQwNzlDNy44OTQ2NiA0LjE1MDI2IDcuODk0NjYgNC40ODk4OCA3LjY4NTE5IDQuNjk5MzVDNy40NzU3MiA0LjkwODgyIDcuMTM2MSA0LjkwODgyIDYuOTI2NjMgNC42OTkzNUM2LjcxNzE2IDQuNDg5ODggNi43MTcxNiA0LjE1MDI2IDYuOTI2NjMgMy45NDA3OVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE3LjY4ODcgNC43MjE2M0MxOC4wOTQ5IDQuODAyODcgMTguMzU4MyA1LjE5Nzk5IDE4LjI3NzEgNS42MDQxNkwxOC4xMzMxIDYuMzI0MDlDMTcuOTM0OSA3LjMxNDkxIDE3LjIyMSA4LjEyMzU3IDE2LjI2MjUgOC40NDMxQzE1LjgxNDUgOC41OTI0MSAxNS40ODEgOC45NzAyOCAxNS4zODg0IDkuNDMzMjZMMTUuMjQ0NCAxMC4xNTMyQzE1LjE2MzEgMTAuNTU5NCAxNC43NjggMTAuODIyOCAxNC4zNjE4IDEwLjc0MTVDMTMuOTU1NyAxMC42NjAzIDEzLjY5MjMgMTAuMjY1MiAxMy43NzM1IDkuODU5MDNMMTMuOTE3NSA5LjEzOTA5QzE0LjExNTYgOC4xNDgyOCAxNC44Mjk1IDcuMzM5NjEgMTUuNzg4MSA3LjAyMDA4QzE2LjIzNiA2Ljg3MDc3IDE2LjU2OTYgNi40OTI5IDE2LjY2MjIgNi4wMjk5MkwxNi44MDYyIDUuMzA5OThDMTYuODg3NCA0LjkwMzgxIDE3LjI4MjUgNC42NDA0IDE3LjY4ODcgNC43MjE2M1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9nPgo8cGF0aCBvcGFjaXR5PSIwLjIiIGQ9Ik0xNy40OTk5IDkuNzQxNTdDMTcuNzA5MyA5LjUzMjExIDE4LjA0OSA5LjUzMjExIDE4LjI1ODQgOS43NDE1N0MxOC40Njc5IDkuOTUxMDQgMTguNDY3OSAxMC4yOTA3IDE4LjI1ODQgMTAuNTAwMUMxOC4wNDkgMTAuNzA5NiAxNy43MDkzIDEwLjcwOTYgMTcuNDk5OSAxMC41MDAxQzE3LjI5MDQgMTAuMjkwNyAxNy4yOTA0IDkuOTUxMDQgMTcuNDk5OSA5Ljc0MTU3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik00LjAxMjA3IDE1Ljc2MThMNS43MDE1NiAxMC42OTMzQzYuNDY3NTggOC4zOTUyNSA2Ljg1MDU5IDcuMjQ2MjMgNy43NTY4NCA3LjAzMjI5QzguNjYzMSA2LjgxODM1IDkuNTE5NTMgNy42NzQ3OCAxMS4yMzI0IDkuMzg3NjRMMTQuNjExNCAxMi43NjY2QzE2LjMyNDIgMTQuNDc5NSAxNy4xODA3IDE1LjMzNTkgMTYuOTY2NyAxNi4yNDIyQzE2Ljc1MjggMTcuMTQ4NCAxNS42MDM4IDE3LjUzMTQgMTMuMzA1NyAxOC4yOTc1TDguMjM3MjQgMTkuOTg3TDguMjM3MjMgMTkuOTg3QzUuNDcxODIgMjAuOTA4OCA0LjA4OTEyIDIxLjM2OTcgMy4zNTkyNCAyMC42Mzk4QzIuNjI5MzYgMTkuOTA5OSAzLjA5MDI2IDE4LjUyNzIgNC4wMTIwNyAxNS43NjE4WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNOC44MDAxIDcuNTA0MjRMOC44NTA3MiA3LjI1OTIyQzguNDU3NjEgNy4wMjg1NyA4LjExMSA2Ljk0ODY3IDcuNzU2NzkgNy4wMzIyOUM3LjYxMjM1IDcuMDY2MzggNy40ODEyIDcuMTI0MjMgNy4zNTk2NyA3LjIwNjdMOC4wNTYxMSA3LjM1MDU4QzcuNTc3NTcgNy4yNTE3MiA3LjQxNDk4IDcuMjE4MDggNy4zNTk2NyA3LjIwNjdDNy4zNDgwNCA3LjIxNDYgNy4zMzY0IDcuMjIyNzkgNy4zMjQ5NCA3LjIzMTE0TDcuMzE5NjQgNy4yNTczNkM3LjMxMjQyIDcuMjkzMjggNy4zMDE5OSA3LjM0NTc1IDcuMjg4ODUgNy40MTMyNUM3LjI2MjU4IDcuNTQ4MjQgNy4yMjU0NyA3Ljc0MzQ1IDcuMTgxNjUgNy45ODY2MkM3LjA5NDA2IDguNDcyNjQgNi45NzkzNyA5LjE1MTg0IDYuODcwNzggOS45MjU3M0M2LjY1NTY0IDExLjQ1ODkgNi40NTYzOCAxMy40MTc5IDYuNTU5MDQgMTQuOTgzNEM2LjYyMTE1IDE1LjkzMDYgNi44MTgyMiAxNy4xMDU3IDYuOTk0MSAxOC4wMjM4QzcuMDgyODYgMTguNDg3MiA3LjE2Nzg0IDE4Ljg5MzMgNy4yMzA2NiAxOS4xODM4QzcuMjYyMDkgMTkuMzI5MSA3LjI4ODAzIDE5LjQ0NTcgNy4zMDYxOSAxOS41MjY0TDcuMzI3MzMgMTkuNjE5NUw3LjMzMyAxOS42NDQxTDcuMzM0OTMgMTkuNjUyNUM3LjMzNDk0IDE5LjY1MjYgNy4zMzUxMiAxOS42NTMzIDguMDY1NiAxOS40ODMzTDcuMzM0OTMgMTkuNjUyNUw3LjQ3MTkxIDIwLjI0MTJDNy43MTQ0NyAyMC4xNjEyIDcuOTY5MzMgMjAuMDc2MiA4LjIzNzE3IDE5Ljk4N0w4LjkwMTMyIDE5Ljc2NTZMOC43OTQ1MyAxOS4zMDY2TDguNzg5NDQgMTkuMjg0NUw4Ljc2OTUzIDE5LjE5NjhDOC43NTIyMSAxOS4xMTk5IDguNzI3MiAxOS4wMDc1IDguNjk2NzYgMTguODY2N0M4LjYzNTg0IDE4LjU4NSA4LjU1MzM2IDE4LjE5MDkgOC40NjczMiAxNy43NDE2QzguMjkzNTcgMTYuODM0NiA4LjExMTU1IDE1LjczNTEgOC4wNTU4MiAxNC44ODUyQzcuOTYzNzcgMTMuNDgxNCA4LjE0MzYgMTEuNjQ5NSA4LjM1NjIzIDEwLjEzNDJDOC40NjE1MiA5LjM4Mzc3IDguNTcyODggOC43MjQyNyA4LjY1Nzg3IDguMjUyNjVDOC43MDAzNCA4LjAxNyA4LjczNjE1IDcuODI4NjcgOC43NjEyMyA3LjY5OTgxQzguNzczNzYgNy42MzUzOSA4Ljc4MzYxIDcuNTg1ODcgOC43OTAyNiA3LjU1Mjc3TDguNzk3NzcgNy41MTU2M0w4Ljc5OTYgNy41MDY2NUw4LjgwMDEgNy41MDQyNFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEzLjAzOTMgMTguMzg2M0wxMS42MTYyIDE4Ljg2MDZMMTEuNTIzOCAxOC41ODI2TDEyLjIzNTYgMTguMzQ2MUMxMS41MjM4IDE4LjU4MjYgMTEuNTIzOSAxOC41ODI3IDExLjUyMzggMTguNTgyNkwxMS41MjI5IDE4LjU3OThMMTEuNTIwOSAxOC41NzM4TDExLjUxMzggMTguNTUyQzExLjUwNzcgMTguNTMzMyAxMS40OTkgMTguNTA2NCAxMS40ODgxIDE4LjQ3MkMxMS40NjYzIDE4LjQwMzEgMTEuNDM1NCAxOC4zMDQyIDExLjM5ODYgMTguMTgxMUMxMS4zMjUgMTcuOTM1NCAxMS4yMjcgMTcuNTkxNyAxMS4xMjg4IDE3LjE5ODVDMTAuOTM2NyAxNi40MjkzIDEwLjcyNzQgMTUuNDA3IDEwLjcyNzQgMTQuNTU1MkMxMC43Mjc0IDEzLjcwMzQgMTAuOTM2NyAxMi42ODExIDExLjEyODggMTEuOTExOUMxMS4yMjcgMTEuNTE4NyAxMS4zMjUgMTEuMTc1IDExLjM5ODYgMTAuOTI5M0MxMS40MzU0IDEwLjgwNjIgMTEuNDY2MyAxMC43MDczIDExLjQ4ODEgMTAuNjM4NEMxMS40OTkgMTAuNjA0IDExLjUwNzcgMTAuNTc3MSAxMS41MTM4IDEwLjU1ODRMMTEuNTIwOSAxMC41MzY2TDExLjUyMjkgMTAuNTMwNUwxMS41MjM1IDEwLjUyODdDMTEuNTIzNSAxMC41Mjg3IDExLjUyMzggMTAuNTI3OCAxMi4yMzU2IDEwLjc2NDNMMTEuNTIzOCAxMC41Mjc4TDExLjczNTUgOS44OTA4NEwxMi45MjI0IDExLjA3NzdDMTIuOTIxIDExLjA4MjQgMTIuOTE5NCAxMS4wODcyIDEyLjkxNzggMTEuMDkyMkMxMi44OTgyIDExLjE1NCAxMi44Njk4IDExLjI0NSAxMi44MzU2IDExLjM1OTRDMTIuNzY3IDExLjU4ODYgMTIuNjc1NSAxMS45MDk1IDEyLjU4NDEgMTIuMjc1M0MxMi4zOTcxIDEzLjAyNDEgMTIuMjI3NCAxMy44OTczIDEyLjIyNzQgMTQuNTU1MkMxMi4yMjc0IDE1LjIxMzEgMTIuMzk3MSAxNi4wODYzIDEyLjU4NDEgMTYuODM1MUMxMi42NzU1IDE3LjIwMDkgMTIuNzY3IDE3LjUyMTggMTIuODM1NiAxNy43NTFDMTIuODY5OCAxNy44NjU0IDEyLjg5ODIgMTcuOTU2NCAxMi45MTc4IDE4LjAxODJDMTIuOTI3NiAxOC4wNDkxIDEyLjkzNTIgMTguMDcyNyAxMi45NDAzIDE4LjA4ODFMMTIuOTQ1OCAxOC4xMDUyTDEyLjk0NzEgMTguMTA5TDEzLjAzOTMgMTguMzg2M1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
 */
export const ConfettiMinimalistic:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path d="M10.926 2.36021C11.2794 2.57626 11.3907 3.03789 11.1747 3.3913C11.0179 3.64775 11.0572 3.97821 11.2697 4.19075L11.3676 4.28863C11.9563 4.87729 12.1733 5.74206 11.9324 6.53894C11.8126 6.93543 11.394 7.1597 10.9975 7.03985C10.601 6.91999 10.3768 6.50141 10.4966 6.10492C10.5775 5.83734 10.5046 5.54695 10.3069 5.34929L10.2091 5.25141C9.50654 4.54889 9.37666 3.45659 9.89487 2.60892C10.1109 2.25551 10.5725 2.14416 10.926 2.36021Z" fill="currentColor"/>
<path d="M19.9743 7.04681C19.8358 7.10014 19.7131 7.22283 19.4678 7.46822C19.2224 7.71362 19.0997 7.83631 19.0463 7.97472C18.9839 8.1367 18.9839 8.31609 19.0463 8.47807C19.0997 8.61649 19.2224 8.73918 19.4678 8.98457C19.7131 9.22996 19.8358 9.35266 19.9743 9.40599C20.1362 9.4684 20.3156 9.4684 20.4776 9.40599C20.616 9.35266 20.7387 9.22996 20.9841 8.98457C21.2295 8.73918 21.3522 8.61649 21.4055 8.47807C21.4679 8.31609 21.4679 8.1367 21.4055 7.97472C21.3522 7.83631 21.2295 7.71362 20.9841 7.46822C20.7387 7.22283 20.616 7.10014 20.4776 7.04681C20.3156 6.9844 20.1362 6.9844 19.9743 7.04681Z" fill="currentColor"/>
<path d="M21.4077 12.5596C21.046 12.4015 20.6253 12.4679 20.33 12.7298C19.5207 13.4474 18.3431 13.5667 17.4064 13.0259L17.1935 12.903C16.8348 12.6959 16.7119 12.2372 16.919 11.8785C17.1261 11.5198 17.5848 11.3968 17.9435 11.604L18.1564 11.7268C18.5339 11.9448 19.0086 11.8967 19.3348 11.6075C20.0676 10.9577 21.1112 10.7929 22.0086 11.1852L22.3001 11.3127C22.6796 11.4786 22.8528 11.9208 22.6868 12.3003C22.5209 12.6799 22.0787 12.853 21.6992 12.6871L21.4077 12.5596Z" fill="currentColor"/>
<path opacity="0.7" d="M13.561 4.39648C13.7621 4.19542 13.8626 4.09489 13.9788 4.05804C14.0772 4.02688 14.1827 4.02688 14.281 4.05804C14.3973 4.09489 14.4978 4.19542 14.6989 4.39648C14.8999 4.59753 15.0004 4.69806 15.0373 4.8143C15.0685 4.91262 15.0685 5.01817 15.0373 5.11648C15.0004 5.23272 14.8999 5.33325 14.6989 5.5343C14.4978 5.73536 14.3973 5.83589 14.281 5.87274C14.1827 5.90391 14.0772 5.90391 13.9788 5.87274C13.8626 5.83589 13.7621 5.73536 13.561 5.53431C13.36 5.33325 13.2594 5.23272 13.2226 5.11648C13.1914 5.01817 13.1914 4.91262 13.2226 4.8143C13.2594 4.69806 13.36 4.59753 13.561 4.39648Z" fill="currentColor"/>
<path opacity="0.7" d="M19.0575 15.3134C19.267 15.1039 19.6066 15.1039 19.816 15.3134C20.0255 15.5228 20.0255 15.8624 19.816 16.0719C19.6066 16.2814 19.267 16.2814 19.0575 16.0719C18.848 15.8624 18.848 15.5228 19.0575 15.3134Z" fill="currentColor"/>
<g opacity="0.5">
<path d="M6.92663 3.94079C7.1361 3.73132 7.47572 3.73132 7.68519 3.94079C7.89466 4.15026 7.89466 4.48988 7.68519 4.69935C7.47572 4.90882 7.1361 4.90882 6.92663 4.69935C6.71716 4.48988 6.71716 4.15026 6.92663 3.94079Z" fill="currentColor"/>
<path d="M17.6887 4.72163C18.0949 4.80287 18.3583 5.19799 18.2771 5.60416L18.1331 6.32409C17.9349 7.31491 17.221 8.12357 16.2625 8.4431C15.8145 8.59241 15.481 8.97028 15.3884 9.43326L15.2444 10.1532C15.1631 10.5594 14.768 10.8228 14.3618 10.7415C13.9557 10.6603 13.6923 10.2652 13.7735 9.85903L13.9175 9.13909C14.1156 8.14828 14.8295 7.33961 15.7881 7.02008C16.236 6.87077 16.5696 6.4929 16.6622 6.02992L16.8062 5.30998C16.8874 4.90381 17.2825 4.6404 17.6887 4.72163Z" fill="currentColor"/>
</g>
<path opacity="0.2" d="M17.4999 9.74157C17.7093 9.53211 18.049 9.53211 18.2584 9.74157C18.4679 9.95104 18.4679 10.2907 18.2584 10.5001C18.049 10.7096 17.7093 10.7096 17.4999 10.5001C17.2904 10.2907 17.2904 9.95104 17.4999 9.74157Z" fill="currentColor"/>
<path opacity="0.5" d="M4.01207 15.7618L5.70156 10.6933C6.46758 8.39525 6.85059 7.24623 7.75684 7.03229C8.6631 6.81835 9.51953 7.67478 11.2324 9.38764L14.6114 12.7666C16.3242 14.4795 17.1807 15.3359 16.9667 16.2422C16.7528 17.1484 15.6038 17.5314 13.3057 18.2975L8.23724 19.987L8.23723 19.987C5.47182 20.9088 4.08912 21.3697 3.35924 20.6398C2.62936 19.9099 3.09026 18.5272 4.01207 15.7618Z" fill="currentColor"/>
<path d="M8.8001 7.50424L8.85072 7.25922C8.45761 7.02857 8.111 6.94867 7.75679 7.03229C7.61235 7.06638 7.4812 7.12423 7.35967 7.2067L8.05611 7.35058C7.57757 7.25172 7.41498 7.21808 7.35967 7.2067C7.34804 7.2146 7.3364 7.22279 7.32494 7.23114L7.31964 7.25736C7.31242 7.29328 7.30199 7.34575 7.28885 7.41325C7.26258 7.54824 7.22547 7.74345 7.18165 7.98662C7.09406 8.47264 6.97937 9.15184 6.87078 9.92573C6.65564 11.4589 6.45638 13.4179 6.55904 14.9834C6.62115 15.9306 6.81822 17.1057 6.9941 18.0238C7.08286 18.4872 7.16784 18.8933 7.23066 19.1838C7.26209 19.3291 7.28803 19.4457 7.30619 19.5264L7.32733 19.6195L7.333 19.6441L7.33493 19.6525C7.33494 19.6526 7.33512 19.6533 8.0656 19.4833L7.33493 19.6525L7.47191 20.2412C7.71447 20.1612 7.96933 20.0762 8.23717 19.987L8.90132 19.7656L8.79453 19.3066L8.78944 19.2845L8.76953 19.1968C8.75221 19.1199 8.7272 19.0075 8.69676 18.8667C8.63584 18.585 8.55336 18.1909 8.46732 17.7416C8.29357 16.8346 8.11155 15.7351 8.05582 14.8852C7.96377 13.4814 8.1436 11.6495 8.35623 10.1342C8.46152 9.38377 8.57288 8.72427 8.65787 8.25265C8.70034 8.017 8.73615 7.82867 8.76123 7.69981C8.77376 7.63539 8.78361 7.58587 8.79026 7.55277L8.79777 7.51563L8.7996 7.50665L8.8001 7.50424Z" fill="currentColor"/>
<path d="M13.0393 18.3863L11.6162 18.8606L11.5238 18.5826L12.2356 18.3461C11.5238 18.5826 11.5239 18.5827 11.5238 18.5826L11.5229 18.5798L11.5209 18.5738L11.5138 18.552C11.5077 18.5333 11.499 18.5064 11.4881 18.472C11.4663 18.4031 11.4354 18.3042 11.3986 18.1811C11.325 17.9354 11.227 17.5917 11.1288 17.1985C10.9367 16.4293 10.7274 15.407 10.7274 14.5552C10.7274 13.7034 10.9367 12.6811 11.1288 11.9119C11.227 11.5187 11.325 11.175 11.3986 10.9293C11.4354 10.8062 11.4663 10.7073 11.4881 10.6384C11.499 10.604 11.5077 10.5771 11.5138 10.5584L11.5209 10.5366L11.5229 10.5305L11.5235 10.5287C11.5235 10.5287 11.5238 10.5278 12.2356 10.7643L11.5238 10.5278L11.7355 9.89084L12.9224 11.0777C12.921 11.0824 12.9194 11.0872 12.9178 11.0922C12.8982 11.154 12.8698 11.245 12.8356 11.3594C12.767 11.5886 12.6755 11.9095 12.5841 12.2753C12.3971 13.0241 12.2274 13.8973 12.2274 14.5552C12.2274 15.2131 12.3971 16.0863 12.5841 16.8351C12.6755 17.2009 12.767 17.5218 12.8356 17.751C12.8698 17.8654 12.8982 17.9564 12.9178 18.0182C12.9276 18.0491 12.9352 18.0727 12.9403 18.0881L12.9458 18.1052L12.9471 18.109L13.0393 18.3863Z" fill="currentColor"/>
    </IconBase>
))

ConfettiMinimalistic.displayName = "ConfettiMinimalistic"