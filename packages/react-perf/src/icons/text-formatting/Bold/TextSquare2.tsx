/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTQuNDY3MiAyLjAwMDJDMTQuNDEwNSAxLjk5ODkgMTQuMzU1MSAyLjAwMzkzIDE0LjMwMTggMi4wMTQ2NEMxMy41NTExIDEuOTk5OTkgMTIuNzIxOCAyIDExLjgwNjkgMkwxMS42OTMyIDJDMTAuNzc4MiAyIDkuOTQ4OTUgMS45OTk5OSA5LjE5ODI1IDIuMDE0NjRDOS4xNDQ4OCAyLjAwMzkzIDkuMDg5NTIgMS45OTg5IDkuMDMyODIgMi4wMDAyQzYuNTQ4MTkgMi4wNTcxMyA0Ljc3NzU2IDIuMjc5ODcgMy41MzcxNiAzLjUyMjc3TDMuNTI5NzkgMy41MzAxN0wzLjUyMjc3IDMuNTM3MTZDMi4yNzk4NyA0Ljc3NzU2IDIuMDU3MTIgNi41NDgxOSAyLjAwMDIgOS4wMzI4M0MxLjk5ODkgOS4wODk1MiAyLjAwMzkzIDkuMTQ0ODggMi4wMTQ2NCA5LjE5ODI1QzIuMDEyNyA5LjI5NzQ2IDIuMDExMDIgOS4zOTgwNCAyLjAwOTU2IDkuNUgzLjc1QzQuOTkyNjQgOS41IDYgMTAuNTA3NCA2IDExLjc1QzYgMTIuOTkyNiA0Ljk5MjY0IDE0IDMuNzUgMTRIMi4wMDk1NkMyLjAxMTAyIDE0LjEwMiAyLjAxMjcgMTQuMjAyNiAyLjAxNDY0IDE0LjMwMThDMi4wMDM5MyAxNC4zNTUyIDEuOTk4OSAxNC40MTA1IDIuMDAwMiAxNC40NjcyQzIuMDU3MTMgMTYuOTUxOCAyLjI3OTg3IDE4LjcyMjQgMy41MjI3NyAxOS45NjI4TDMuNTI5OTcgMTkuOTdMMy41MzcxNiAxOS45NzcyQzQuNzc3NTYgMjEuMjIwMSA2LjU0ODE4IDIxLjQ0MjkgOS4wMzI4MyAyMS40OTk4QzkuMDg5NTIgMjEuNTAxMSA5LjE0NDg4IDIxLjQ5NjEgOS4xOTgyNSAyMS40ODU0QzkuOTQ4OTQgMjEuNSAxMC43NzgyIDIxLjUgMTEuNjkzMSAyMS41SDExLjgwNjlDMTIuNzIxOCAyMS41IDEzLjU1MTEgMjEuNSAxNC4zMDE4IDIxLjQ4NTRDMTQuMzU1MiAyMS40OTYxIDE0LjQxMDUgMjEuNTAxMSAxNC40NjcyIDIxLjQ5OThDMTYuOTUxOCAyMS40NDI5IDE4LjcyMjQgMjEuMjIwMSAxOS45NjI4IDE5Ljk3NzJMMTkuOTY5OSAxOS45NzAyTDE5Ljk3NzIgMTkuOTYyOEMyMS4yMjAxIDE4LjcyMjQgMjEuNDQyOSAxNi45NTE4IDIxLjQ5OTggMTQuNDY3MkMyMS41MDExIDE0LjQxMDUgMjEuNDk2MSAxNC4zNTUyIDIxLjQ4NTQgMTQuMzAxOEMyMS40ODczIDE0LjIwMjYgMjEuNDg5IDE0LjEwMiAyMS40OTA0IDE0SDE5Ljc1QzE4LjUwNzQgMTQgMTcuNSAxMi45OTI2IDE3LjUgMTEuNzVDMTcuNSAxMC41MDc0IDE4LjUwNzQgOS41IDE5Ljc1IDkuNUgyMS40OTA0QzIxLjQ4OSA5LjM5ODA0IDIxLjQ4NzMgOS4yOTc0NiAyMS40ODU0IDkuMTk4MjVDMjEuNDk2MSA5LjE0NDg4IDIxLjUwMTEgOS4wODk1MiAyMS40OTk4IDkuMDMyODNDMjEuNDQyOSA2LjU0ODE5IDIxLjIyMDEgNC43Nzc1NiAxOS45NzcyIDMuNTM3MTZMMTkuOTcwMSAzLjUzMDAxTDE5Ljk2MjggMy41MjI3N0MxOC43MjI0IDIuMjc5ODcgMTYuOTUxOCAyLjA1NzEzIDE0LjQ2NzIgMi4wMDAyWk03Ljc1IDdDNy4zMzU3OSA3IDcgNy4zMzU3OSA3IDcuNzVDNyA4LjE2NDIxIDcuMzM1NzkgOC41IDcuNzUgOC41SDExVjE1Ljc1QzExIDE2LjE2NDIgMTEuMzM1OCAxNi41IDExLjc1IDE2LjVDMTIuMTY0MiAxNi41IDEyLjUgMTYuMTY0MiAxMi41IDE1Ljc1VjguNUgxNS43NUMxNi4xNjQyIDguNSAxNi41IDguMTY0MjEgMTYuNSA3Ljc1QzE2LjUgNy4zMzU3OSAxNi4xNjQyIDcgMTUuNzUgN0g3Ljc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTkgMTEuNzVDMTkgMTEuMzM1OCAxOS4zMzU4IDExIDE5Ljc1IDExSDIxLjc1QzIyLjE2NDIgMTEgMjIuNSAxMS4zMzU4IDIyLjUgMTEuNzVDMjIuNSAxMi4xNjQyIDIyLjE2NDIgMTIuNSAyMS43NSAxMi41SDE5Ljc1QzE5LjMzNTggMTIuNSAxOSAxMi4xNjQyIDE5IDExLjc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMS43NSAxMUMxLjMzNTc5IDExIDEgMTEuMzM1OCAxIDExLjc1QzEgMTIuMTY0MiAxLjMzNTc5IDEyLjUgMS43NSAxMi41SDMuNzVDNC4xNjQyMSAxMi41IDQuNSAxMi4xNjQyIDQuNSAxMS43NUM0LjUgMTEuMzM1OCA0LjE2NDIxIDExIDMuNzUgMTFIMS43NVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
 */
export const TextSquare2:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M14.4672 2.0002C14.4105 1.9989 14.3551 2.00393 14.3018 2.01464C13.5511 1.99999 12.7218 2 11.8069 2L11.6932 2C10.7782 2 9.94895 1.99999 9.19825 2.01464C9.14488 2.00393 9.08952 1.9989 9.03282 2.0002C6.54819 2.05713 4.77756 2.27987 3.53716 3.52277L3.52979 3.53017L3.52277 3.53716C2.27987 4.77756 2.05712 6.54819 2.0002 9.03283C1.9989 9.08952 2.00393 9.14488 2.01464 9.19825C2.0127 9.29746 2.01102 9.39804 2.00956 9.5H3.75C4.99264 9.5 6 10.5074 6 11.75C6 12.9926 4.99264 14 3.75 14H2.00956C2.01102 14.102 2.0127 14.2026 2.01464 14.3018C2.00393 14.3552 1.9989 14.4105 2.0002 14.4672C2.05713 16.9518 2.27987 18.7224 3.52277 19.9628L3.52997 19.97L3.53716 19.9772C4.77756 21.2201 6.54818 21.4429 9.03283 21.4998C9.08952 21.5011 9.14488 21.4961 9.19825 21.4854C9.94894 21.5 10.7782 21.5 11.6931 21.5H11.8069C12.7218 21.5 13.5511 21.5 14.3018 21.4854C14.3552 21.4961 14.4105 21.5011 14.4672 21.4998C16.9518 21.4429 18.7224 21.2201 19.9628 19.9772L19.9699 19.9702L19.9772 19.9628C21.2201 18.7224 21.4429 16.9518 21.4998 14.4672C21.5011 14.4105 21.4961 14.3552 21.4854 14.3018C21.4873 14.2026 21.489 14.102 21.4904 14H19.75C18.5074 14 17.5 12.9926 17.5 11.75C17.5 10.5074 18.5074 9.5 19.75 9.5H21.4904C21.489 9.39804 21.4873 9.29746 21.4854 9.19825C21.4961 9.14488 21.5011 9.08952 21.4998 9.03283C21.4429 6.54819 21.2201 4.77756 19.9772 3.53716L19.9701 3.53001L19.9628 3.52277C18.7224 2.27987 16.9518 2.05713 14.4672 2.0002ZM7.75 7C7.33579 7 7 7.33579 7 7.75C7 8.16421 7.33579 8.5 7.75 8.5H11V15.75C11 16.1642 11.3358 16.5 11.75 16.5C12.1642 16.5 12.5 16.1642 12.5 15.75V8.5H15.75C16.1642 8.5 16.5 8.16421 16.5 7.75C16.5 7.33579 16.1642 7 15.75 7H7.75Z" fill="currentColor"/>
<path d="M19 11.75C19 11.3358 19.3358 11 19.75 11H21.75C22.1642 11 22.5 11.3358 22.5 11.75C22.5 12.1642 22.1642 12.5 21.75 12.5H19.75C19.3358 12.5 19 12.1642 19 11.75Z" fill="currentColor"/>
<path d="M1.75 11C1.33579 11 1 11.3358 1 11.75C1 12.1642 1.33579 12.5 1.75 12.5H3.75C4.16421 12.5 4.5 12.1642 4.5 11.75C4.5 11.3358 4.16421 11 3.75 11H1.75Z" fill="currentColor"/>
    </IconBase>
))

TextSquare2.displayName = "TextSquare2"
