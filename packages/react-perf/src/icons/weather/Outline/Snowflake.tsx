/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIuMDAwMSAxLjI1QzEyLjQxNDMgMS4yNSAxMi43NTAxIDEuNTg1NzkgMTIuNzUwMSAyVjQuMTg5MzRMMTQuNDY5NyAyLjQ2OTY3QzE0Ljc2MjYgMi4xNzY3OCAxNS4yMzc1IDIuMTc2NzggMTUuNTMwNCAyLjQ2OTY3QzE1LjgyMzMgMi43NjI1NiAxNS44MjMzIDMuMjM3NDQgMTUuNTMwNCAzLjUzMDMzTDEyLjc1MDEgNi4zMTA2NlYxMC43MDFMMTYuNTUyMSA4LjUwNTg4TDE3LjU2OTggNC43MDc4OEMxNy42NzcgNC4zMDc3OCAxOC4wODgyIDQuMDcwMzQgMTguNDg4MyA0LjE3NzU1QzE4Ljg4ODQgNC4yODQ3NSAxOS4xMjU5IDQuNjk2MDEgMTkuMDE4NyA1LjA5NjExTDE4LjM4OTIgNy40NDUyMkwyMC4yODUyIDYuMzUwNTVDMjAuNjQ0IDYuMTQzNDQgMjEuMTAyNiA2LjI2NjM1IDIxLjMwOTggNi42MjUwN0MyMS41MTY5IDYuOTgzNzkgMjEuMzk0IDcuNDQyNDggMjEuMDM1MiA3LjY0OTU5TDE5LjEzOTIgOC43NDQyNkwyMS40ODgzIDkuMzczN0MyMS44ODg0IDkuNDgwOTEgMjIuMTI1OSA5Ljg5MjE2IDIyLjAxODcgMTAuMjkyM0MyMS45MTE0IDEwLjY5MjQgMjEuNTAwMiAxMC45Mjk4IDIxLjEwMDEgMTAuODIyNkwxNy4zMDIxIDkuODA0OTJMMTMuNTAwMSAxMkwxNy4zMDIzIDE0LjE5NTJMMjEuMTAwMyAxMy4xNzc1QzIxLjUwMDQgMTMuMDcwMyAyMS45MTE2IDEzLjMwNzggMjIuMDE4OSAxMy43MDc5QzIyLjEyNjEgMTQuMTA4IDIxLjg4ODYgMTQuNTE5MiAyMS40ODg1IDE0LjYyNjRMMTkuMTM5NCAxNS4yNTU5TDIxLjAzNTQgMTYuMzUwNUMyMS4zOTQyIDE2LjU1NzcgMjEuNTE3MSAxNy4wMTYzIDIxLjMxIDE3LjM3NTFDMjEuMTAyOCAxNy43MzM4IDIwLjY0NDIgMTcuODU2NyAyMC4yODU0IDE3LjY0OTZMMTguMzg5NCAxNi41NTQ5TDE5LjAxODkgMTguOTA0QzE5LjEyNjEgMTkuMzA0MSAxOC44ODg2IDE5LjcxNTQgMTguNDg4NSAxOS44MjI2QzE4LjA4ODQgMTkuOTI5OCAxNy42NzcyIDE5LjY5MjQgMTcuNTcgMTkuMjkyM0wxNi41NTIzIDE1LjQ5NDNMMTIuNzUwMSAxMy4yOTlWMTcuNjg5M0wxNS41MzA0IDIwLjQ2OTdDMTUuODIzMyAyMC43NjI2IDE1LjgyMzMgMjEuMjM3NCAxNS41MzA0IDIxLjUzMDNDMTUuMjM3NSAyMS44MjMyIDE0Ljc2MjYgMjEuODIzMiAxNC40Njk3IDIxLjUzMDNMMTIuNzUwMSAxOS44MTA3VjIyQzEyLjc1MDEgMjIuNDE0MiAxMi40MTQzIDIyLjc1IDEyLjAwMDEgMjIuNzVDMTEuNTg1OSAyMi43NSAxMS4yNTAxIDIyLjQxNDIgMTEuMjUwMSAyMlYxOS44MTA3TDkuNTMwNDEgMjEuNTMwM0M5LjIzNzUyIDIxLjgyMzIgOC43NjI2NCAyMS44MjMyIDguNDY5NzUgMjEuNTMwM0M4LjE3Njg2IDIxLjIzNzQgOC4xNzY4NiAyMC43NjI2IDguNDY5NzUgMjAuNDY5N0wxMS4yNTAxIDE3LjY4OTNWMTMuMjk5TDcuNDQ3ODcgMTUuNDk0M0w2LjQzMDIgMTkuMjkyM0M2LjMyMjk5IDE5LjY5MjQgNS45MTE3NCAxOS45Mjk4IDUuNTExNjQgMTkuODIyNkM1LjExMTU0IDE5LjcxNTQgNC44NzQxIDE5LjMwNDEgNC45ODEzMSAxOC45MDRMNS42MTA3NSAxNi41NTQ5TDMuNzE0NzMgMTcuNjQ5NkMzLjM1NjAxIDE3Ljg1NjcgMi44OTczMSAxNy43MzM4IDIuNjkwMjEgMTcuMzc1MUMyLjQ4MzEgMTcuMDE2MyAyLjYwNjAxIDE2LjU1NzcgMi45NjQ3MyAxNi4zNTA1TDQuODYwNzUgMTUuMjU1OUwyLjUxMTY0IDE0LjYyNjRDMi4xMTE1NCAxNC41MTkyIDEuODc0MSAxNC4xMDggMS45ODEzMSAxMy43MDc5QzIuMDg4NTEgMTMuMzA3OCAyLjQ5OTc3IDEzLjA3MDMgMi44OTk4NyAxMy4xNzc1TDYuNjk3ODcgMTQuMTk1MkwxMC41MDAxIDEyTDYuNjk4MDYgOS44MDQ5MkwyLjkwMDA2IDEwLjgyMjZDMi40OTk5NiAxMC45Mjk4IDIuMDg4NzEgMTAuNjkyNCAxLjk4MTUgMTAuMjkyM0MxLjg3NDMgOS44OTIxNiAyLjExMTczIDkuNDgwOTEgMi41MTE4MyA5LjM3MzdMNC44NjA5NSA4Ljc0NDI2TDIuOTY0OTIgNy42NDk1OUMyLjYwNjIgNy40NDI0OCAyLjQ4MzMgNi45ODM3OSAyLjY5MDQgNi42MjUwN0MyLjg5NzUxIDYuMjY2MzUgMy4zNTYyIDYuMTQzNDQgMy43MTQ5MiA2LjM1MDU1TDUuNjEwOTUgNy40NDUyMkw0Ljk4MTUgNS4wOTYxMUM0Ljg3NDMgNC42OTYwMSA1LjExMTczIDQuMjg0NzUgNS41MTE4MyA0LjE3NzU1QzUuOTExOTMgNC4wNzAzNCA2LjMyMzE5IDQuMzA3NzggNi40MzAzOSA0LjcwNzg4TDcuNDQ4MDYgOC41MDU4OEwxMS4yNTAxIDEwLjcwMVY2LjMxMDY2TDguNDY5NzUgMy41MzAzM0M4LjE3Njg2IDMuMjM3NDQgOC4xNzY4NiAyLjc2MjU2IDguNDY5NzUgMi40Njk2N0M4Ljc2MjY0IDIuMTc2NzggOS4yMzc1MiAyLjE3Njc4IDkuNTMwNDEgMi40Njk2N0wxMS4yNTAxIDQuMTg5MzRWMkMxMS4yNTAxIDEuNTg1NzkgMTEuNTg1OSAxLjI1IDEyLjAwMDEgMS4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
 */
export const Snowflake:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M12.0001 1.25C12.4143 1.25 12.7501 1.58579 12.7501 2V4.18934L14.4697 2.46967C14.7626 2.17678 15.2375 2.17678 15.5304 2.46967C15.8233 2.76256 15.8233 3.23744 15.5304 3.53033L12.7501 6.31066V10.701L16.5521 8.50588L17.5698 4.70788C17.677 4.30778 18.0882 4.07034 18.4883 4.17755C18.8884 4.28475 19.1259 4.69601 19.0187 5.09611L18.3892 7.44522L20.2852 6.35055C20.644 6.14344 21.1026 6.26635 21.3098 6.62507C21.5169 6.98379 21.394 7.44248 21.0352 7.64959L19.1392 8.74426L21.4883 9.3737C21.8884 9.48091 22.1259 9.89216 22.0187 10.2923C21.9114 10.6924 21.5002 10.9298 21.1001 10.8226L17.3021 9.80492L13.5001 12L17.3023 14.1952L21.1003 13.1775C21.5004 13.0703 21.9116 13.3078 22.0189 13.7079C22.1261 14.108 21.8886 14.5192 21.4885 14.6264L19.1394 15.2559L21.0354 16.3505C21.3942 16.5577 21.5171 17.0163 21.31 17.3751C21.1028 17.7338 20.6442 17.8567 20.2854 17.6496L18.3894 16.5549L19.0189 18.904C19.1261 19.3041 18.8886 19.7154 18.4885 19.8226C18.0884 19.9298 17.6772 19.6924 17.57 19.2923L16.5523 15.4943L12.7501 13.299V17.6893L15.5304 20.4697C15.8233 20.7626 15.8233 21.2374 15.5304 21.5303C15.2375 21.8232 14.7626 21.8232 14.4697 21.5303L12.7501 19.8107V22C12.7501 22.4142 12.4143 22.75 12.0001 22.75C11.5859 22.75 11.2501 22.4142 11.2501 22V19.8107L9.53041 21.5303C9.23752 21.8232 8.76264 21.8232 8.46975 21.5303C8.17686 21.2374 8.17686 20.7626 8.46975 20.4697L11.2501 17.6893V13.299L7.44787 15.4943L6.4302 19.2923C6.32299 19.6924 5.91174 19.9298 5.51164 19.8226C5.11154 19.7154 4.8741 19.3041 4.98131 18.904L5.61075 16.5549L3.71473 17.6496C3.35601 17.8567 2.89731 17.7338 2.69021 17.3751C2.4831 17.0163 2.60601 16.5577 2.96473 16.3505L4.86075 15.2559L2.51164 14.6264C2.11154 14.5192 1.8741 14.108 1.98131 13.7079C2.08851 13.3078 2.49977 13.0703 2.89987 13.1775L6.69787 14.1952L10.5001 12L6.69806 9.80492L2.90006 10.8226C2.49996 10.9298 2.08871 10.6924 1.9815 10.2923C1.8743 9.89216 2.11173 9.48091 2.51183 9.3737L4.86095 8.74426L2.96492 7.64959C2.6062 7.44248 2.4833 6.98379 2.6904 6.62507C2.89751 6.26635 3.3562 6.14344 3.71492 6.35055L5.61095 7.44522L4.9815 5.09611C4.8743 4.69601 5.11173 4.28475 5.51183 4.17755C5.91193 4.07034 6.32319 4.30778 6.43039 4.70788L7.44806 8.50588L11.2501 10.701V6.31066L8.46975 3.53033C8.17686 3.23744 8.17686 2.76256 8.46975 2.46967C8.76264 2.17678 9.23752 2.17678 9.53041 2.46967L11.2501 4.18934V2C11.2501 1.58579 11.5859 1.25 12.0001 1.25Z" fill="currentColor"/>
    </IconBase>
))

Snowflake.displayName = "Snowflake"