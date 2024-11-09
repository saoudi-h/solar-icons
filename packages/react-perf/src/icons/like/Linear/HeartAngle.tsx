/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik04Ljk2MTczIDE4LjkxMDlMOS40MjYwNSAxOC4zMjE5TDguOTYxNzMgMTguOTEwOVpNMTIgNS41MDA2M0wxMS40NTk2IDYuMDIwNzNDMTEuNDYzIDYuMDI0MjEgMTEuNDY2NCA2LjAyNzY1IDExLjQ2OTggNi4wMzEwNkwxMiA1LjUwMDYzWk0xNS4wMzgzIDE4LjkxMDlMMTUuNTAyNiAxOS40OTk5TDE1LjAzODMgMTguOTEwOVpNMTMuNDY5OCA4LjAzMDM0QzEzLjc2MjcgOC4zMjMxOCAxNC4yMzc2IDguMzIzMDkgMTQuNTMwNCA4LjAzMDE0QzE0LjgyMzMgNy43MzcyIDE0LjgyMzIgNy4yNjIzMiAxNC41MzAyIDYuOTY5NDhMMTMuNDY5OCA4LjAzMDM0Wk05LjQyNjA1IDE4LjMyMTlDNy45MTAzOSAxNy4xMjcxIDYuMjUzMDcgMTUuOTYwMyA0LjkzODI5IDE0LjQ3OThDMy42NDkyMiAxMy4wMjgyIDIuNzUgMTEuMzM0NSAyLjc1IDkuMTM3MUgxLjI1QzEuMjUgMTEuODAyNiAyLjM2MDUgMTMuODM2MSAzLjgxNjcyIDE1LjQ3NThDNS4yNDcyMyAxNy4wODY2IDcuMDcwNzcgMTguMzc1MiA4LjQ5NzQyIDE5LjQ5OTlMOS40MjYwNSAxOC4zMjE5Wk0yLjc1IDkuMTM3MUMyLjc1IDYuOTg2MjMgMy45NjUzNyA1LjE4MjUyIDUuNjI0MzYgNC40MjQxOUM3LjIzNjA3IDMuNjg3NDggOS40MDE2NiAzLjg4MjU4IDExLjQ1OTYgNi4wMjA3M0wxMi41NDA0IDQuOTgwNTNDMTAuMDk4NSAyLjQ0MzUyIDcuMjY0MDkgMi4wMjUzOSA1LjAwMDc2IDMuMDU5OTZDMi43ODQ3MSA0LjA3MjkyIDEuMjUgNi40MjUwMyAxLjI1IDkuMTM3MUgyLjc1Wk04LjQ5NzQyIDE5LjQ5OTlDOS4wMDk2NSAxOS45MDM3IDkuNTU5NTQgMjAuMzM0MyAxMC4xMTY4IDIwLjY1OTlDMTAuNjczOSAyMC45ODU0IDExLjMwOTYgMjEuMjUgMTIgMjEuMjVWMTkuNzVDMTEuNjkwNCAxOS43NSAxMS4zMjYxIDE5LjYyOTMgMTAuODczNiAxOS4zNjQ4QzEwLjQyMTMgMTkuMTAwNSA5Ljk1MjA4IDE4LjczNjYgOS40MjYwNSAxOC4zMjE5TDguNDk3NDIgMTkuNDk5OVpNMTUuNTAyNiAxOS40OTk5QzE2LjkyOTIgMTguMzc1MiAxOC43NTI4IDE3LjA4NjYgMjAuMTgzMyAxNS40NzU4QzIxLjYzOTUgMTMuODM2MSAyMi43NSAxMS44MDI2IDIyLjc1IDkuMTM3MUgyMS4yNUMyMS4yNSAxMS4zMzQ1IDIwLjM1MDggMTMuMDI4MiAxOS4wNjE3IDE0LjQ3OThDMTcuNzQ2OSAxNS45NjAzIDE2LjA4OTYgMTcuMTI3MSAxNC41NzQgMTguMzIxOUwxNS41MDI2IDE5LjQ5OTlaTTIyLjc1IDkuMTM3MUMyMi43NSA2LjQyNTAzIDIxLjIxNTMgNC4wNzI5MiAxOC45OTkyIDMuMDU5OTZDMTYuNzM1OSAyLjAyNTM5IDEzLjkwMTUgMi40NDM1MiAxMS40NTk2IDQuOTgwNTNMMTIuNTQwNCA2LjAyMDczQzE0LjU5ODMgMy44ODI1OCAxNi43NjM5IDMuNjg3NDggMTguMzc1NiA0LjQyNDE5QzIwLjAzNDYgNS4xODI1MiAyMS4yNSA2Ljk4NjIzIDIxLjI1IDkuMTM3MUgyMi43NVpNMTQuNTc0IDE4LjMyMTlDMTQuMDQ3OSAxOC43MzY2IDEzLjU3ODcgMTkuMTAwNSAxMy4xMjY0IDE5LjM2NDhDMTIuNjczOSAxOS42MjkzIDEyLjMwOTYgMTkuNzUgMTIgMTkuNzVWMjEuMjVDMTIuNjkwNCAyMS4yNSAxMy4zMjYxIDIwLjk4NTQgMTMuODgzMiAyMC42NTk5QzE0LjQ0MDUgMjAuMzM0MyAxNC45OTAzIDE5LjkwMzcgMTUuNTAyNiAxOS40OTk5TDE0LjU3NCAxOC4zMjE5Wk0xMS40Njk4IDYuMDMxMDZMMTMuNDY5OCA4LjAzMDM0TDE0LjUzMDIgNi45Njk0OEwxMi41MzAyIDQuOTcwMjFMMTEuNDY5OCA2LjAzMTA2WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
 */
export const HeartAngle:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path d="M8.96173 18.9109L9.42605 18.3219L8.96173 18.9109ZM12 5.50063L11.4596 6.02073C11.463 6.02421 11.4664 6.02765 11.4698 6.03106L12 5.50063ZM15.0383 18.9109L15.5026 19.4999L15.0383 18.9109ZM13.4698 8.03034C13.7627 8.32318 14.2376 8.32309 14.5304 8.03014C14.8233 7.7372 14.8232 7.26232 14.5302 6.96948L13.4698 8.03034ZM9.42605 18.3219C7.91039 17.1271 6.25307 15.9603 4.93829 14.4798C3.64922 13.0282 2.75 11.3345 2.75 9.1371H1.25C1.25 11.8026 2.3605 13.8361 3.81672 15.4758C5.24723 17.0866 7.07077 18.3752 8.49742 19.4999L9.42605 18.3219ZM2.75 9.1371C2.75 6.98623 3.96537 5.18252 5.62436 4.42419C7.23607 3.68748 9.40166 3.88258 11.4596 6.02073L12.5404 4.98053C10.0985 2.44352 7.26409 2.02539 5.00076 3.05996C2.78471 4.07292 1.25 6.42503 1.25 9.1371H2.75ZM8.49742 19.4999C9.00965 19.9037 9.55954 20.3343 10.1168 20.6599C10.6739 20.9854 11.3096 21.25 12 21.25V19.75C11.6904 19.75 11.3261 19.6293 10.8736 19.3648C10.4213 19.1005 9.95208 18.7366 9.42605 18.3219L8.49742 19.4999ZM15.5026 19.4999C16.9292 18.3752 18.7528 17.0866 20.1833 15.4758C21.6395 13.8361 22.75 11.8026 22.75 9.1371H21.25C21.25 11.3345 20.3508 13.0282 19.0617 14.4798C17.7469 15.9603 16.0896 17.1271 14.574 18.3219L15.5026 19.4999ZM22.75 9.1371C22.75 6.42503 21.2153 4.07292 18.9992 3.05996C16.7359 2.02539 13.9015 2.44352 11.4596 4.98053L12.5404 6.02073C14.5983 3.88258 16.7639 3.68748 18.3756 4.42419C20.0346 5.18252 21.25 6.98623 21.25 9.1371H22.75ZM14.574 18.3219C14.0479 18.7366 13.5787 19.1005 13.1264 19.3648C12.6739 19.6293 12.3096 19.75 12 19.75V21.25C12.6904 21.25 13.3261 20.9854 13.8832 20.6599C14.4405 20.3343 14.9903 19.9037 15.5026 19.4999L14.574 18.3219ZM11.4698 6.03106L13.4698 8.03034L14.5302 6.96948L12.5302 4.97021L11.4698 6.03106Z" fill="currentColor"/>
    </IconBase>
))

HeartAngle.displayName = "HeartAngle"
