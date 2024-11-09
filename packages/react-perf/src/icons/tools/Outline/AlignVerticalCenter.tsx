/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNy40Njc3NyA0LjI1SDcuNTMyMjJDNy45NzIwMSA0LjI0OTk4IDguMzUxMzYgNC4yNDk5NyA4LjY2MjY1IDQuMjc4MThDOC45OTE4MyA0LjMwODAyIDkuMzE3NzkgNC4zNzQwOCA5LjYyNSA0LjU1MTQ0QzkuOTY3MDQgNC43NDg5MiAxMC4yNTExIDUuMDMyOTYgMTAuNDQ4NiA1LjM3NUMxMC42MjU5IDUuNjgyMjEgMTAuNjkyIDYuMDA4MTcgMTAuNzIxOCA2LjMzNzM1QzEwLjc1IDYuNjQ4NjUgMTAuNzUgNy4wMjggMTAuNzUgNy40Njc4TDEwLjc1IDExLjI1SDEzLjI1VjkuNDY3OEMxMy4yNSA5LjAyOCAxMy4yNSA4LjY0ODY1IDEzLjI3ODIgOC4zMzczNUMxMy4zMDggOC4wMDgxNyAxMy4zNzQxIDcuNjgyMjEgMTMuNTUxNCA3LjM3NUMxMy43NDg5IDcuMDMyOTYgMTQuMDMzIDYuNzQ4OTIgMTQuMzc1IDYuNTUxNDRDMTQuNjgyMiA2LjM3NDA3IDE1LjAwODIgNi4zMDgwMiAxNS4zMzczIDYuMjc4MThDMTUuNjQ4NiA2LjI0OTk3IDE2LjAyOCA2LjI0OTk4IDE2LjQ2NzggNi4yNUgxNi41MzIyQzE2Ljk3MiA2LjI0OTk4IDE3LjM1MTQgNi4yNDk5NyAxNy42NjI3IDYuMjc4MThDMTcuOTkxOCA2LjMwODAyIDE4LjMxNzggNi4zNzQwOCAxOC42MjUgNi41NTE0NEMxOC45NjcgNi43NDg5MiAxOS4yNTExIDcuMDMyOTYgMTkuNDQ4NiA3LjM3NUMxOS42MjU5IDcuNjgyMjEgMTkuNjkyIDguMDA4MTcgMTkuNzIxOCA4LjMzNzM1QzE5Ljc1IDguNjQ4NjQgMTkuNzUgOS4wMjc5NyAxOS43NSA5LjQ2Nzc1VjExLjI1SDIyQzIyLjQxNDIgMTEuMjUgMjIuNzUgMTEuNTg1OCAyMi43NSAxMkMyMi43NSAxMi40MTQyIDIyLjQxNDIgMTIuNzUgMjIgMTIuNzVIMTkuNzVWMTQuNTMyMkMxOS43NSAxNC45NzIgMTkuNzUgMTUuMzUxNCAxOS43MjE4IDE1LjY2MjdDMTkuNjkyIDE1Ljk5MTggMTkuNjI1OSAxNi4zMTc4IDE5LjQ0ODYgMTYuNjI1QzE5LjI1MTEgMTYuOTY3IDE4Ljk2NyAxNy4yNTExIDE4LjYyNSAxNy40NDg2QzE4LjMxNzggMTcuNjI1OSAxNy45OTE4IDE3LjY5MiAxNy42NjI3IDE3LjcyMThDMTcuMzUxNCAxNy43NSAxNi45NzIgMTcuNzUgMTYuNTMyMiAxNy43NUgxNi40Njc4QzE2LjAyOCAxNy43NSAxNS42NDg2IDE3Ljc1IDE1LjMzNzMgMTcuNzIxOEMxNS4wMDgyIDE3LjY5MiAxNC42ODIyIDE3LjYyNTkgMTQuMzc1IDE3LjQ0ODZDMTQuMDMzIDE3LjI1MTEgMTMuNzQ4OSAxNi45NjcgMTMuNTUxNCAxNi42MjVDMTMuMzc0MSAxNi4zMTc4IDEzLjMwOCAxNS45OTE4IDEzLjI3ODIgMTUuNjYyN0MxMy4yNSAxNS4zNTE0IDEzLjI1IDE0Ljk3MiAxMy4yNSAxNC41MzIyVjEyLjc1SDEwLjc1VjE2LjUzMjJDMTAuNzUgMTYuOTcyIDEwLjc1IDE3LjM1MTQgMTAuNzIxOCAxNy42NjI3QzEwLjY5MiAxNy45OTE4IDEwLjYyNTkgMTguMzE3OCAxMC40NDg2IDE4LjYyNUMxMC4yNTExIDE4Ljk2NyA5Ljk2NzA0IDE5LjI1MTEgOS42MjUgMTkuNDQ4NkM5LjMxNzc5IDE5LjYyNTkgOC45OTE4MyAxOS42OTIgOC42NjI2NSAxOS43MjE4QzguMzUxMzUgMTkuNzUgNy45NzIgMTkuNzUgNy41MzIyMSAxOS43NUg3LjQ2Nzc5QzcuMDI4IDE5Ljc1IDYuNjQ4NjUgMTkuNzUgNi4zMzczNSAxOS43MjE4QzYuMDA4MTcgMTkuNjkyIDUuNjgyMjEgMTkuNjI1OSA1LjM3NSAxOS40NDg2QzUuMDMyOTYgMTkuMjUxMSA0Ljc0ODkyIDE4Ljk2NyA0LjU1MTQ0IDE4LjYyNUM0LjM3NDA3IDE4LjMxNzggNC4zMDgwMiAxNy45OTE4IDQuMjc4MTggMTcuNjYyN0M0LjI0OTk3IDE3LjM1MTQgNC4yNDk5OCAxNi45NzIgNC4yNSAxNi41MzIyTDQuMjUgMTIuNzVIMkMxLjU4NTc5IDEyLjc1IDEuMjUgMTIuNDE0MiAxLjI1IDEyQzEuMjUgMTEuNTg1OCAxLjU4NTc5IDExLjI1IDIgMTEuMjVINC4yNUw0LjI1IDcuNUM0LjI1IDcuNDg5MjIgNC4yNSA3LjQ3ODQ4IDQuMjUgNy40Njc3OEM0LjI0OTk4IDcuMDI3OTkgNC4yNDk5NyA2LjY0ODY0IDQuMjc4MTggNi4zMzczNUM0LjMwODAyIDYuMDA4MTcgNC4zNzQwNyA1LjY4MjIxIDQuNTUxNDQgNS4zNzVDNC43NDg5MiA1LjAzMjk2IDUuMDMyOTYgNC43NDg5MiA1LjM3NSA0LjU1MTQ0QzUuNjgyMjEgNC4zNzQwNyA2LjAwODE3IDQuMzA4MDIgNi4zMzczNSA0LjI3ODE4QzYuNjQ4NjQgNC4yNDk5NyA3LjAyNzk4IDQuMjQ5OTggNy40Njc3NyA0LjI1Wk01Ljc1IDEyLjAwMUM1Ljc1IDEyLjAwMDcgNS43NSAxMi4wMDA0IDUuNzUgMTJDNS43NSAxMS45OTk3IDUuNzUgMTEuOTk5MyA1Ljc1IDExLjk5OUw1Ljc1IDcuNUM1Ljc1IDcuMDE4ODkgNS43NTA3MiA2LjcwODIgNS43NzIwNiA2LjQ3Mjc1QzUuNzkyNDYgNi4yNDc2IDUuODI2ODkgNi4xNjU4NiA1Ljg1MDQ4IDYuMTI1QzUuOTE2MzEgNi4wMTA5OSA2LjAxMDk4IDUuOTE2MzEgNi4xMjUgNS44NTA0OEM2LjE2NTg2IDUuODI2ODkgNi4yNDc2IDUuNzkyNDcgNi40NzI3NCA1Ljc3MjA2QzYuNzA4MiA1Ljc1MDcyIDcuMDE4ODkgNS43NSA3LjUgNS43NUM3Ljk4MTExIDUuNzUgOC4yOTE4IDUuNzUwNzIgOC41MjcyNSA1Ljc3MjA2QzguNzUyNCA1Ljc5MjQ3IDguODM0MTQgNS44MjY4OSA4Ljg3NSA1Ljg1MDQ4QzguOTg5MDEgNS45MTYzMSA5LjA4MzY5IDYuMDEwOTkgOS4xNDk1MiA2LjEyNUM5LjE3MzExIDYuMTY1ODcgOS4yMDc1NCA2LjI0NzYgOS4yMjc5NCA2LjQ3Mjc1QzkuMjQ5MjggNi43MDgyIDkuMjUgNy4wMTg4OSA5LjI1IDcuNUw5LjI1IDE2LjVDOS4yNSAxNi45ODExIDkuMjQ5MjggMTcuMjkxOCA5LjIyNzk0IDE3LjUyNzNDOS4yMDc1MyAxNy43NTI0IDkuMTczMTEgMTcuODM0MSA5LjE0OTUyIDE3Ljg3NUM5LjA4MzY5IDE3Ljk4OSA4Ljk4OTAxIDE4LjA4MzcgOC44NzUgMTguMTQ5NUM4LjgzNDE0IDE4LjE3MzEgOC43NTI0IDE4LjIwNzUgOC41MjcyNSAxOC4yMjc5QzguMjkxOCAxOC4yNDkzIDcuOTgxMTEgMTguMjUgNy41IDE4LjI1QzcuMDE4ODkgMTguMjUgNi43MDgyIDE4LjI0OTMgNi40NzI3NCAxOC4yMjc5QzYuMjQ3NiAxOC4yMDc1IDYuMTY1ODYgMTguMTczMSA2LjEyNSAxOC4xNDk1QzYuMDEwOTggMTguMDgzNyA1LjkxNjMxIDE3Ljk4OSA1Ljg1MDQ4IDE3Ljg3NUM1LjgyNjg5IDE3LjgzNDEgNS43OTI0NiAxNy43NTI0IDUuNzcyMDYgMTcuNTI3M0M1Ljc1MDcyIDE3LjI5MTggNS43NSAxNi45ODExIDUuNzUgMTYuNVYxMi4wMDFaTTE0Ljc1IDE0LjVDMTQuNzUgMTQuOTgxMSAxNC43NTA3IDE1LjI5MTggMTQuNzcyMSAxNS41MjczQzE0Ljc5MjUgMTUuNzUyNCAxNC44MjY5IDE1LjgzNDEgMTQuODUwNSAxNS44NzVDMTQuOTE2MyAxNS45ODkgMTUuMDExIDE2LjA4MzcgMTUuMTI1IDE2LjE0OTVDMTUuMTY1OSAxNi4xNzMxIDE1LjI0NzYgMTYuMjA3NSAxNS40NzI3IDE2LjIyNzlDMTUuNzA4MiAxNi4yNDkzIDE2LjAxODkgMTYuMjUgMTYuNSAxNi4yNUMxNi45ODExIDE2LjI1IDE3LjI5MTggMTYuMjQ5MyAxNy41MjczIDE2LjIyNzlDMTcuNzUyNCAxNi4yMDc1IDE3LjgzNDEgMTYuMTczMSAxNy44NzUgMTYuMTQ5NUMxNy45ODkgMTYuMDgzNyAxOC4wODM3IDE1Ljk4OSAxOC4xNDk1IDE1Ljg3NUMxOC4xNzMxIDE1LjgzNDEgMTguMjA3NSAxNS43NTI0IDE4LjIyNzkgMTUuNTI3M0MxOC4yNDkzIDE1LjI5MTggMTguMjUgMTQuOTgxMSAxOC4yNSAxNC41VjkuNUMxOC4yNSA5LjAxODg5IDE4LjI0OTMgOC43MDgyIDE4LjIyNzkgOC40NzI3NUMxOC4yMDc1IDguMjQ3NiAxOC4xNzMxIDguMTY1ODYgMTguMTQ5NSA4LjEyNUMxOC4wODM3IDguMDEwOTkgMTcuOTg5IDcuOTE2MzEgMTcuODc1IDcuODUwNDhDMTcuODM0MSA3LjgyNjg5IDE3Ljc1MjQgNy43OTI0NyAxNy41MjczIDcuNzcyMDZDMTcuMjkxOCA3Ljc1MDcyIDE2Ljk4MTEgNy43NSAxNi41IDcuNzVDMTYuMDE4OSA3Ljc1IDE1LjcwODIgNy43NTA3MiAxNS40NzI3IDcuNzcyMDZDMTUuMjQ3NiA3Ljc5MjQ3IDE1LjE2NTkgNy44MjY4OSAxNS4xMjUgNy44NTA0OEMxNS4wMTEgNy45MTYzMSAxNC45MTYzIDguMDEwOTkgMTQuODUwNSA4LjEyNUMxNC44MjY5IDguMTY1ODYgMTQuNzkyNSA4LjI0NzYgMTQuNzcyMSA4LjQ3Mjc1QzE0Ljc1MDcgOC43MDgyIDE0Ljc1IDkuMDE4ODkgMTQuNzUgOS41VjE0LjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
 */
export const AlignVerticalCenter:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M7.46777 4.25H7.53222C7.97201 4.24998 8.35136 4.24997 8.66265 4.27818C8.99183 4.30802 9.31779 4.37408 9.625 4.55144C9.96704 4.74892 10.2511 5.03296 10.4486 5.375C10.6259 5.68221 10.692 6.00817 10.7218 6.33735C10.75 6.64865 10.75 7.028 10.75 7.4678L10.75 11.25H13.25V9.4678C13.25 9.028 13.25 8.64865 13.2782 8.33735C13.308 8.00817 13.3741 7.68221 13.5514 7.375C13.7489 7.03296 14.033 6.74892 14.375 6.55144C14.6822 6.37407 15.0082 6.30802 15.3373 6.27818C15.6486 6.24997 16.028 6.24998 16.4678 6.25H16.5322C16.972 6.24998 17.3514 6.24997 17.6627 6.27818C17.9918 6.30802 18.3178 6.37408 18.625 6.55144C18.967 6.74892 19.2511 7.03296 19.4486 7.375C19.6259 7.68221 19.692 8.00817 19.7218 8.33735C19.75 8.64864 19.75 9.02797 19.75 9.46775V11.25H22C22.4142 11.25 22.75 11.5858 22.75 12C22.75 12.4142 22.4142 12.75 22 12.75H19.75V14.5322C19.75 14.972 19.75 15.3514 19.7218 15.6627C19.692 15.9918 19.6259 16.3178 19.4486 16.625C19.2511 16.967 18.967 17.2511 18.625 17.4486C18.3178 17.6259 17.9918 17.692 17.6627 17.7218C17.3514 17.75 16.972 17.75 16.5322 17.75H16.4678C16.028 17.75 15.6486 17.75 15.3373 17.7218C15.0082 17.692 14.6822 17.6259 14.375 17.4486C14.033 17.2511 13.7489 16.967 13.5514 16.625C13.3741 16.3178 13.308 15.9918 13.2782 15.6627C13.25 15.3514 13.25 14.972 13.25 14.5322V12.75H10.75V16.5322C10.75 16.972 10.75 17.3514 10.7218 17.6627C10.692 17.9918 10.6259 18.3178 10.4486 18.625C10.2511 18.967 9.96704 19.2511 9.625 19.4486C9.31779 19.6259 8.99183 19.692 8.66265 19.7218C8.35135 19.75 7.972 19.75 7.53221 19.75H7.46779C7.028 19.75 6.64865 19.75 6.33735 19.7218C6.00817 19.692 5.68221 19.6259 5.375 19.4486C5.03296 19.2511 4.74892 18.967 4.55144 18.625C4.37407 18.3178 4.30802 17.9918 4.27818 17.6627C4.24997 17.3514 4.24998 16.972 4.25 16.5322L4.25 12.75H2C1.58579 12.75 1.25 12.4142 1.25 12C1.25 11.5858 1.58579 11.25 2 11.25H4.25L4.25 7.5C4.25 7.48922 4.25 7.47848 4.25 7.46778C4.24998 7.02799 4.24997 6.64864 4.27818 6.33735C4.30802 6.00817 4.37407 5.68221 4.55144 5.375C4.74892 5.03296 5.03296 4.74892 5.375 4.55144C5.68221 4.37407 6.00817 4.30802 6.33735 4.27818C6.64864 4.24997 7.02798 4.24998 7.46777 4.25ZM5.75 12.001C5.75 12.0007 5.75 12.0004 5.75 12C5.75 11.9997 5.75 11.9993 5.75 11.999L5.75 7.5C5.75 7.01889 5.75072 6.7082 5.77206 6.47275C5.79246 6.2476 5.82689 6.16586 5.85048 6.125C5.91631 6.01099 6.01098 5.91631 6.125 5.85048C6.16586 5.82689 6.2476 5.79247 6.47274 5.77206C6.7082 5.75072 7.01889 5.75 7.5 5.75C7.98111 5.75 8.2918 5.75072 8.52725 5.77206C8.7524 5.79247 8.83414 5.82689 8.875 5.85048C8.98901 5.91631 9.08369 6.01099 9.14952 6.125C9.17311 6.16587 9.20754 6.2476 9.22794 6.47275C9.24928 6.7082 9.25 7.01889 9.25 7.5L9.25 16.5C9.25 16.9811 9.24928 17.2918 9.22794 17.5273C9.20753 17.7524 9.17311 17.8341 9.14952 17.875C9.08369 17.989 8.98901 18.0837 8.875 18.1495C8.83414 18.1731 8.7524 18.2075 8.52725 18.2279C8.2918 18.2493 7.98111 18.25 7.5 18.25C7.01889 18.25 6.7082 18.2493 6.47274 18.2279C6.2476 18.2075 6.16586 18.1731 6.125 18.1495C6.01098 18.0837 5.91631 17.989 5.85048 17.875C5.82689 17.8341 5.79246 17.7524 5.77206 17.5273C5.75072 17.2918 5.75 16.9811 5.75 16.5V12.001ZM14.75 14.5C14.75 14.9811 14.7507 15.2918 14.7721 15.5273C14.7925 15.7524 14.8269 15.8341 14.8505 15.875C14.9163 15.989 15.011 16.0837 15.125 16.1495C15.1659 16.1731 15.2476 16.2075 15.4727 16.2279C15.7082 16.2493 16.0189 16.25 16.5 16.25C16.9811 16.25 17.2918 16.2493 17.5273 16.2279C17.7524 16.2075 17.8341 16.1731 17.875 16.1495C17.989 16.0837 18.0837 15.989 18.1495 15.875C18.1731 15.8341 18.2075 15.7524 18.2279 15.5273C18.2493 15.2918 18.25 14.9811 18.25 14.5V9.5C18.25 9.01889 18.2493 8.7082 18.2279 8.47275C18.2075 8.2476 18.1731 8.16586 18.1495 8.125C18.0837 8.01099 17.989 7.91631 17.875 7.85048C17.8341 7.82689 17.7524 7.79247 17.5273 7.77206C17.2918 7.75072 16.9811 7.75 16.5 7.75C16.0189 7.75 15.7082 7.75072 15.4727 7.77206C15.2476 7.79247 15.1659 7.82689 15.125 7.85048C15.011 7.91631 14.9163 8.01099 14.8505 8.125C14.8269 8.16586 14.7925 8.2476 14.7721 8.47275C14.7507 8.7082 14.75 9.01889 14.75 9.5V14.5Z" fill="currentColor"/>
    </IconBase>
))

AlignVerticalCenter.displayName = "AlignVerticalCenter"