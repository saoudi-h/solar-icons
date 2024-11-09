/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNy4yNjA1IDYuMzM5OTVDMTcuODI3MSA2LjUwNDI5IDE4LjAyMzkgNy4zNTAxMiAxOC40MTc0IDkuMDQxNzhMMTguNTE5MyA5LjQ3OTQzQzE4LjYzMTEgOS45NjAxNSAxOC42ODcgMTAuMjAwNSAxOC44MjA4IDEwLjM4NzJDMTguOTU0NSAxMC41NzM5IDE5LjE1MDkgMTAuNjg1NyAxOS41NDM4IDEwLjkwOTVMMTkuOTAxNCAxMS4xMTMyQzIxLjI4MzkgMTEuOTAwNiAyMS45NzUxIDEyLjI5NDMgMjEuOTk5NCAxMi45NTQ1QzIyLjAyMzYgMTMuNjE0OCAyMS4zNjQ3IDE0LjEwNDMgMjAuMDQ3MSAxNS4wODM0TDE5LjcwNjIgMTUuMzM2N0MxOS4zMzE4IDE1LjYxNDkgMTkuMTQ0NSAxNS43NTQgMTkuMDI1MSAxNS45NTg3QzE4LjkwNTggMTYuMTYzMyAxOC44Njc3IDE2LjQxMDQgMTguNzkxNiAxNi45MDQ0TDE4LjcyMjQgMTcuMzU0MkMxOC42NDA4IDE3Ljg4MzkgMTguNTIwNSAxOC4zNTU1IDE4LjM5MjUgMTguNzU1M0MxOC4xOTUyIDE5LjM3MjEgMTguMDk2NSAxOS42ODA2IDE3LjczNzcgMTkuODg2NkMxNy4zNzkgMjAuMDkyNyAxNy4wMzIxIDE5Ljk5MjEgMTYuMzM4NSAxOS43OTA4TTEwLjQzOTggNi43Mjc2NEwxMC41NDE2IDcuMTY1MjlDMTAuNjUzNSA3LjY0NiAxMC43MDk0IDcuODg2MzcgMTAuODQzMSA4LjA3MzA1QzEwLjk3NjkgOC4yNTk3NCAxMS4xNzMzIDguMzcxNjEgMTEuNTY2MiA4LjU5NTM2TDExLjkyMzggOC43OTkwN0MxMy4zMDYzIDkuNTg2NDUgMTMuOTk3NSA5Ljk4MDE0IDE0LjAyMTcgMTAuNjQwNEMxNC4wNDU5IDExLjMwMDYgMTMuMzg3MSAxMS43OTAyIDEyLjA2OTUgMTIuNzY5M0wxMS43Mjg2IDEzLjAyMjZDMTEuMzU0MSAxMy4zMDA4IDExLjE2NjkgMTMuNDM5OSAxMS4wNDc1IDEzLjY0NDZDMTAuOTI4MSAxMy44NDkyIDEwLjg5MDEgMTQuMDk2MiAxMC44MTQgMTQuNTkwM0wxMC43NDQ3IDE1LjA0MDFDMTAuNDc3IDE2Ljc3ODcgMTAuMzQzMSAxNy42NDggOS43OTE1NSAxNy44OTE3QzkuNzkxNTUgMTcuODkxNyA4LjYzNjAyIDE3LjU5MjIgNy40MjgwOSAxNi41MDU2TDcuMTE1NTggMTYuMjI0NUM2Ljc3MjMyIDE1LjkxNTcgNi42MDA2OSAxNS43NjE0IDYuMzkzMTYgMTUuNzAxMkM2LjE4NTYzIDE1LjY0MSA1Ljk2NTcgMTUuNjgxOCA1LjUyNTgyIDE1Ljc2MzRMNS4xMjUzNSAxNS44Mzc2QzMuNTc3NDIgMTYuMTI0OCAyLjgwMzQ1IDE2LjI2ODMgMi40MzgzNSAxNS43NTg3QzIuMDczMjUgMTUuMjQ5MSAyLjM1ODggMTQuNDIzOCAyLjkyOTkyIDEyLjc3MzJMMy4wNzc2NyAxMi4zNDYyQzMuMjM5OTYgMTEuODc3MSAzLjMyMTExIDExLjY0MjYgMy4zMTIyNCAxMS40MDA3QzMuMzAzMzcgMTEuMTU4OSAzLjIwNTQ4IDEwLjkzNyAzLjAwOTcxIDEwLjQ5MzRMMi44MzE0NyAxMC4wODk1QzIuMTQyNTQgOC41MjgzNyAxLjc5ODA3IDcuNzQ3OCAyLjEyMzk5IDcuMTg5MTJDMi40NDk5IDYuNjMwNDQgMy4yMzAzNSA2LjY2MzY1IDQuNzkxMjYgNi43MzAwN0w1LjE5NTA4IDYuNzQ3MjVDNS42Mzg2NCA2Ljc2NjEzIDUuODYwNDIgNi43NzU1NiA2LjA2MjQ3IDYuNjg2MjhDNi4yNjQ1MiA2LjU5NzAxIDYuNDIzOTYgNi40MTkxMiA2Ljc0Mjg0IDYuMDYzMzVMNy4wMzMxNSA1LjczOTQ1QzguMTU1MyA0LjQ4NzQ3IDguNzE2MzggMy44NjE0OCA5LjI4MjkxIDQuMDI1ODJDOS44NDk0NCA0LjE5MDE1IDEwLjA0NjIgNS4wMzU5OCAxMC40Mzk4IDYuNzI3NjRaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTExLjkyMzkgOC43OTg2NEwxOS41NDM4IDEwLjkwOTFNOS43OTE2IDE3Ljg5MTNMMTYuMzM4NSAxOS43OTA0TTExLjA0NzYgMTMuNjQ0MUwxOS4wMjUyIDE1Ljk1ODNNOS4yODI5NiA0LjAyNTM5TDE3LjI2MDYgNi4zMzk1MyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K)
 */
export const StarAngle:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path d="M17.2605 6.33995C17.8271 6.50429 18.0239 7.35012 18.4174 9.04178L18.5193 9.47943C18.6311 9.96015 18.687 10.2005 18.8208 10.3872C18.9545 10.5739 19.1509 10.6857 19.5438 10.9095L19.9014 11.1132C21.2839 11.9006 21.9751 12.2943 21.9994 12.9545C22.0236 13.6148 21.3647 14.1043 20.0471 15.0834L19.7062 15.3367C19.3318 15.6149 19.1445 15.754 19.0251 15.9587C18.9058 16.1633 18.8677 16.4104 18.7916 16.9044L18.7224 17.3542C18.6408 17.8839 18.5205 18.3555 18.3925 18.7553C18.1952 19.3721 18.0965 19.6806 17.7377 19.8866C17.379 20.0927 17.0321 19.9921 16.3385 19.7908M10.4398 6.72764L10.5416 7.16529C10.6535 7.646 10.7094 7.88637 10.8431 8.07305C10.9769 8.25974 11.1733 8.37161 11.5662 8.59536L11.9238 8.79907C13.3063 9.58645 13.9975 9.98014 14.0217 10.6404C14.0459 11.3006 13.3871 11.7902 12.0695 12.7693L11.7286 13.0226C11.3541 13.3008 11.1669 13.4399 11.0475 13.6446C10.9281 13.8492 10.8901 14.0962 10.814 14.5903L10.7447 15.0401C10.477 16.7787 10.3431 17.648 9.79155 17.8917C9.79155 17.8917 8.63602 17.5922 7.42809 16.5056L7.11558 16.2245C6.77232 15.9157 6.60069 15.7614 6.39316 15.7012C6.18563 15.641 5.9657 15.6818 5.52582 15.7634L5.12535 15.8376C3.57742 16.1248 2.80345 16.2683 2.43835 15.7587C2.07325 15.2491 2.3588 14.4238 2.92992 12.7732L3.07767 12.3462C3.23996 11.8771 3.32111 11.6426 3.31224 11.4007C3.30337 11.1589 3.20548 10.937 3.00971 10.4934L2.83147 10.0895C2.14254 8.52837 1.79807 7.7478 2.12399 7.18912C2.4499 6.63044 3.23035 6.66365 4.79126 6.73007L5.19508 6.74725C5.63864 6.76613 5.86042 6.77556 6.06247 6.68628C6.26452 6.59701 6.42396 6.41912 6.74284 6.06335L7.03315 5.73945C8.1553 4.48747 8.71638 3.86148 9.28291 4.02582C9.84944 4.19015 10.0462 5.03598 10.4398 6.72764Z" stroke="currentColor" strokeWidth="1.5"/>
<path opacity="0.5" d="M11.9239 8.79864L19.5438 10.9091M9.7916 17.8913L16.3385 19.7904M11.0476 13.6441L19.0252 15.9583M9.28296 4.02539L17.2606 6.33953" stroke="currentColor" strokeWidth="1.5"/>
    </IconBase>
))

StarAngle.displayName = "StarAngle"
