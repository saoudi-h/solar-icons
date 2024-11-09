/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyLjk4MzkgMjIuNDk0NkwxMy41MjEgMjEuNTg3OUMxMy45Mzc1IDIwLjg4NDYgMTQuMTQ1OCAyMC41MzI5IDE0LjQ4MDQgMjAuMzM4NEMxNC44MTUgMjAuMTQ0IDE1LjIzNjIgMjAuMTM2NyAxNi4wNzg2IDIwLjEyMjJDMTcuMzIyNCAyMC4xMDA4IDE4LjEwMjQgMjAuMDI0NyAxOC43NTY2IDE5Ljc1MzlDMTkuOTcwNCAxOS4yNTE1IDIwLjkzNDggMTguMjg3OCAyMS40Mzc1IDE3LjA3NDhDMjEuNjIyNiAxNi42MjgzIDIxLjcxNjkgMTYuMTIzIDIxLjc2NDggMTUuNDUxNUMyMS43OTAzIDE1LjA5NTggMjEuODAzIDE0LjkxNzkgMjEuNzA4IDE0Ljc3NTZDMjEuNjEzMSAxNC42MzMyIDIxLjQzMjkgMTQuNTcyOCAyMS4wNzIzIDE0LjQ1MkMxOS41NjA2IDEzLjk0NTQgMTYuMDU4NCAxMi42NTY1IDE0LjEgMTEuMDAwOEMxMS44OTI1IDkuMTM0NDQgOS45MTc4MiA1LjM0MDQgOS4yMTExOCAzLjg4NjE1QzkuMDcwNyAzLjU5NzA1IDkuMDAwNDcgMy40NTI1IDguODc3MTUgMy4zNzYyMkM4Ljc1MzgzIDMuMjk5OTQgOC41OTc0MyAzLjMwMTU5IDguMjg0NjMgMy4zMDQ5QzYuMjUwMzYgMy4zMjYzOCA1LjMyOTE1IDMuNDM4OTkgNC4zNjUzOCA0LjAyOTE5QzMuNjk4ODMgNC40MzczNyAzLjEzODQzIDQuOTk3NCAyLjcyOTk3IDUuNjYzNDlDMiA2Ljg1Mzg4IDIgOC40NzQzMiAyIDExLjcxNTJWMTIuNzA1M0MyIDE1LjAxMTggMiAxNi4xNjUxIDIuMzc3MDcgMTcuMDc0OEMyLjg3OTg0IDE4LjI4NzggMy44NDQxOSAxOS4yNTE1IDUuMDU3OTcgMTkuNzUzOUM1LjcxMjE1IDIwLjAyNDcgNi40OTIxOSAyMC4xMDA4IDcuNzM1OTEgMjAuMTIyMkM4LjU3ODM3IDIwLjEzNjcgOC45OTk2IDIwLjE0NCA5LjMzNDE3IDIwLjMzODRDOS42Njg3NCAyMC41MzI5IDkuODc3MDIgMjAuODg0NiAxMC4yOTM2IDIxLjU4NzlMMTAuODMwNyAyMi40OTQ2QzExLjMwOTQgMjMuMzAyOCAxMi41MDUyIDIzLjMwMjggMTIuOTgzOSAyMi40OTQ2WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTE0Ljg3MTkgMC4yMzkyMjhDMTUuMjA3MyAwLjU1NTQyIDE1LjIwMzkgMS4wNjQ5MSAxNC44NjQzIDEuMzc3MkwxMy43NjIyIDIuMzkwNjZDMTQuNzIxIDIuMzk5NjggMTUuNjQzMyAyLjQyMTQ0IDE2LjQ3NTYgMi40NzM4OEMxNy4xOTEzIDIuNTE4OTggMTcuODYxNiAyLjU4NzkgMTguNDQ1NyAyLjY5NjA5QzE5LjAxNzggMi44MDIwNiAxOS41NjkgMi45NTY0MSAyMC4wMDY5IDMuMjAzMTFDMjAuODIwNiAzLjY2MTY2IDIxLjUwNTggNC4yOTE0MSAyMi4wMDU4IDUuMDQxNTdDMjIuNDg2NyA1Ljc2MzI4IDIyLjY5ODYgNi41NzkwNCAyMi44MDAzIDcuNTYyNzZDMjIuODk5OCA4LjUyNTE4IDIyLjg5OTggOS43Mjc5MiAyMi44OTk4IDExLjI1M1YxMS4yOTUzQzIyLjg5OTggMTEuNzM5NyAyMi41MTI4IDEyLjEgMjIuMDM1NSAxMi4xQzIxLjU1ODIgMTIuMSAyMS4xNzEyIDExLjczOTcgMjEuMTcxMiAxMS4yOTUzQzIxLjE3MTIgOS43MTg2IDIxLjE3MDMgOC41OTMyOCAyMS4wNzk3IDcuNzE2OTdDMjAuOTkwNCA2Ljg1MzA4IDIwLjgyMDEgNi4zMTUwMiAyMC41MzY5IDUuODkwMDVDMjAuMTgxNyA1LjM1Njk1IDE5LjY5MzYgNC45MDc3NiAxOS4xMTE4IDQuNTc5OTNDMTguOTI2MSA0LjQ3NTI5IDE4LjYwMzEgNC4zNjYxNSAxOC4xMDg0IDQuMjc0NTFDMTcuNjI1NyA0LjE4NTA5IDE3LjAzNjcgNC4xMjIyOCAxNi4zNTg5IDQuMDc5NTdDMTUuNTc1OCA0LjAzMDIzIDE0LjcwMjUgNC4wMDkyMSAxMy43NzYzIDQuMDAwMjZMMTQuODY0MyA1LjAwMDY4QzE1LjIwMzkgNS4zMTI5OCAxNS4yMDczIDUuODIyNDYgMTQuODcxOSA2LjEzODY1QzE0LjUzNjQgNi40NTQ4NSAxMy45ODkyIDYuNDU4MDEgMTMuNjQ5NiA2LjE0NTcyTDExLjA1NjggMy43NjE0NkMxMC44OTIzIDMuNjEwMjcgMTAuNzk5OCAzLjQwNDA5IDEwLjc5OTggMy4xODg5NEMxMC43OTk4IDIuOTczNzkgMTAuODkyMyAyLjc2NzYxIDExLjA1NjggMi42MTY0MkwxMy42NDk2IDAuMjMyMTY1QzEzLjk4OTIgLTAuMDgwMTI1OSAxNC41MzY0IC0wLjA3Njk2MzYgMTQuODcxOSAwLjIzOTIyOFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
 */
export const ChatSquareArrow:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path opacity="0.5" d="M12.9839 22.4946L13.521 21.5879C13.9375 20.8846 14.1458 20.5329 14.4804 20.3384C14.815 20.144 15.2362 20.1367 16.0786 20.1222C17.3224 20.1008 18.1024 20.0247 18.7566 19.7539C19.9704 19.2515 20.9348 18.2878 21.4375 17.0748C21.6226 16.6283 21.7169 16.123 21.7648 15.4515C21.7903 15.0958 21.803 14.9179 21.708 14.7756C21.6131 14.6332 21.4329 14.5728 21.0723 14.452C19.5606 13.9454 16.0584 12.6565 14.1 11.0008C11.8925 9.13444 9.91782 5.3404 9.21118 3.88615C9.0707 3.59705 9.00047 3.4525 8.87715 3.37622C8.75383 3.29994 8.59743 3.30159 8.28463 3.3049C6.25036 3.32638 5.32915 3.43899 4.36538 4.02919C3.69883 4.43737 3.13843 4.9974 2.72997 5.66349C2 6.85388 2 8.47432 2 11.7152V12.7053C2 15.0118 2 16.1651 2.37707 17.0748C2.87984 18.2878 3.84419 19.2515 5.05797 19.7539C5.71215 20.0247 6.49219 20.1008 7.73591 20.1222C8.57837 20.1367 8.9996 20.144 9.33417 20.3384C9.66874 20.5329 9.87702 20.8846 10.2936 21.5879L10.8307 22.4946C11.3094 23.3028 12.5052 23.3028 12.9839 22.4946Z" fill="currentColor"/>
<path fillRule="evenodd" clipRule="evenodd" d="M14.8719 0.239228C15.2073 0.55542 15.2039 1.06491 14.8643 1.3772L13.7622 2.39066C14.721 2.39968 15.6433 2.42144 16.4756 2.47388C17.1913 2.51898 17.8616 2.5879 18.4457 2.69609C19.0178 2.80206 19.569 2.95641 20.0069 3.20311C20.8206 3.66166 21.5058 4.29141 22.0058 5.04157C22.4867 5.76328 22.6986 6.57904 22.8003 7.56276C22.8998 8.52518 22.8998 9.72792 22.8998 11.253V11.2953C22.8998 11.7397 22.5128 12.1 22.0355 12.1C21.5582 12.1 21.1712 11.7397 21.1712 11.2953C21.1712 9.7186 21.1703 8.59328 21.0797 7.71697C20.9904 6.85308 20.8201 6.31502 20.5369 5.89005C20.1817 5.35695 19.6936 4.90776 19.1118 4.57993C18.9261 4.47529 18.6031 4.36615 18.1084 4.27451C17.6257 4.18509 17.0367 4.12228 16.3589 4.07957C15.5758 4.03023 14.7025 4.00921 13.7763 4.00026L14.8643 5.00068C15.2039 5.31298 15.2073 5.82246 14.8719 6.13865C14.5364 6.45485 13.9892 6.45801 13.6496 6.14572L11.0568 3.76146C10.8923 3.61027 10.7998 3.40409 10.7998 3.18894C10.7998 2.97379 10.8923 2.76761 11.0568 2.61642L13.6496 0.232165C13.9892 -0.0801259 14.5364 -0.0769636 14.8719 0.239228Z" fill="currentColor"/>
    </IconBase>
))

ChatSquareArrow.displayName = "ChatSquareArrow"