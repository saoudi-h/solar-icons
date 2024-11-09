/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik03Ljc2NDkgOS44OTc1OEM3Ljc1MDMgOS42NDQyNCA3Ljc1IDkuMzA0MzMgNy43NSA4LjgwNzZWMi4wNjg3NEM4LjkwNTggMiAxMC4yOTk2IDIgMTIgMkMxMy43MDA0IDIgMTUuMDk0MiAyIDE2LjI1IDIuMDY4NzRWOC44MDc2QzE2LjI1IDkuMzA0MzMgMTYuMjQ5NyA5LjY0NDI0IDE2LjIzNTEgOS44OTc1OEMxNi4yMiAxMC4xNjAxIDE2LjE5MjMgMTAuMjQwOCAxNi4xODU0IDEwLjI1NjNDMTYuMDM4MyAxMC41ODc2IDE1LjY3NTMgMTAuNzY2MiAxNS4zMjMgMTAuNjgwN0MxNS4zMDY2IDEwLjY3NjcgMTUuMjI1NyAxMC42NDkzIDE1LjAwODUgMTAuNTAxMkMxNC43OTg5IDEwLjM1ODIgMTQuNTI5NCAxMC4xNTEgMTQuMTM1OCA5Ljg0Nzk5TDE0LjA2ODggOS43OTYzNkMxMy42OTg2IDkuNTEwOTQgMTMuNDEwMSA5LjI4ODUxIDEzLjA5NTggOS4xNTE5NkMxMi4zOTY4IDguODQ4MjggMTEuNjAzMiA4Ljg0ODI4IDEwLjkwNDIgOS4xNTE5NkMxMC41ODk5IDkuMjg4NTEgMTAuMzAxNCA5LjUxMDk0IDkuOTMxMiA5Ljc5NjM2TDkuODY0MTkgOS44NDc5OUM5LjQ3MDYyIDEwLjE1MSA5LjIwMTEyIDEwLjM1ODIgOC45OTE0OCAxMC41MDEyQzguNzc0MjggMTAuNjQ5MyA4LjY5MzQyIDEwLjY3NjcgOC42NzY5NSAxMC42ODA3QzguMzI0NzEgMTAuNzY2MiA3Ljk2MTcxIDEwLjU4NzYgNy44MTQ1NyAxMC4yNTYzQzcuODA3NjkgMTAuMjQwOCA3Ljc4MDAzIDEwLjE2MDEgNy43NjQ5IDkuODk3NThaIiBmaWxsPSIjMUMyNzREIi8+CjxwYXRoIGQ9Ik0xMiAyMkM3LjI4NTk1IDIyIDQuOTI4OTMgMjIgMy40NjQ0NyAyMC41MzU1QzIgMTkuMDcxMSAyIDE2LjcxNCAyIDEyQzIgNy4yODU5NSAyIDQuOTI4OTMgMy40NjQ0NyAzLjQ2NDQ3QzQuMTQ4NSAyLjc4MDQzIDUuMDI3MjcgMi40MTU5IDYuMjUgMi4yMjE2NEw2LjI1IDguODMxQzYuMjUgOS4yOTg1OCA2LjI0OTk5IDkuNjgyMSA2LjI2NzM5IDkuOTgzODlDNi4yODQ1NCAxMC4yODE2IDYuMzIxNDUgMTAuNTg5OSA2LjQ0MzcxIDEwLjg2NTJDNi44ODUxMyAxMS44NTkgNy45NzQxMyAxMi4zOTQ5IDkuMDMwODcgMTIuMTM4M0M5LjMyMzU2IDEyLjA2NzMgOS41OTAzOSAxMS45MDg0IDkuODM2NzIgMTEuNzQwNEMxMC4wODY0IDExLjU3IDEwLjM5MDMgMTEuMzM2IDEwLjc2MDggMTEuMDUwOEwxMC43NzkzIDExLjAzNjVDMTEuMjQ4NyAxMC42NzUxIDExLjM4MDggMTAuNTgwNCAxMS41MDE5IDEwLjUyNzdDMTEuODE5NiAxMC4zODk3IDEyLjE4MDQgMTAuMzg5NyAxMi40OTgxIDEwLjUyNzdDMTIuNjE5MiAxMC41ODA0IDEyLjc1MTMgMTAuNjc1MSAxMy4yMjA3IDExLjAzNjVMMTMuMjM5MiAxMS4wNTA4QzEzLjYwOTcgMTEuMzM2IDEzLjkxMzYgMTEuNTcgMTQuMTYzMyAxMS43NDA0QzE0LjQwOTYgMTEuOTA4NCAxNC42NzY0IDEyLjA2NzMgMTQuOTY5MSAxMi4xMzgzQzE2LjAyNTkgMTIuMzk0OSAxNy4xMTQ5IDExLjg1OSAxNy41NTYzIDEwLjg2NTJDMTcuNjc4NiAxMC41ODk5IDE3LjcxNTUgMTAuMjgxNiAxNy43MzI2IDkuOTgzODlDMTcuNzUgOS42ODIxMSAxNy43NSA5LjI5ODU5IDE3Ljc1IDguODMxMDJWMi4yMjE2NEMxOC45NzI3IDIuNDE1OSAxOS44NTE1IDIuNzgwNDMgMjAuNTM1NSAzLjQ2NDQ3QzIyIDQuOTI4OTMgMjIgNy4yODU5NSAyMiAxMkMyMiAxNi43MTQgMjIgMTkuMDcxMSAyMC41MzU1IDIwLjUzNTVDMTkuMDcxMSAyMiAxNi43MTQgMjIgMTIgMjJaIiBmaWxsPSIjMUMyNzREIi8+Cjwvc3ZnPgo=)
 */
export const BookmarkSquareMinimalistic:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path d="M7.7649 9.89758C7.7503 9.64424 7.75 9.30433 7.75 8.8076V2.06874C8.9058 2 10.2996 2 12 2C13.7004 2 15.0942 2 16.25 2.06874V8.8076C16.25 9.30433 16.2497 9.64424 16.2351 9.89758C16.22 10.1601 16.1923 10.2408 16.1854 10.2563C16.0383 10.5876 15.6753 10.7662 15.323 10.6807C15.3066 10.6767 15.2257 10.6493 15.0085 10.5012C14.7989 10.3582 14.5294 10.151 14.1358 9.84799L14.0688 9.79636C13.6986 9.51094 13.4101 9.28851 13.0958 9.15196C12.3968 8.84828 11.6032 8.84828 10.9042 9.15196C10.5899 9.28851 10.3014 9.51094 9.9312 9.79636L9.86419 9.84799C9.47062 10.151 9.20112 10.3582 8.99148 10.5012C8.77428 10.6493 8.69342 10.6767 8.67695 10.6807C8.32471 10.7662 7.96171 10.5876 7.81457 10.2563C7.80769 10.2408 7.78003 10.1601 7.7649 9.89758Z" fill="currentColor"/>
<path d="M12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.1485 2.78043 5.02727 2.4159 6.25 2.22164L6.25 8.831C6.25 9.29858 6.24999 9.6821 6.26739 9.98389C6.28454 10.2816 6.32145 10.5899 6.44371 10.8652C6.88513 11.859 7.97413 12.3949 9.03087 12.1383C9.32356 12.0673 9.59039 11.9084 9.83672 11.7404C10.0864 11.57 10.3903 11.336 10.7608 11.0508L10.7793 11.0365C11.2487 10.6751 11.3808 10.5804 11.5019 10.5277C11.8196 10.3897 12.1804 10.3897 12.4981 10.5277C12.6192 10.5804 12.7513 10.6751 13.2207 11.0365L13.2392 11.0508C13.6097 11.336 13.9136 11.57 14.1633 11.7404C14.4096 11.9084 14.6764 12.0673 14.9691 12.1383C16.0259 12.3949 17.1149 11.859 17.5563 10.8652C17.6786 10.5899 17.7155 10.2816 17.7326 9.98389C17.75 9.68211 17.75 9.29859 17.75 8.83102V2.22164C18.9727 2.4159 19.8515 2.78043 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22Z" fill="currentColor"/>
    </IconBase>
))

BookmarkSquareMinimalistic.displayName = "BookmarkSquareMinimalistic"
