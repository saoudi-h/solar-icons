/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTUuNjc4NiAxLjY4MDgzQzE1Ljg1NSAyLjA1NTYyIDE1LjY5NDEgMi41MDI0MiAxNS4zMTkzIDIuNjc4NzlMOS44NTUxNSA1LjI1MDE4QzkuODg0NTMgNS4yNTAxOCA5LjkxNDAxIDUuMjUwMTggOS45NDM1OCA1LjI1MDE4SDE0LjA1NjRDMTUuODk0MiA1LjI1MDE2IDE3LjM0OTggNS4yNTAxNSAxOC40ODkgNS40MDMzMUMxOS42NjE0IDUuNTYwOTQgMjAuNjEwNCA1Ljg5MzA2IDIxLjM1ODggNi42NDE0MkMyMi4xMDcxIDcuMzg5NzggMjIuNDM5MiA4LjMzODczIDIyLjU5NjkgOS41MTExNUMyMi43NSAxMC42NTA0IDIyLjc1IDEyLjEwNiAyMi43NSAxMy45NDM4VjE0LjA1NjZDMjIuNzUgMTUuODk0NCAyMi43NSAxNy4zNSAyMi41OTY5IDE4LjQ4OTJDMjIuNDM5MiAxOS42NjE2IDIyLjEwNzEgMjAuNjEwNiAyMS4zNTg4IDIxLjM1ODlDMjAuNjEwNCAyMi4xMDczIDE5LjY2MTQgMjIuNDM5NCAxOC40ODkgMjIuNTk3QzE3LjM0OTggMjIuNzUwMiAxNS44OTQyIDIyLjc1MDIgMTQuMDU2NCAyMi43NTAySDkuOTQzNTlDOC4xMDU4MyAyMi43NTAyIDYuNjUwMTkgMjIuNzUwMiA1LjUxMDk4IDIyLjU5N0M0LjMzODU2IDIyLjQzOTQgMy4zODk2MSAyMi4xMDczIDIuNjQxMjQgMjEuMzU4OUMxLjg5Mjg4IDIwLjYxMDYgMS41NjA3NiAxOS42NjE2IDEuNDAzMTQgMTguNDg5MkMxLjI0OTk3IDE3LjM1IDEuMjQ5OTggMTUuODk0NCAxLjI1IDE0LjA1NjZWMTMuOTQzOEMxLjI0OTk4IDEyLjEwNiAxLjI0OTk3IDEwLjY1MDQgMS40MDMxNCA5LjUxMTE1QzEuNTYwNzYgOC4zMzg3MyAxLjg5Mjg4IDcuMzg5NzggMi42NDEyNCA2LjY0MTQyQzMuMzg5NjEgNS44OTMwNiA0LjMzODU2IDUuNTYwOTQgNS41MTA5OCA1LjQwMzMxQzUuNzE0OTUgNS4zNzU4OSA1LjkyOTA3IDUuMzUzMzcgNi4xNTM3MiA1LjMzNDg5QzYuMTYyNTcgNS4zMzAyOSA2LjE3MTU1IDUuMzI1ODUgNi4xODA2NSA1LjMyMTU2TDE0LjY4MDcgMS4zMjE1NkMxNS4wNTU0IDEuMTQ1MTkgMTUuNTAyMiAxLjMwNjA0IDE1LjY3ODYgMS42ODA4M1pNNS43MTA4NSA2Ljg4OTk0QzQuNzA0NzYgNy4wMjUyIDQuMTI1MTEgNy4yNzg4NyAzLjcwMTkgNy43MDIwOEMzLjI3ODY5IDguMTI1MjkgMy4wMjUwMiA4LjcwNDk0IDIuODg5NzYgOS43MTEwM0MyLjc1MTU5IDEwLjczODcgMi43NSAxMi4wOTM0IDIuNzUgMTQuMDAwMkMyLjc1IDE1LjkwNyAyLjc1MTU5IDE3LjI2MTcgMi44ODk3NiAxOC4yODkzQzMuMDI1MDIgMTkuMjk1NCAzLjI3ODY5IDE5Ljg3NTEgMy43MDE5IDIwLjI5ODNDNC4xMjUxMSAyMC43MjE1IDQuNzA0NzYgMjAuOTc1MiA1LjcxMDg1IDIxLjExMDRDNi43Mzg1MSAyMS4yNDg2IDguMDkzMTggMjEuMjUwMiAxMCAyMS4yNTAySDE0QzE1LjkwNjggMjEuMjUwMiAxNy4yNjE1IDIxLjI0ODYgMTguMjg5MiAyMS4xMTA0QzE5LjI5NTIgMjAuOTc1MiAxOS44NzQ5IDIwLjcyMTUgMjAuMjk4MSAyMC4yOTgzQzIwLjcyMTMgMTkuODc1MSAyMC45NzUgMTkuMjk1NCAyMS4xMTAyIDE4LjI4OTNDMjEuMjQ4NCAxNy4yNjE3IDIxLjI1IDE1LjkwNyAyMS4yNSAxNC4wMDAyQzIxLjI1IDEyLjA5MzQgMjEuMjQ4NCAxMC43Mzg3IDIxLjExMDIgOS43MTEwM0MyMC45NzUgOC43MDQ5NCAyMC43MjEzIDguMTI1MjkgMjAuMjk4MSA3LjcwMjA4QzE5Ljg3NDkgNy4yNzg4NyAxOS4yOTUyIDcuMDI1MiAxOC4yODkyIDYuODg5OTRDMTcuMjYxNSA2Ljc1MTc3IDE1LjkwNjggNi43NTAxOCAxNCA2Ljc1MDE4SDEwQzguMDkzMTggNi43NTAxOCA2LjczODUxIDYuNzUxNzcgNS43MTA4NSA2Ljg4OTk0Wk00LjI1IDExLjAwMDJDNC4yNSA5LjQ4MTM5IDUuNDgxMjIgOC4yNTAxOCA3IDguMjUwMThIMTdDMTguNTE4OCA4LjI1MDE4IDE5Ljc1IDkuNDgxMzkgMTkuNzUgMTEuMDAwMkMxOS43NSAxMi41MTkgMTguNTE4OCAxMy43NTAyIDE3IDEzLjc1MDJIN0M1LjQ4MTIyIDEzLjc1MDIgNC4yNSAxMi41MTkgNC4yNSAxMS4wMDAyWk0xNS43NSAxMi4yNTAyVjExLjUwMDJDMTUuNzUgMTEuMDg2IDE1LjQxNDIgMTAuNzUwMiAxNSAxMC43NTAyQzE0LjU4NTggMTAuNzUwMiAxNC4yNSAxMS4wODYgMTQuMjUgMTEuNTAwMlYxMi4yNTAySDdDNi4zMDk2NCAxMi4yNTAyIDUuNzUgMTEuNjkwNSA1Ljc1IDExLjAwMDJDNS43NSAxMC4zMDk4IDYuMzA5NjQgOS43NTAxOCA3IDkuNzUwMThIMTdDMTcuNjkwNCA5Ljc1MDE4IDE4LjI1IDEwLjMwOTggMTguMjUgMTEuMDAwMkMxOC4yNSAxMS42OTA1IDE3LjY5MDQgMTIuMjUwMiAxNyAxMi4yNTAySDE1Ljc1Wk03LjUgMTYuMjUwMkM3LjA4NTc5IDE2LjI1MDIgNi43NSAxNi41ODYgNi43NSAxNy4wMDAyQzYuNzUgMTcuNDE0NCA3LjA4NTc5IDE3Ljc1MDIgNy41IDE3Ljc1MDJDNy45MTQyMSAxNy43NTAyIDguMjUgMTcuNDE0NCA4LjI1IDE3LjAwMDJDOC4yNSAxNi41ODYgNy45MTQyMSAxNi4yNTAyIDcuNSAxNi4yNTAyWk01LjI1IDE3LjAwMDJDNS4yNSAxNS43NTc1IDYuMjU3MzYgMTQuNzUwMiA3LjUgMTQuNzUwMkM4Ljc0MjY0IDE0Ljc1MDIgOS43NSAxNS43NTc1IDkuNzUgMTcuMDAwMkM5Ljc1IDE4LjI0MjggOC43NDI2NCAxOS4yNTAyIDcuNSAxOS4yNTAyQzYuMjU3MzYgMTkuMjUwMiA1LjI1IDE4LjI0MjggNS4yNSAxNy4wMDAyWk0xMi4yNSAxNy4wMDAyQzEyLjI1IDE2LjU4NiAxMi41ODU4IDE2LjI1MDIgMTMgMTYuMjUwMkgxOEMxOC40MTQyIDE2LjI1MDIgMTguNzUgMTYuNTg2IDE4Ljc1IDE3LjAwMDJDMTguNzUgMTcuNDE0NCAxOC40MTQyIDE3Ljc1MDIgMTggMTcuNzUwMkgxM0MxMi41ODU4IDE3Ljc1MDIgMTIuMjUgMTcuNDE0NCAxMi4yNSAxNy4wMDAyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
 */
export const Radio:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M15.6786 1.68083C15.855 2.05562 15.6941 2.50242 15.3193 2.67879L9.85515 5.25018C9.88453 5.25018 9.91401 5.25018 9.94358 5.25018H14.0564C15.8942 5.25016 17.3498 5.25015 18.489 5.40331C19.6614 5.56094 20.6104 5.89306 21.3588 6.64142C22.1071 7.38978 22.4392 8.33873 22.5969 9.51115C22.75 10.6504 22.75 12.106 22.75 13.9438V14.0566C22.75 15.8944 22.75 17.35 22.5969 18.4892C22.4392 19.6616 22.1071 20.6106 21.3588 21.3589C20.6104 22.1073 19.6614 22.4394 18.489 22.597C17.3498 22.7502 15.8942 22.7502 14.0564 22.7502H9.94359C8.10583 22.7502 6.65019 22.7502 5.51098 22.597C4.33856 22.4394 3.38961 22.1073 2.64124 21.3589C1.89288 20.6106 1.56076 19.6616 1.40314 18.4892C1.24997 17.35 1.24998 15.8944 1.25 14.0566V13.9438C1.24998 12.106 1.24997 10.6504 1.40314 9.51115C1.56076 8.33873 1.89288 7.38978 2.64124 6.64142C3.38961 5.89306 4.33856 5.56094 5.51098 5.40331C5.71495 5.37589 5.92907 5.35337 6.15372 5.33489C6.16257 5.33029 6.17155 5.32585 6.18065 5.32156L14.6807 1.32156C15.0554 1.14519 15.5022 1.30604 15.6786 1.68083ZM5.71085 6.88994C4.70476 7.0252 4.12511 7.27887 3.7019 7.70208C3.27869 8.12529 3.02502 8.70494 2.88976 9.71103C2.75159 10.7387 2.75 12.0934 2.75 14.0002C2.75 15.907 2.75159 17.2617 2.88976 18.2893C3.02502 19.2954 3.27869 19.8751 3.7019 20.2983C4.12511 20.7215 4.70476 20.9752 5.71085 21.1104C6.73851 21.2486 8.09318 21.2502 10 21.2502H14C15.9068 21.2502 17.2615 21.2486 18.2892 21.1104C19.2952 20.9752 19.8749 20.7215 20.2981 20.2983C20.7213 19.8751 20.975 19.2954 21.1102 18.2893C21.2484 17.2617 21.25 15.907 21.25 14.0002C21.25 12.0934 21.2484 10.7387 21.1102 9.71103C20.975 8.70494 20.7213 8.12529 20.2981 7.70208C19.8749 7.27887 19.2952 7.0252 18.2892 6.88994C17.2615 6.75177 15.9068 6.75018 14 6.75018H10C8.09318 6.75018 6.73851 6.75177 5.71085 6.88994ZM4.25 11.0002C4.25 9.48139 5.48122 8.25018 7 8.25018H17C18.5188 8.25018 19.75 9.48139 19.75 11.0002C19.75 12.519 18.5188 13.7502 17 13.7502H7C5.48122 13.7502 4.25 12.519 4.25 11.0002ZM15.75 12.2502V11.5002C15.75 11.086 15.4142 10.7502 15 10.7502C14.5858 10.7502 14.25 11.086 14.25 11.5002V12.2502H7C6.30964 12.2502 5.75 11.6905 5.75 11.0002C5.75 10.3098 6.30964 9.75018 7 9.75018H17C17.6904 9.75018 18.25 10.3098 18.25 11.0002C18.25 11.6905 17.6904 12.2502 17 12.2502H15.75ZM7.5 16.2502C7.08579 16.2502 6.75 16.586 6.75 17.0002C6.75 17.4144 7.08579 17.7502 7.5 17.7502C7.91421 17.7502 8.25 17.4144 8.25 17.0002C8.25 16.586 7.91421 16.2502 7.5 16.2502ZM5.25 17.0002C5.25 15.7575 6.25736 14.7502 7.5 14.7502C8.74264 14.7502 9.75 15.7575 9.75 17.0002C9.75 18.2428 8.74264 19.2502 7.5 19.2502C6.25736 19.2502 5.25 18.2428 5.25 17.0002ZM12.25 17.0002C12.25 16.586 12.5858 16.2502 13 16.2502H18C18.4142 16.2502 18.75 16.586 18.75 17.0002C18.75 17.4144 18.4142 17.7502 18 17.7502H13C12.5858 17.7502 12.25 17.4144 12.25 17.0002Z" fill="currentColor"/>
    </IconBase>
))

Radio.displayName = "Radio"
