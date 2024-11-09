/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDE2LjA2NzhMOC4yMjg1NSAxOS45NzI3QzcuNjg4NDMgMjAuNTMyIDcuNDE4MzcgMjAuODExNiA3LjE4OTY3IDIwLjkwODRDNi42Njg1MiAyMS4xMjg5IDYuMDkwNDIgMjAuOTQwMiA1LjgxNjI4IDIwLjQ2MDFDNS42OTU5NyAyMC4yNDk0IDUuNjU4NDggMTkuODY5NCA1LjU4MzUgMTkuMTA5NEM1LjU0MTE3IDE4LjY4MDMgNS41MiAxOC40NjU3IDUuNDU1NzUgMTguMjg2QzUuMzExOTEgMTcuODgzNyA1LjAwOTY2IDE3LjU3MDggNC42MjExIDE3LjQyMThDNC40NDc1NSAxNy4zNTUzIDQuMjQwMzMgMTcuMzMzNCAzLjgyNTkyIDE3LjI4OTVMMy44MjU4OSAxNy4yODk1QzMuMDkxODcgMTcuMjExOSAyLjcyNDg2IDE3LjE3MzEgMi41MjEzOCAxNy4wNDg1QzIuMDU3NzIgMTYuNzY0NyAxLjg3NTQ4IDE2LjE2NjEgMi4wODg0MyAxNS42MjY1QzIuMTgxODggMTUuMzg5NyAyLjQ1MTk0IDE1LjExMDEgMi45OTIwNiAxNC41NTA5TDUuNDU1NzUgMTEuOTk5OUw2LjY5Mzk2IDEwLjc2MTdMMTIgMTYuMDY3OEwxNy4zMDYgMTAuNzYxN0wxOC41NDQyIDExLjk5OTlMMjEuMDA3OSAxNC41NTA5QzIxLjU0ODEgMTUuMTEwMSAyMS44MTgxIDE1LjM4OTcgMjEuOTExNiAxNS42MjY1QzIyLjEyNDUgMTYuMTY2MSAyMS45NDIzIDE2Ljc2NDcgMjEuNDc4NiAxNy4wNDg1QzIxLjI3NTEgMTcuMTczMSAyMC45MDgxIDE3LjIxMTkgMjAuMTc0MSAxNy4yODk1QzE5Ljc1OTcgMTcuMzMzNCAxOS41NTI1IDE3LjM1NTMgMTkuMzc4OSAxNy40MjE4QzE4Ljk5MDMgMTcuNTcwOCAxOC42ODgxIDE3Ljg4MzcgMTguNTQ0MiAxOC4yODZDMTguNDggMTguNDY1NyAxOC40NTg4IDE4LjY4MDMgMTguNDE2NSAxOS4xMDk0VjE5LjEwOTRDMTguMzQxNSAxOS44Njk0IDE4LjMwNCAyMC4yNDk0IDE4LjE4MzcgMjAuNDYwMUMxNy45MDk2IDIwLjk0MDIgMTcuMzMxNSAyMS4xMjg5IDE2LjgxMDMgMjAuOTA4NEMxNi41ODE2IDIwLjgxMTYgMTYuMzExNiAyMC41MzIgMTUuNzcxNSAxOS45NzI3TDEyIDE2LjA2NzhaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMTZDMTUuODY2IDE2IDE5IDEyLjg2NiAxOSA5QzE5IDUuMTM0MDEgMTUuODY2IDIgMTIgMkM4LjEzNDAxIDIgNSA1LjEzNDAxIDUgOUM1IDEyLjg2NiA4LjEzNDAxIDE2IDEyIDE2Wk0xMiA2QzExLjcxNTkgNiAxMS41MjU5IDYuMzQwODQgMTEuMTQ1OSA3LjAyMjUxTDExLjA0NzYgNy4xOTg4N0MxMC45Mzk3IDcuMzkyNTggMTAuODg1NyA3LjQ4OTQ0IDEwLjgwMTUgNy41NTMzNEMxMC43MTczIDcuNjE3MjUgMTAuNjEyNSA3LjY0MDk3IDEwLjQwMjggNy42ODg0MUwxMC4yMTE5IDcuNzMxNjFDOS40NzM5NiA3Ljg5ODU3IDkuMTA1MDEgNy45ODIwNSA5LjAxNzIzIDguMjY0MzJDOC45Mjk0NSA4LjU0NjU5IDkuMTgwOTcgOC44NDA3MiA5LjY4NDAzIDkuNDI4OThMOS44MTQxOCA5LjU4MTE3QzkuOTU3MTMgOS43NDgzMyAxMC4wMjg2IDkuODMxOTEgMTAuMDYwOCA5LjkzNTMxQzEwLjA5MjkgMTAuMDM4NyAxMC4wODIxIDEwLjE1MDIgMTAuMDYwNSAxMC4zNzMzTDEwLjA0MDggMTAuNTc2M0M5Ljk2NDc2IDExLjM2MTIgOS45MjY3NCAxMS43NTM2IDEwLjE1NjUgMTEuOTI4MUMxMC4zODY0IDEyLjEwMjUgMTAuNzMxOCAxMS45NDM1IDExLjQyMjcgMTEuNjI1NEwxMS42MDE0IDExLjU0MzFDMTEuNzk3OCAxMS40NTI3IDExLjg5NTkgMTEuNDA3NSAxMiAxMS40MDc1QzEyLjEwNDEgMTEuNDA3NSAxMi4yMDIyIDExLjQ1MjcgMTIuMzk4NiAxMS41NDMxTDEyLjU3NzMgMTEuNjI1NEMxMy4yNjgyIDExLjk0MzUgMTMuNjEzNiAxMi4xMDI1IDEzLjg0MzUgMTEuOTI4MUMxNC4wNzMzIDExLjc1MzYgMTQuMDM1MiAxMS4zNjEyIDEzLjk1OTIgMTAuNTc2M0wxMy45Mzk1IDEwLjM3MzNDMTMuOTE3OSAxMC4xNTAyIDEzLjkwNzEgMTAuMDM4NyAxMy45MzkyIDkuOTM1MzFDMTMuOTcxNCA5LjgzMTkxIDE0LjA0MjkgOS43NDgzMyAxNC4xODU4IDkuNTgxMThMMTQuMzE2IDkuNDI4OThDMTQuODE5IDguODQwNzIgMTUuMDcwNiA4LjU0NjU5IDE0Ljk4MjggOC4yNjQzMkMxNC44OTUgNy45ODIwNSAxNC41MjYgNy44OTg1NyAxMy43ODgxIDcuNzMxNjFMMTMuNTk3MiA3LjY4ODQxQzEzLjM4NzUgNy42NDA5NyAxMy4yODI3IDcuNjE3MjUgMTMuMTk4NSA3LjU1MzM0QzEzLjExNDMgNy40ODk0NCAxMy4wNjAzIDcuMzkyNTggMTIuOTUyNCA3LjE5ODg3TDEyLjg1NDEgNy4wMjI1MUMxMi40NzQxIDYuMzQwODQgMTIuMjg0MSA2IDEyIDZaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
 */
export const MedalRibbonsStar:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path opacity="0.5" d="M12 16.0678L8.22855 19.9727C7.68843 20.532 7.41837 20.8116 7.18967 20.9084C6.66852 21.1289 6.09042 20.9402 5.81628 20.4601C5.69597 20.2494 5.65848 19.8694 5.5835 19.1094C5.54117 18.6803 5.52 18.4657 5.45575 18.286C5.31191 17.8837 5.00966 17.5708 4.6211 17.4218C4.44755 17.3553 4.24033 17.3334 3.82592 17.2895L3.82589 17.2895C3.09187 17.2119 2.72486 17.1731 2.52138 17.0485C2.05772 16.7647 1.87548 16.1661 2.08843 15.6265C2.18188 15.3897 2.45194 15.1101 2.99206 14.5509L5.45575 11.9999L6.69396 10.7617L12 16.0678L17.306 10.7617L18.5442 11.9999L21.0079 14.5509C21.5481 15.1101 21.8181 15.3897 21.9116 15.6265C22.1245 16.1661 21.9423 16.7647 21.4786 17.0485C21.2751 17.1731 20.9081 17.2119 20.1741 17.2895C19.7597 17.3334 19.5525 17.3553 19.3789 17.4218C18.9903 17.5708 18.6881 17.8837 18.5442 18.286C18.48 18.4657 18.4588 18.6803 18.4165 19.1094V19.1094C18.3415 19.8694 18.304 20.2494 18.1837 20.4601C17.9096 20.9402 17.3315 21.1289 16.8103 20.9084C16.5816 20.8116 16.3116 20.532 15.7715 19.9727L12 16.0678Z" fill="currentColor"/>
<path fillRule="evenodd" clipRule="evenodd" d="M12 16C15.866 16 19 12.866 19 9C19 5.13401 15.866 2 12 2C8.13401 2 5 5.13401 5 9C5 12.866 8.13401 16 12 16ZM12 6C11.7159 6 11.5259 6.34084 11.1459 7.02251L11.0476 7.19887C10.9397 7.39258 10.8857 7.48944 10.8015 7.55334C10.7173 7.61725 10.6125 7.64097 10.4028 7.68841L10.2119 7.73161C9.47396 7.89857 9.10501 7.98205 9.01723 8.26432C8.92945 8.54659 9.18097 8.84072 9.68403 9.42898L9.81418 9.58117C9.95713 9.74833 10.0286 9.83191 10.0608 9.93531C10.0929 10.0387 10.0821 10.1502 10.0605 10.3733L10.0408 10.5763C9.96476 11.3612 9.92674 11.7536 10.1565 11.9281C10.3864 12.1025 10.7318 11.9435 11.4227 11.6254L11.6014 11.5431C11.7978 11.4527 11.8959 11.4075 12 11.4075C12.1041 11.4075 12.2022 11.4527 12.3986 11.5431L12.5773 11.6254C13.2682 11.9435 13.6136 12.1025 13.8435 11.9281C14.0733 11.7536 14.0352 11.3612 13.9592 10.5763L13.9395 10.3733C13.9179 10.1502 13.9071 10.0387 13.9392 9.93531C13.9714 9.83191 14.0429 9.74833 14.1858 9.58118L14.316 9.42898C14.819 8.84072 15.0706 8.54659 14.9828 8.26432C14.895 7.98205 14.526 7.89857 13.7881 7.73161L13.5972 7.68841C13.3875 7.64097 13.2827 7.61725 13.1985 7.55334C13.1143 7.48944 13.0603 7.39258 12.9524 7.19887L12.8541 7.02251C12.4741 6.34084 12.2841 6 12 6Z" fill="currentColor"/>
    </IconBase>
))

MedalRibbonsStar.displayName = "MedalRibbonsStar"
