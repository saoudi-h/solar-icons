/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTUuMzI3NiA3LjU0MTk5SDguNjcyMzlDNS4yOTc1OCA3LjU0MTk5IDMuNjEwMTcgNy41NDE5OSAyLjY2MjMyIDguNTI4ODJDMS43MTQ0NyA5LjUxNTY1IDEuOTM3NDggMTEuMDQwMyAyLjM4MzUxIDE0LjA4OTVMMi44MDY0OCAxNi45ODExQzMuMTU2MjYgMTkuMzcyMyAzLjMzMTE1IDIwLjU2NzkgNC4yMjgzNCAyMS4yODM5QzUuMTI1NTMgMjEuOTk5OSA2LjQ0ODggMjEuOTk5OSA5LjA5NTM0IDIxLjk5OTlIMTQuOTA0NkMxNy41NTEyIDIxLjk5OTkgMTguODc0NSAyMS45OTk5IDE5Ljc3MTcgMjEuMjgzOUMyMC42Njg5IDIwLjU2NzkgMjAuODQzNyAxOS4zNzIzIDIxLjE5MzUgMTYuOTgxMUwyMS42MTY1IDE0LjA4OTVDMjIuMDYyNSAxMS4wNDAzIDIyLjI4NTUgOS41MTU2NCAyMS4zMzc3IDguNTI4ODJDMjAuMzg5OCA3LjU0MTk5IDE4LjcwMjQgNy41NDE5OSAxNS4zMjc2IDcuNTQxOTlaTTE0LjU4ODUgMTAuMTY1QzEzLjM1NjkgOS42Mzg4MyAxMS45NDI4IDEwLjQzMDQgMTEuODYwNyAxMS42OTI0QzExLjg1NzEgMTEuNzQ3NSAxMS44NTcxIDExLjgxNjMgMTEuODU3MSAxMS44OTkzTDExLjg1NzEgMTEuOTI2MkMxMS44NTcxIDExLjk1NTggMTEuODU3MSAxMS45ODIyIDExLjg1NzggMTIuMDA3N0wxMS44NTc0IDE1LjUyMTlDMTEuNDc5MSAxNS4zMTc2IDExLjAzOTkgMTUuMjAwNyAxMC41NzE0IDE1LjIwMDdDOS4xNTEzNSAxNS4yMDA3IDggMTYuMjc1IDggMTcuNjAwM0M4IDE4LjkyNTcgOS4xNTEzNSAxOS45OTk5IDEwLjU3MTQgMTkuOTk5OUMxMS45OTE1IDE5Ljk5OTkgMTMuMTQyOCAxOC45MjU2IDEzLjE0MjkgMTcuNjAwM0wxMy4xNDMzIDEzLjY4MTRMMTQuMDcxMyAxNC4xNDMyQzE0LjE0OTcgMTQuMTgyMyAxNC4yMTQ5IDE0LjIxNDcgMTQuMjY4NiAxNC4yMzc3QzE1LjUwMDMgMTQuNzYzOSAxNi45MTQ0IDEzLjk3MjMgMTYuOTk2NSAxMi43MTAzQzE3IDEyLjY1NTIgMTcgMTIuNTg2NCAxNyAxMi41MDMzTDE3IDEyLjQ3NjZDMTcgMTIuNDQyNiAxNyAxMi40MTMgMTYuOTk5IDEyLjM4NDFDMTYuOTc3OCAxMS43NjA2IDE2LjYxMjEgMTEuMTkxOSAxNi4wMzI2IDEwLjg4MUMxNi4wMDU3IDEwLjg2NjYgMTUuOTc3NyAxMC44NTI3IDE1Ljk0NTYgMTAuODM2N0wxNC43ODU4IDEwLjI1OTVDMTQuNzA3NCAxMC4yMjA0IDE0LjY0MjMgMTAuMTg4IDE0LjU4ODUgMTAuMTY1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTQuMDUzMyAxMS4yNTYxQzEzLjY0MjYgMTEuMDgwNiAxMy4xNzE0IDExLjM0NDYgMTMuMTQ0IDExLjc2NTFDMTMuMTQzMiAxMS43NzgzIDEzLjE0MjkgMTEuODA1NiAxMy4xNDI5IDExLjkxOUMxMy4xNDI5IDExLjk2NCAxMy4xNDI5IDExLjk3MzIgMTMuMTQzMiAxMS45ODA1QzEzLjE1MDMgMTIuMTg4MiAxMy4yNzIxIDEyLjM3NzggMTMuNDY1MyAxMi40ODE0QzEzLjQ3MiAxMi40ODUgMTMuNDgwNyAxMi40ODk0IDEzLjUyMzIgMTIuNTEwNUwxNC42NTc2IDEzLjA3NTFDMTQuNzY0OSAxMy4xMjg1IDE0Ljc5MDkgMTMuMTQxMSAxNC44MDM4IDEzLjE0NjZDMTUuMjE0NSAxMy4zMjIxIDE1LjY4NTggMTMuMDU4MSAxNS43MTMxIDEyLjYzNzZDMTUuNzE0IDEyLjYyNDQgMTUuNzE0MyAxMi41OTcxIDE1LjcxNDMgMTIuNDgzNkMxNS43MTQzIDEyLjQzODcgMTUuNzE0MiAxMi40Mjk1IDE1LjcxNCAxMi40MjIyQzE1LjcwNjkgMTIuMjE0NSAxNS41ODUgMTIuMDI1IDE1LjM5MTkgMTEuOTIxM0wxNC4wNTMzIDExLjI1NjFaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMC41NzE0IDE2LjQwMDZDMTEuMjgxNiAxNi40MDA2IDExLjg1NzEgMTYuOTM3OCAxMS44NTcxIDE3LjYwMDNDMTEuODU3MSAxOC4yNjI4IDExLjI4MTYgMTguOCAxMC41NzE0IDE4LjhDOS44NjEyNyAxOC44IDkuMjg1NzEgMTguMjYyOCA5LjI4NTcxIDE3LjYwMDNDOS4yODU3MSAxNi45Mzc4IDkuODYxMjcgMTYuNDAwNiAxMC41NzE0IDE2LjQwMDZaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNCIgZD0iTTguNTEwMDUgMi4wMDAwMUgxNS40OTAxQzE1LjcyMjYgMS45OTk5NSAxNS45MDA5IDEuOTk5OTEgMTYuMDU2NyAyLjAxNTE1QzE3LjE2NDUgMi4xMjM1MiAxOC4wNzEyIDIuNzg5NTggMTguNDU1OCAzLjY4Njc4SDUuNTQ0NDNDNS45Mjg5NSAyLjc4OTU4IDYuODM1NyAyLjEyMzUyIDcuOTQzNTIgMi4wMTUxNUM4LjA5OTMzIDEuOTk5OTEgOC4yNzc1NyAxLjk5OTk1IDguNTEwMDUgMi4wMDAwMVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC43IiBkPSJNNi4zMTA2OSA0LjcyMjY2QzQuOTIwMDcgNC43MjI2NiAzLjc3OTggNS41NjI0MSAzLjM5OTI3IDYuNjc2NDVDMy4zOTEzNCA2LjY5OTY3IDMuMzgzNzQgNi43MjMwMiAzLjM3NjQ2IDYuNzQ2NDdDMy43NzQ2MSA2LjYyNTkgNC4xODg5OCA2LjU0NzEzIDQuNjA4NDUgNi40OTMzNkM1LjY4ODgyIDYuMzU0ODUgNy4wNTQxNiA2LjM1NDkyIDguNjQwMTkgNi4zNTUwMUgxNS41MzIzQzE3LjExODMgNi4zNTQ5MiAxOC40ODM3IDYuMzU0ODUgMTkuNTY0IDYuNDkzMzZDMTkuOTgzNSA2LjU0NzEzIDIwLjM5NzkgNi42MjU5IDIwLjc5NiA2Ljc0NjQ3QzIwLjc4ODcgNi43MjMwMiAyMC43ODExIDYuNjk5NjcgMjAuNzczMiA2LjY3NjQ1QzIwLjM5MjcgNS41NjI0MSAxOS4yNTI0IDQuNzIyNjYgMTcuODYxOCA0LjcyMjY2SDYuMzEwNjlaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
 */
export const MusicLibrary:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M15.3276 7.54199H8.67239C5.29758 7.54199 3.61017 7.54199 2.66232 8.52882C1.71447 9.51565 1.93748 11.0403 2.38351 14.0895L2.80648 16.9811C3.15626 19.3723 3.33115 20.5679 4.22834 21.2839C5.12553 21.9999 6.4488 21.9999 9.09534 21.9999H14.9046C17.5512 21.9999 18.8745 21.9999 19.7717 21.2839C20.6689 20.5679 20.8437 19.3723 21.1935 16.9811L21.6165 14.0895C22.0625 11.0403 22.2855 9.51564 21.3377 8.52882C20.3898 7.54199 18.7024 7.54199 15.3276 7.54199ZM14.5885 10.165C13.3569 9.63883 11.9428 10.4304 11.8607 11.6924C11.8571 11.7475 11.8571 11.8163 11.8571 11.8993L11.8571 11.9262C11.8571 11.9558 11.8571 11.9822 11.8578 12.0077L11.8574 15.5219C11.4791 15.3176 11.0399 15.2007 10.5714 15.2007C9.15135 15.2007 8 16.275 8 17.6003C8 18.9257 9.15135 19.9999 10.5714 19.9999C11.9915 19.9999 13.1428 18.9256 13.1429 17.6003L13.1433 13.6814L14.0713 14.1432C14.1497 14.1823 14.2149 14.2147 14.2686 14.2377C15.5003 14.7639 16.9144 13.9723 16.9965 12.7103C17 12.6552 17 12.5864 17 12.5033L17 12.4766C17 12.4426 17 12.413 16.999 12.3841C16.9778 11.7606 16.6121 11.1919 16.0326 10.881C16.0057 10.8666 15.9777 10.8527 15.9456 10.8367L14.7858 10.2595C14.7074 10.2204 14.6423 10.188 14.5885 10.165Z" fill="currentColor"/>
<path d="M14.0533 11.2561C13.6426 11.0806 13.1714 11.3446 13.144 11.7651C13.1432 11.7783 13.1429 11.8056 13.1429 11.919C13.1429 11.964 13.1429 11.9732 13.1432 11.9805C13.1503 12.1882 13.2721 12.3778 13.4653 12.4814C13.472 12.485 13.4807 12.4894 13.5232 12.5105L14.6576 13.0751C14.7649 13.1285 14.7909 13.1411 14.8038 13.1466C15.2145 13.3221 15.6858 13.0581 15.7131 12.6376C15.714 12.6244 15.7143 12.5971 15.7143 12.4836C15.7143 12.4387 15.7142 12.4295 15.714 12.4222C15.7069 12.2145 15.585 12.025 15.3919 11.9213L14.0533 11.2561Z" fill="currentColor"/>
<path d="M10.5714 16.4006C11.2816 16.4006 11.8571 16.9378 11.8571 17.6003C11.8571 18.2628 11.2816 18.8 10.5714 18.8C9.86127 18.8 9.28571 18.2628 9.28571 17.6003C9.28571 16.9378 9.86127 16.4006 10.5714 16.4006Z" fill="currentColor"/>
<path opacity="0.4" d="M8.51005 2.00001H15.4901C15.7226 1.99995 15.9009 1.99991 16.0567 2.01515C17.1645 2.12352 18.0712 2.78958 18.4558 3.68678H5.54443C5.92895 2.78958 6.8357 2.12352 7.94352 2.01515C8.09933 1.99991 8.27757 1.99995 8.51005 2.00001Z" fill="currentColor"/>
<path opacity="0.7" d="M6.31069 4.72266C4.92007 4.72266 3.7798 5.56241 3.39927 6.67645C3.39134 6.69967 3.38374 6.72302 3.37646 6.74647C3.77461 6.6259 4.18898 6.54713 4.60845 6.49336C5.68882 6.35485 7.05416 6.35492 8.64019 6.35501H15.5323C17.1183 6.35492 18.4837 6.35485 19.564 6.49336C19.9835 6.54713 20.3979 6.6259 20.796 6.74647C20.7887 6.72302 20.7811 6.69967 20.7732 6.67645C20.3927 5.56241 19.2524 4.72266 17.8618 4.72266H6.31069Z" fill="currentColor"/>
    </IconBase>
))

MusicLibrary.displayName = "MusicLibrary"
