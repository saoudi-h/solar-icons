/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMiAxMkMyIDcuMjg1OTUgMiA0LjkyODkzIDMuNDY0NDcgMy40NjQ0N0M0LjkyODkzIDIgNy4yODU5NSAyIDEyIDJDMTYuNzE0IDIgMTkuMDcxMSAyIDIwLjUzNTUgMy40NjQ0N0MyMiA0LjkyODkzIDIyIDcuMjg1OTUgMjIgMTJDMjIgMTYuNzE0IDIyIDE5LjA3MTEgMjAuNTM1NSAyMC41MzU1QzE5LjA3MTEgMjIgMTYuNzE0IDIyIDEyIDIyQzcuMjg1OTUgMjIgNC45Mjg5MyAyMiAzLjQ2NDQ3IDIwLjUzNTVDMiAxOS4wNzExIDIgMTYuNzE0IDIgMTJaTTE0IDcuNzVDMTMuNTg1OCA3Ljc1IDEzLjI1IDcuNDE0MjEgMTMuMjUgN0MxMy4yNSA2LjU4NTc5IDEzLjU4NTggNi4yNSAxNCA2LjI1SDE3QzE3LjQxNDIgNi4yNSAxNy43NSA2LjU4NTc5IDE3Ljc1IDdWMTBDMTcuNzUgMTAuNDE0MiAxNy40MTQyIDEwLjc1IDE3IDEwLjc1QzE2LjU4NTggMTAuNzUgMTYuMjUgMTAuNDE0MiAxNi4yNSAxMFY4LjgxMDY2TDE0LjAzMDMgMTEuMDMwM0MxMy43Mzc0IDExLjMyMzIgMTMuMjYyNiAxMS4zMjMyIDEyLjk2OTcgMTEuMDMwM0MxMi42NzY4IDEwLjczNzQgMTIuNjc2OCAxMC4yNjI2IDEyLjk2OTcgOS45Njk2N0wxNS4xODkzIDcuNzVIMTRaTTExLjAzMDMgMTIuOTY5N0MxMS4zMjMyIDEzLjI2MjYgMTEuMzIzMiAxMy43Mzc0IDExLjAzMDMgMTQuMDMwM0w4LjgxMDY2IDE2LjI1SDEwQzEwLjQxNDIgMTYuMjUgMTAuNzUgMTYuNTg1OCAxMC43NSAxN0MxMC43NSAxNy40MTQyIDEwLjQxNDIgMTcuNzUgMTAgMTcuNzVIN0M2LjU4NTc5IDE3Ljc1IDYuMjUgMTcuNDE0MiA2LjI1IDE3VjE0QzYuMjUgMTMuNTg1OCA2LjU4NTc5IDEzLjI1IDcgMTMuMjVDNy40MTQyMSAxMy4yNSA3Ljc1IDEzLjU4NTggNy43NSAxNFYxNS4xODkzTDkuOTY5NjcgMTIuOTY5N0MxMC4yNjI2IDEyLjY3NjggMTAuNzM3NCAxMi42NzY4IDExLjAzMDMgMTIuOTY5N1pNMTAuNzUgN0MxMC43NSA3LjQxNDIxIDEwLjQxNDIgNy43NSAxMCA3Ljc1SDguODEwNjZMMTEuMDMwMyA5Ljk2OTY3QzExLjMyMzIgMTAuMjYyNiAxMS4zMjMyIDEwLjczNzQgMTEuMDMwMyAxMS4wMzAzQzEwLjczNzQgMTEuMzIzMiAxMC4yNjI2IDExLjMyMzIgOS45Njk2NyAxMS4wMzAzTDcuNzUgOC44MTA2NlYxMEM3Ljc1IDEwLjQxNDIgNy40MTQyMSAxMC43NSA3IDEwLjc1QzYuNTg1NzkgMTAuNzUgNi4yNSAxMC40MTQyIDYuMjUgMTBWN0M2LjI1IDYuNTg1NzkgNi41ODU3OSA2LjI1IDcgNi4yNUgxMEMxMC40MTQyIDYuMjUgMTAuNzUgNi41ODU3OSAxMC43NSA3Wk0xMi45Njk3IDE0LjAzMDNDMTIuNjc2OCAxMy43Mzc0IDEyLjY3NjggMTMuMjYyNiAxMi45Njk3IDEyLjk2OTdDMTMuMjYyNiAxMi42NzY4IDEzLjczNzQgMTIuNjc2OCAxNC4wMzAzIDEyLjk2OTdMMTYuMjUgMTUuMTg5M1YxNEMxNi4yNSAxMy41ODU4IDE2LjU4NTggMTMuMjUgMTcgMTMuMjVDMTcuNDE0MiAxMy4yNSAxNy43NSAxMy41ODU4IDE3Ljc1IDE0VjE3QzE3Ljc1IDE3LjQxNDIgMTcuNDE0MiAxNy43NSAxNyAxNy43NUgxNEMxMy41ODU4IDE3Ljc1IDEzLjI1IDE3LjQxNDIgMTMuMjUgMTdDMTMuMjUgMTYuNTg1OCAxMy41ODU4IDE2LjI1IDE0IDE2LjI1SDE1LjE4OTNMMTIuOTY5NyAxNC4wMzAzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
 */
export const MaximizeSquare2:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12ZM14 7.75C13.5858 7.75 13.25 7.41421 13.25 7C13.25 6.58579 13.5858 6.25 14 6.25H17C17.4142 6.25 17.75 6.58579 17.75 7V10C17.75 10.4142 17.4142 10.75 17 10.75C16.5858 10.75 16.25 10.4142 16.25 10V8.81066L14.0303 11.0303C13.7374 11.3232 13.2626 11.3232 12.9697 11.0303C12.6768 10.7374 12.6768 10.2626 12.9697 9.96967L15.1893 7.75H14ZM11.0303 12.9697C11.3232 13.2626 11.3232 13.7374 11.0303 14.0303L8.81066 16.25H10C10.4142 16.25 10.75 16.5858 10.75 17C10.75 17.4142 10.4142 17.75 10 17.75H7C6.58579 17.75 6.25 17.4142 6.25 17V14C6.25 13.5858 6.58579 13.25 7 13.25C7.41421 13.25 7.75 13.5858 7.75 14V15.1893L9.96967 12.9697C10.2626 12.6768 10.7374 12.6768 11.0303 12.9697ZM10.75 7C10.75 7.41421 10.4142 7.75 10 7.75H8.81066L11.0303 9.96967C11.3232 10.2626 11.3232 10.7374 11.0303 11.0303C10.7374 11.3232 10.2626 11.3232 9.96967 11.0303L7.75 8.81066V10C7.75 10.4142 7.41421 10.75 7 10.75C6.58579 10.75 6.25 10.4142 6.25 10V7C6.25 6.58579 6.58579 6.25 7 6.25H10C10.4142 6.25 10.75 6.58579 10.75 7ZM12.9697 14.0303C12.6768 13.7374 12.6768 13.2626 12.9697 12.9697C13.2626 12.6768 13.7374 12.6768 14.0303 12.9697L16.25 15.1893V14C16.25 13.5858 16.5858 13.25 17 13.25C17.4142 13.25 17.75 13.5858 17.75 14V17C17.75 17.4142 17.4142 17.75 17 17.75H14C13.5858 17.75 13.25 17.4142 13.25 17C13.25 16.5858 13.5858 16.25 14 16.25H15.1893L12.9697 14.0303Z" fill="currentColor"/>
    </IconBase>
))

MaximizeSquare2.displayName = "MaximizeSquare2"
