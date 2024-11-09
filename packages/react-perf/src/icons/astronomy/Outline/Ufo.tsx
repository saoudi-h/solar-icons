/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNi4zNjY2MiA3LjU5ODk1QzYuODg3MzMgNS4xMTUxNyA5LjA5MDIzIDMuMjUgMTEuNzI4OCAzLjI1SDEyLjI3MTJDMTQuOTA5OCAzLjI1IDE3LjExMjcgNS4xMTUxNyAxNy42MzM0IDcuNTk4OTVDMTguOTkxNCA3Ljk2Njg1IDIwLjE3MjIgOC40NzMyNCAyMS4wNTQzIDkuMDk3NzhDMjIuMDE5OSA5Ljc4MTUxIDIyLjc1IDEwLjcwMTkgMjIuNzUgMTEuODI2MkMyMi43NSAxMi42NjMzIDIyLjM0MDQgMTMuMzkzMiAyMS43NDA5IDEzLjk4NDZDMjEuMTQ0MiAxNC41NzM1IDIwLjMxOTEgMTUuMDY5MyAxOS4zNTk5IDE1LjQ2OTZDMTkuMzQ5OCAxNS40NzM4IDE5LjMzOTYgMTUuNDc4MSAxOS4zMjk0IDE1LjQ4MjNMMjAuMTcwOCAxNy4xNjQ1QzIwLjM1NjEgMTcuNTM0OSAyMC4yMDYgMTcuOTg1NSAxOS44MzU1IDE4LjE3MDhDMTkuNDY1IDE4LjM1NjEgMTkuMDE0NSAxOC4yMDYgMTguODI5MiAxNy44MzU1TDE3LjkwMDUgMTUuOTc4N0MxNi40MDEgMTYuNDEyNyAxNC42MzggMTYuNjgyIDEyLjc1IDE2LjczODZWMTlDMTIuNzUgMTkuNDE0MiAxMi40MTQyIDE5Ljc1IDEyIDE5Ljc1QzExLjU4NTggMTkuNzUgMTEuMjUgMTkuNDE0MiAxMS4yNSAxOVYxNi43Mzg2QzkuMzYyMDEgMTYuNjgyIDcuNTk4OTcgMTYuNDEyNyA2LjA5OTUyIDE1Ljk3ODdMNS4xNzA3NyAxNy44MzU1QzQuOTg1NDggMTguMjA2IDQuNTM0OTUgMTguMzU2MSA0LjE2NDQ5IDE4LjE3MDhDMy43OTQwNCAxNy45ODU1IDMuNjQzOTMgMTcuNTM0OSAzLjgyOTIzIDE3LjE2NDVMNC42NzA2NCAxNS40ODIzQzQuNjYwNDMgMTUuNDc4MSA0LjY1MDIzIDE1LjQ3MzggNC42NDAwNiAxNS40Njk2QzMuNjgwOTEgMTUuMDY5MyAyLjg1NTgxIDE0LjU3MzUgMi4yNTkwNyAxMy45ODQ2QzEuNjU5NjQgMTMuMzkzMiAxLjI1IDEyLjY2MzMgMS4yNSAxMS44MjYyQzEuMjUgMTAuNzAxOSAxLjk4MDA2IDkuNzgxNTEgMi45NDU3MyA5LjA5Nzc4QzMuODI3OCA4LjQ3MzI0IDUuMDA4NTcgNy45NjY4NSA2LjM2NjYyIDcuNTk4OTVaTTYuMzE3NTggOS4xNzM4QzUuMjc1MjUgOS40OTIzNCA0LjQyNSA5Ljg4ODMyIDMuODEyNTIgMTAuMzIyQzMuMDI1NDQgMTAuODc5MyAyLjc1IDExLjQwNTcgMi43NSAxMS44MjYyQzIuNzUgMTIuMTQxNyAyLjkgMTIuNTA5OCAzLjMxMjYzIDEyLjkxNjlDMy43Mjc5NCAxMy4zMjY3IDQuMzY3MzEgMTMuNzMwMyA1LjIxNzggMTQuMDg1M0M2LjkxNTU2IDE0Ljc5MzkgOS4zMTI5OSAxNS4yNDk5IDEyIDE1LjI0OTlDMTQuNjg3IDE1LjI0OTkgMTcuMDg0NCAxNC43OTM5IDE4Ljc4MjIgMTQuMDg1M0MxOS42MzI3IDEzLjczMDMgMjAuMjcyMSAxMy4zMjY3IDIwLjY4NzQgMTIuOTE2OUMyMS4xIDEyLjUwOTggMjEuMjUgMTIuMTQxNyAyMS4yNSAxMS44MjYyQzIxLjI1IDExLjQwNTcgMjAuOTc0NiAxMC44NzkzIDIwLjE4NzUgMTAuMzIyQzE5LjU3NSA5Ljg4ODMyIDE4LjcyNDcgOS40OTIzNCAxNy42ODI0IDkuMTczOEMxNy42MTIxIDkuMzk1MDcgMTcuNDc2MyA5LjYyMzc1IDE3LjIyODUgOS43OTYxMUMxNi42MjczIDEwLjIxNDIgMTUuMjQ1NiAxMC43NSAxMiAxMC43NUM4Ljc1NDQzIDEwLjc1IDcuMzcyNjUgMTAuMjE0MiA2Ljc3MTQ3IDkuNzk2MTFDNi41MjM2NyA5LjYyMzc1IDYuMzg3OTEgOS4zOTUwNyA2LjMxNzU4IDkuMTczOFpNNy43NTEgOC42Mzg2OEM4LjEzODA4IDguODQ1MTcgOS4yNTQyMyA5LjI1IDEyIDkuMjVDMTQuNzQ1OCA5LjI1IDE1Ljg2MTkgOC44NDUxNyAxNi4yNDkgOC42Mzg2OEMxNi4yMDExIDYuNDgyODcgMTQuNDM4NSA0Ljc1IDEyLjI3MTIgNC43NUgxMS43Mjg4QzkuNTYxNDYgNC43NSA3Ljc5ODg5IDYuNDgyODcgNy43NTEgOC42Mzg2OFpNMTYuMjQ5NyA4LjczNTgzQzE2LjI0OTcgOC43MzU4MiAxNi4yNDk3IDguNzM1MzggMTYuMjQ5OCA4LjczNDUxTDE2LjI0OTcgOC43MzU4M1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEzIDEzQzEzIDEzLjU1MjMgMTIuNTUyMyAxNCAxMiAxNEMxMS40NDc3IDE0IDExIDEzLjU1MjMgMTEgMTNDMTEgMTIuNDQ3NyAxMS40NDc3IDEyIDEyIDEyQzEyLjU1MjMgMTIgMTMgMTIuNDQ3NyAxMyAxM1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTggMTJDOCAxMi41NTIzIDcuNTUyMjggMTMgNyAxM0M2LjQ0NzcyIDEzIDYgMTIuNTUyMyA2IDEyQzYgMTEuNDQ3NyA2LjQ0NzcyIDExIDcgMTFDNy41NTIyOCAxMSA4IDExLjQ0NzcgOCAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE4IDEyQzE4IDEyLjU1MjMgMTcuNTUyMyAxMyAxNyAxM0MxNi40NDc3IDEzIDE2IDEyLjU1MjMgMTYgMTJDMTYgMTEuNDQ3NyAxNi40NDc3IDExIDE3IDExQzE3LjU1MjMgMTEgMTggMTEuNDQ3NyAxOCAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
 */
export const Ufo:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M6.36662 7.59895C6.88733 5.11517 9.09023 3.25 11.7288 3.25H12.2712C14.9098 3.25 17.1127 5.11517 17.6334 7.59895C18.9914 7.96685 20.1722 8.47324 21.0543 9.09778C22.0199 9.78151 22.75 10.7019 22.75 11.8262C22.75 12.6633 22.3404 13.3932 21.7409 13.9846C21.1442 14.5735 20.3191 15.0693 19.3599 15.4696C19.3498 15.4738 19.3396 15.4781 19.3294 15.4823L20.1708 17.1645C20.3561 17.5349 20.206 17.9855 19.8355 18.1708C19.465 18.3561 19.0145 18.206 18.8292 17.8355L17.9005 15.9787C16.401 16.4127 14.638 16.682 12.75 16.7386V19C12.75 19.4142 12.4142 19.75 12 19.75C11.5858 19.75 11.25 19.4142 11.25 19V16.7386C9.36201 16.682 7.59897 16.4127 6.09952 15.9787L5.17077 17.8355C4.98548 18.206 4.53495 18.3561 4.16449 18.1708C3.79404 17.9855 3.64393 17.5349 3.82923 17.1645L4.67064 15.4823C4.66043 15.4781 4.65023 15.4738 4.64006 15.4696C3.68091 15.0693 2.85581 14.5735 2.25907 13.9846C1.65964 13.3932 1.25 12.6633 1.25 11.8262C1.25 10.7019 1.98006 9.78151 2.94573 9.09778C3.8278 8.47324 5.00857 7.96685 6.36662 7.59895ZM6.31758 9.1738C5.27525 9.49234 4.425 9.88832 3.81252 10.322C3.02544 10.8793 2.75 11.4057 2.75 11.8262C2.75 12.1417 2.9 12.5098 3.31263 12.9169C3.72794 13.3267 4.36731 13.7303 5.2178 14.0853C6.91556 14.7939 9.31299 15.2499 12 15.2499C14.687 15.2499 17.0844 14.7939 18.7822 14.0853C19.6327 13.7303 20.2721 13.3267 20.6874 12.9169C21.1 12.5098 21.25 12.1417 21.25 11.8262C21.25 11.4057 20.9746 10.8793 20.1875 10.322C19.575 9.88832 18.7247 9.49234 17.6824 9.1738C17.6121 9.39507 17.4763 9.62375 17.2285 9.79611C16.6273 10.2142 15.2456 10.75 12 10.75C8.75443 10.75 7.37265 10.2142 6.77147 9.79611C6.52367 9.62375 6.38791 9.39507 6.31758 9.1738ZM7.751 8.63868C8.13808 8.84517 9.25423 9.25 12 9.25C14.7458 9.25 15.8619 8.84517 16.249 8.63868C16.2011 6.48287 14.4385 4.75 12.2712 4.75H11.7288C9.56146 4.75 7.79889 6.48287 7.751 8.63868ZM16.2497 8.73583C16.2497 8.73582 16.2497 8.73538 16.2498 8.73451L16.2497 8.73583Z" fill="currentColor"/>
<path d="M13 13C13 13.5523 12.5523 14 12 14C11.4477 14 11 13.5523 11 13C11 12.4477 11.4477 12 12 12C12.5523 12 13 12.4477 13 13Z" fill="currentColor"/>
<path d="M8 12C8 12.5523 7.55228 13 7 13C6.44772 13 6 12.5523 6 12C6 11.4477 6.44772 11 7 11C7.55228 11 8 11.4477 8 12Z" fill="currentColor"/>
<path d="M18 12C18 12.5523 17.5523 13 17 13C16.4477 13 16 12.5523 16 12C16 11.4477 16.4477 11 17 11C17.5523 11 18 11.4477 18 12Z" fill="currentColor"/>
    </IconBase>
))

Ufo.displayName = "Ufo"
