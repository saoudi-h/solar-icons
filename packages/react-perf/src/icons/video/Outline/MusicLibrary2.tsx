/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgOS43NTAwMUMxMi40MTQyIDkuNzUwMDEgMTIuNzUgMTAuMDg1OCAxMi43NSAxMC41QzEyLjc1IDExLjAzODYgMTMuMDY1NCAxMS42MDA2IDEzLjU4MzUgMTIuMDYwM0MxNC4xMTQ1IDEyLjUzMTQgMTQuNjk0NiAxMi43NSAxNSAxMi43NUMxNS40MTQyIDEyLjc1IDE1Ljc1IDEzLjA4NTggMTUuNzUgMTMuNUMxNS43NSAxMy45MTQyIDE1LjQxNDIgMTQuMjUgMTUgMTQuMjVDMTQuMjYxNyAxNC4yNSAxMy40MjAyIDEzLjg2MzQgMTIuNzUgMTMuMzE5N1YxN0MxMi43NSAxOC4yNDI3IDExLjc0MjYgMTkuMjUgMTAuNSAxOS4yNUM5LjI1NzM2IDE5LjI1IDguMjUgMTguMjQyNyA4LjI1IDE3QzguMjUgMTUuNzU3NCA5LjI1NzM2IDE0Ljc1IDEwLjUgMTQuNzVDMTAuNzYzIDE0Ljc1IDExLjAxNTQgMTQuNzk1MSAxMS4yNSAxNC44NzhWMTAuNUMxMS4yNSAxMC4wODU4IDExLjU4NTggOS43NTAwMSAxMiA5Ljc1MDAxWk0xMS4yNSAxN0MxMS4yNSAxNi41ODU4IDEwLjkxNDIgMTYuMjUgMTAuNSAxNi4yNUMxMC4wODU4IDE2LjI1IDkuNzUgMTYuNTg1OCA5Ljc1IDE3QzkuNzUgMTcuNDE0MiAxMC4wODU4IDE3Ljc1IDEwLjUgMTcuNzVDMTAuOTE0MiAxNy43NSAxMS4yNSAxNy40MTQyIDExLjI1IDE3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTguNjk5MzUgMS4yNTAwMUgxNS4zMDA0QzE1LjUyMDMgMS4yNDk5NSAxNS42ODg4IDEuMjQ5OSAxNS44MzYyIDEuMjY1NzFDMTcuMTkwMyAxLjQxMTA0IDE4LjIyNjggMi41MjMwNyAxOC4yODk3IDMuODcwMTNDMTkuNDgwNSA0LjIyNTcxIDIwLjMyODkgNS4zMjc1IDIwLjM0NDMgNi41OTExOEMyMC45NDUzIDYuNzcxNTEgMjEuNDYzNyA3LjA1NTk1IDIxLjg4OCA3LjUxNDMyQzIyLjU0IDguMjE4NTcgMjIuNzQyMSA5LjA4NjQ5IDIyLjc0OTggMTAuMTAwM0MyMi43NTcyIDExLjA3NSAyMi41ODM1IDEyLjMwNjcgMjIuMzY3OCAxMy44MzYzTDIxLjkyODggMTYuOTQ5OUMyMS43NjAyIDE4LjE0NiAyMS42MjMyIDE5LjExNzYgMjEuNDEwMSAxOS44NzlDMjEuMTg3MSAyMC42NzU2IDIwLjg1ODUgMjEuMzMxIDIwLjI1IDIxLjgzNDlDMTkuNjQ2MyAyMi4zMzQ3IDE4LjkzMDEgMjIuNTUwMiAxOC4wODM1IDIyLjY1MThDMTcuMjY1IDIyLjc1IDE2LjIzNTMgMjIuNzUgMTQuOTUzMiAyMi43NUg5LjA0Njg3QzcuNzY0NzggMjIuNzUgNi43MzUwMSAyMi43NSA1LjkxNjQ3IDIyLjY1MThDNS4wNjk5MyAyMi41NTAyIDQuMzUzNzIgMjIuMzM0NyAzLjc1MDAzIDIxLjgzNDlDMy4xNDE1MiAyMS4zMzEgMi44MTI4NiAyMC42NzU2IDIuNTg5ODkgMTkuODc5QzIuMzc2NzYgMTkuMTE3NiAyLjIzOTc5IDE4LjE0NiAyLjA3MTE4IDE2Ljk0OTlMMS42MzIxOSAxMy44MzYzQzEuNDE2NTEgMTIuMzA2NyAxLjI0MjgzIDExLjA3NSAxLjI1MDIzIDEwLjEwMDNDMS4yNTc5MiA5LjA4NjQ5IDEuNDU5OTcgOC4yMTg1NyAyLjExMTk2IDcuNTE0MzJDMi41MzYyMSA3LjA1NjA2IDMuMDU0NDUgNi43NzE2NCAzLjY1NTI4IDYuNTkxM0MzLjY3MDU4IDUuMzI3NSA0LjUxOTE3IDQuMjI1NTkgNS43MTAwNSAzLjg3MDA3QzUuNzcyOTUgMi41MjMwNCA2LjgwOTQzIDEuNDExMDQgOC4xNjM1OSAxLjI2NTcxQzguMzEwOTQgMS4yNDk5IDguNDc5NSAxLjI0OTk1IDguNjk5MzUgMS4yNTAwMVpNNS4xODkwMiA2LjMyNzg1QzYuMTE0ODEgNi4yNDk5OSA3LjI0OTczIDYuMjUgOC42MTU5NCA2LjI1MDAxSDE1LjM4NEMxNi43NSA2LjI1IDE3Ljg4NDggNi4yNDk5OSAxOC44MTA1IDYuMzI3ODFDMTguNjczNCA1LjcyMDE4IDE4LjEzMDYgNS4yNTAwMSAxNy40NjE3IDUuMjUwMDFINi41Mzc4N0M1Ljg2ODk2IDUuMjUwMDEgNS4zMjYxOCA1LjcyMDE5IDUuMTg5MDIgNi4zMjc4NVpNMTUuNjc2MSAyLjc1NzE1QzE2LjIyNjMgMi44MTYyIDE2LjY2MTEgMy4yMjYzMyAxNi43Njc3IDMuNzUwMDFINy4yMzIxQzcuMzM4NjIgMy4yMjYzMyA3Ljc3MzQ0IDIuODE2MiA4LjMyMzY1IDIuNzU3MTVDOC4zNzk5MyAyLjc1MTExIDguNDYwMTMgMi43NTAwMSA4Ljc0MDk5IDIuNzUwMDFIMTUuMjU4OEMxNS41Mzk2IDIuNzUwMDEgMTUuNjE5OCAyLjc1MTExIDE1LjY3NjEgMi43NTcxNVpNMy4yMTI2NyA4LjUzMzM2QzMuNTE1NTcgOC4yMDYxOCAzLjk3MTA2IDcuOTg5MTcgNC44NTYxMiA3Ljg3MTQ1QzUuNzU3MjYgNy43NTE1OSA2Ljk2MzU3IDcuNzUwMDEgOC42NzIzOSA3Ljc1MDAxSDE1LjMyNzZDMTcuMDM2NCA3Ljc1MDAxIDE4LjI0MjcgNy43NTE1OSAxOS4xNDM5IDcuODcxNDVDMjAuMDI4OSA3Ljk4OTE3IDIwLjQ4NDQgOC4yMDYxOCAyMC43ODczIDguNTMzMzZDMjEuMDgzMiA4Ljg1MjkzIDIxLjI0MzYgOS4yODc4MiAyMS4yNDk4IDEwLjExMTdDMjEuMjU2MyAxMC45NjE4IDIxLjEwMDIgMTIuMDgyOCAyMC44NzM4IDEzLjY4ODNMMjAuNDUwOSAxNi42ODgzQzIwLjI3MzEgMTcuOTQ5MSAyMC4xNDg2IDE4LjgyMSAxOS45NjU2IDE5LjQ3NDdDMTkuNzg5NCAyMC4xMDQyIDE5LjU4MiAyMC40NDA1IDE5LjI5MzQgMjAuNjc5NUMxOC45OTk5IDIwLjkyMjUgMTguNjA1OCAyMS4wNzg0IDE3LjkwNDggMjEuMTYyNUMxNy4xODYxIDIxLjI0ODggMTYuMjQ2NSAyMS4yNSAxNC45MDQ2IDIxLjI1SDkuMDk1MzZDNy43NTM0NyAyMS4yNSA2LjgxMzkzIDIxLjI0ODggNi4wOTUxOSAyMS4xNjI1QzUuMzk0MTcgMjEuMDc4NCA1LjAwMDE0IDIwLjkyMjUgNC43MDY2NCAyMC42Nzk1QzQuNDE3OTUgMjAuNDQwNSA0LjIxMDU4IDIwLjEwNDIgNC4wMzQzNyAxOS40NzQ3QzMuODUxNCAxOC44MjEgMy43MjY5IDE3Ljk0OTEgMy41NDkxMyAxNi42ODgzTDMuMTI2MTYgMTMuNjg4M0MyLjg5OTgxIDEyLjA4MjggMi43NDM3MyAxMC45NjE4IDIuNzUwMTggMTAuMTExN0MyLjc1NjQ0IDkuMjg3ODIgMi45MTY4MSA4Ljg1MjkzIDMuMjEyNjcgOC41MzMzNloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
 */
export const MusicLibrary2:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M12 9.75001C12.4142 9.75001 12.75 10.0858 12.75 10.5C12.75 11.0386 13.0654 11.6006 13.5835 12.0603C14.1145 12.5314 14.6946 12.75 15 12.75C15.4142 12.75 15.75 13.0858 15.75 13.5C15.75 13.9142 15.4142 14.25 15 14.25C14.2617 14.25 13.4202 13.8634 12.75 13.3197V17C12.75 18.2427 11.7426 19.25 10.5 19.25C9.25736 19.25 8.25 18.2427 8.25 17C8.25 15.7574 9.25736 14.75 10.5 14.75C10.763 14.75 11.0154 14.7951 11.25 14.878V10.5C11.25 10.0858 11.5858 9.75001 12 9.75001ZM11.25 17C11.25 16.5858 10.9142 16.25 10.5 16.25C10.0858 16.25 9.75 16.5858 9.75 17C9.75 17.4142 10.0858 17.75 10.5 17.75C10.9142 17.75 11.25 17.4142 11.25 17Z" fill="currentColor"/>
<path fillRule="evenodd" clipRule="evenodd" d="M8.69935 1.25001H15.3004C15.5203 1.24995 15.6888 1.2499 15.8362 1.26571C17.1903 1.41104 18.2268 2.52307 18.2897 3.87013C19.4805 4.22571 20.3289 5.3275 20.3443 6.59118C20.9453 6.77151 21.4637 7.05595 21.888 7.51432C22.54 8.21857 22.7421 9.08649 22.7498 10.1003C22.7572 11.075 22.5835 12.3067 22.3678 13.8363L21.9288 16.9499C21.7602 18.146 21.6232 19.1176 21.4101 19.879C21.1871 20.6756 20.8585 21.331 20.25 21.8349C19.6463 22.3347 18.9301 22.5502 18.0835 22.6518C17.265 22.75 16.2353 22.75 14.9532 22.75H9.04687C7.76478 22.75 6.73501 22.75 5.91647 22.6518C5.06993 22.5502 4.35372 22.3347 3.75003 21.8349C3.14152 21.331 2.81286 20.6756 2.58989 19.879C2.37676 19.1176 2.23979 18.146 2.07118 16.9499L1.63219 13.8363C1.41651 12.3067 1.24283 11.075 1.25023 10.1003C1.25792 9.08649 1.45997 8.21857 2.11196 7.51432C2.53621 7.05606 3.05445 6.77164 3.65528 6.5913C3.67058 5.3275 4.51917 4.22559 5.71005 3.87007C5.77295 2.52304 6.80943 1.41104 8.16359 1.26571C8.31094 1.2499 8.4795 1.24995 8.69935 1.25001ZM5.18902 6.32785C6.11481 6.24999 7.24973 6.25 8.61594 6.25001H15.384C16.75 6.25 17.8848 6.24999 18.8105 6.32781C18.6734 5.72018 18.1306 5.25001 17.4617 5.25001H6.53787C5.86896 5.25001 5.32618 5.72019 5.18902 6.32785ZM15.6761 2.75715C16.2263 2.8162 16.6611 3.22633 16.7677 3.75001H7.2321C7.33862 3.22633 7.77344 2.8162 8.32365 2.75715C8.37993 2.75111 8.46013 2.75001 8.74099 2.75001H15.2588C15.5396 2.75001 15.6198 2.75111 15.6761 2.75715ZM3.21267 8.53336C3.51557 8.20618 3.97106 7.98917 4.85612 7.87145C5.75726 7.75159 6.96357 7.75001 8.67239 7.75001H15.3276C17.0364 7.75001 18.2427 7.75159 19.1439 7.87145C20.0289 7.98917 20.4844 8.20618 20.7873 8.53336C21.0832 8.85293 21.2436 9.28782 21.2498 10.1117C21.2563 10.9618 21.1002 12.0828 20.8738 13.6883L20.4509 16.6883C20.2731 17.9491 20.1486 18.821 19.9656 19.4747C19.7894 20.1042 19.582 20.4405 19.2934 20.6795C18.9999 20.9225 18.6058 21.0784 17.9048 21.1625C17.1861 21.2488 16.2465 21.25 14.9046 21.25H9.09536C7.75347 21.25 6.81393 21.2488 6.09519 21.1625C5.39417 21.0784 5.00014 20.9225 4.70664 20.6795C4.41795 20.4405 4.21058 20.1042 4.03437 19.4747C3.8514 18.821 3.7269 17.9491 3.54913 16.6883L3.12616 13.6883C2.89981 12.0828 2.74373 10.9618 2.75018 10.1117C2.75644 9.28782 2.91681 8.85293 3.21267 8.53336Z" fill="currentColor"/>
    </IconBase>
))

MusicLibrary2.displayName = "MusicLibrary2"
