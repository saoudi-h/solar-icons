/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxNy41MjI4IDYuNDc3MTUgMjIgMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJaTTkuOTUxOTcgNi4yNUM5LjUyMjExIDYuMjQ5OTMgOS4xMjAyNCA2LjI0OTg2IDguNzkxOTIgNi4yOTg5MUM4LjQyMTAyIDYuMzU0MzIgOC4wNCA2LjQ4NTMgNy43MzU0MiA2LjgyMzcxQzcuNDQxMDMgNy4xNTA4MiA3LjMzNzEgNy41NDA2MSA3LjI5MjA0IDcuOTEyOTRDNy4yNDk5MyA4LjI2MDk2IDcuMjQ5OTYgOC42OTIzOCA3LjI1IDkuMTc5NTRMNy4yNSA5LjIyMjIyQzcuMjUgOS42MzY0NCA3LjU4NTc5IDkuOTcyMjIgOCA5Ljk3MjIyQzguNDE0MjEgOS45NzIyMiA4Ljc1IDkuNjM2NDQgOC43NSA5LjIyMjIyQzguNzUgOC42NzkzMSA4Ljc1MTI5IDguMzQwMTEgOC43ODExOCA4LjA5MzEzQzguNzk1MiA3Ljk3NzI1IDguODEyNzMgNy45MTA0OCA4LjgyNjkgNy44NzIyMUM4LjgzODg1IDcuODM5OTMgOC44NDczOSA3LjgzMDQ2IDguODUwMjMgNy44MjczMUw4Ljg1MTA0IDcuODI2MzdDOC44NTI0IDcuODI0NzMgOC44NTM0IDcuODIzNTMgOC44NjI0MiA3LjgxOTRDOC44NzkwNCA3LjgxMTggOC45MjE2OCA3Ljc5NjE3IDkuMDEzNTQgNy43ODI0NUM5LjIxNzY1IDcuNzUxOTYgOS41MDUxMSA3Ljc1IDEwIDcuNzVIMTEuMjVWOS41QzExLjI1IDkuOTE0MjEgMTEuNTg1OCAxMC4yNSAxMiAxMC4yNUMxMi40MTQyIDEwLjI1IDEyLjc1IDkuOTE0MjEgMTIuNzUgOS41VjcuNzVIMTRDMTQuNDk0OSA3Ljc1IDE0Ljc4MjQgNy43NTE5NiAxNC45ODY1IDcuNzgyNDVDMTUuMDc4MyA3Ljc5NjE3IDE1LjEyMSA3LjgxMTggMTUuMTM3NiA3LjgxOTRDMTUuMTQ2NiA3LjgyMzUzIDE1LjE0NzYgNy44MjQ3MyAxNS4xNDkgNy44MjYzN0wxNS4xNDk2IDcuODI3MTZDMTUuMTUyNSA3LjgzMDMxIDE1LjE2MTEgNy44Mzk5MyAxNS4xNzMxIDcuODcyMjFDMTUuMTg3MyA3LjkxMDQ4IDE1LjIwNDggNy45NzcyNSAxNS4yMTg4IDguMDkzMTNDMTUuMjQ4NyA4LjM0MDExIDE1LjI1IDguNjc5MzEgMTUuMjUgOS4yMjIyMkMxNS4yNSA5LjYzNjQ0IDE1LjU4NTggOS45NzIyMiAxNiA5Ljk3MjIyQzE2LjQxNDIgOS45NzIyMiAxNi43NSA5LjYzNjQ0IDE2Ljc1IDkuMjIyMjJMMTYuNzUgOS4xNzk1M0MxNi43NSA4LjY5MjM4IDE2Ljc1MDEgOC4yNjA5NiAxNi43MDggNy45MTI5NEMxNi42NjI5IDcuNTQwNjEgMTYuNTU5IDcuMTUwODIgMTYuMjY0NiA2LjgyMzcxQzE1Ljk2IDYuNDg1MyAxNS41NzkgNi4zNTQzMiAxNS4yMDgxIDYuMjk4OTFDMTQuODc5OCA2LjI0OTg2IDE0LjQ3NzkgNi4yNDk5MyAxNC4wNDggNi4yNUg5Ljk1MTk3Wk04IDExLjI1QzcuNTg1NzkgMTEuMjUgNy4yNSAxMS41ODU4IDcuMjUgMTJDNy4yNSAxMi40MTQyIDcuNTg1NzkgMTIuNzUgOCAxMi43NUgxNkMxNi40MTQyIDEyLjc1IDE2Ljc1IDEyLjQxNDIgMTYuNzUgMTJDMTYuNzUgMTEuNTg1OCAxNi40MTQyIDExLjI1IDE2IDExLjI1SDhaTTEyLjc1IDE0LjVDMTIuNzUgMTQuMDg1OCAxMi40MTQyIDEzLjc1IDEyIDEzLjc1QzExLjU4NTggMTMuNzUgMTEuMjUgMTQuMDg1OCAxMS4yNSAxNC41VjE2LjI1SDkuNUM5LjA4NTc5IDE2LjI1IDguNzUgMTYuNTg1OCA4Ljc1IDE3QzguNzUgMTcuNDE0MiA5LjA4NTc5IDE3Ljc1IDkuNSAxNy43NUgxNC41QzE0LjkxNDIgMTcuNzUgMTUuMjUgMTcuNDE0MiAxNS4yNSAxN0MxNS4yNSAxNi41ODU4IDE0LjkxNDIgMTYuMjUgMTQuNSAxNi4yNUgxMi43NVYxNC41WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
 */
export const TextCrossCircle:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2ZM9.95197 6.25C9.52211 6.24993 9.12024 6.24986 8.79192 6.29891C8.42102 6.35432 8.04 6.4853 7.73542 6.82371C7.44103 7.15082 7.3371 7.54061 7.29204 7.91294C7.24993 8.26096 7.24996 8.69238 7.25 9.17954L7.25 9.22222C7.25 9.63644 7.58579 9.97222 8 9.97222C8.41421 9.97222 8.75 9.63644 8.75 9.22222C8.75 8.67931 8.75129 8.34011 8.78118 8.09313C8.7952 7.97725 8.81273 7.91048 8.8269 7.87221C8.83885 7.83993 8.84739 7.83046 8.85023 7.82731L8.85104 7.82637C8.8524 7.82473 8.8534 7.82353 8.86242 7.8194C8.87904 7.8118 8.92168 7.79617 9.01354 7.78245C9.21765 7.75196 9.50511 7.75 10 7.75H11.25V9.5C11.25 9.91421 11.5858 10.25 12 10.25C12.4142 10.25 12.75 9.91421 12.75 9.5V7.75H14C14.4949 7.75 14.7824 7.75196 14.9865 7.78245C15.0783 7.79617 15.121 7.8118 15.1376 7.8194C15.1466 7.82353 15.1476 7.82473 15.149 7.82637L15.1496 7.82716C15.1525 7.83031 15.1611 7.83993 15.1731 7.87221C15.1873 7.91048 15.2048 7.97725 15.2188 8.09313C15.2487 8.34011 15.25 8.67931 15.25 9.22222C15.25 9.63644 15.5858 9.97222 16 9.97222C16.4142 9.97222 16.75 9.63644 16.75 9.22222L16.75 9.17953C16.75 8.69238 16.7501 8.26096 16.708 7.91294C16.6629 7.54061 16.559 7.15082 16.2646 6.82371C15.96 6.4853 15.579 6.35432 15.2081 6.29891C14.8798 6.24986 14.4779 6.24993 14.048 6.25H9.95197ZM8 11.25C7.58579 11.25 7.25 11.5858 7.25 12C7.25 12.4142 7.58579 12.75 8 12.75H16C16.4142 12.75 16.75 12.4142 16.75 12C16.75 11.5858 16.4142 11.25 16 11.25H8ZM12.75 14.5C12.75 14.0858 12.4142 13.75 12 13.75C11.5858 13.75 11.25 14.0858 11.25 14.5V16.25H9.5C9.08579 16.25 8.75 16.5858 8.75 17C8.75 17.4142 9.08579 17.75 9.5 17.75H14.5C14.9142 17.75 15.25 17.4142 15.25 17C15.25 16.5858 14.9142 16.25 14.5 16.25H12.75V14.5Z" fill="currentColor"/>
    </IconBase>
))

TextCrossCircle.displayName = "TextCrossCircle"
