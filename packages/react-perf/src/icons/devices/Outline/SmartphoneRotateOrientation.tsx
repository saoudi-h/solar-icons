/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTYuMjYwNiAxLjg3NDM0QzE2LjMzMDEgMS40NjU5OSAxNi43MTc0IDEuMTkxMjcgMTcuMTI1OCAxLjI2MDc0QzIwLjMyNTQgMS44MDUwNiAyMi43NSA0LjYyMTIgMjIuNzUgOC4wMDAxMkMyMi43NSA4LjI3NzU4IDIyLjU5NjggOC41MzIzOCAyMi4zNTE4IDguNjYyNTFDMjIuMTA2NyA4Ljc5MjY1IDIxLjgwOTggOC43NzY4NiAyMS41OCA4LjYyMTQ2TDIwLjA4IDcuNjA3NDRDMTkuNzM2OCA3LjM3NTQ2IDE5LjY0NjcgNi45MDkyMiAxOS44Nzg3IDYuNTY2MDZDMjAuMTEwNiA2LjIyMjkgMjAuNTc2OSA2LjEzMjc4IDIwLjkyIDYuMzY0NzZMMjEuMDE5NiA2LjQzMjA4QzIwLjQ0MjYgNC41MjI3MSAxOC44Mzk5IDMuMDczOSAxNi44NzQyIDIuNzM5NUMxNi40NjU5IDIuNjcwMDMgMTYuMTkxMiAyLjI4MjY4IDE2LjI2MDYgMS44NzQzNFpNNy45NDUxMyAxLjI1MDEySDkuMDU0ODhDMTAuNDIyNSAxLjI1MDEgMTEuNTI0OCAxLjI1MDA4IDEyLjM5MTggMS4zNjY2NEMxMy4yOTE5IDEuNDg3NjYgMTQuMDQ5NyAxLjc0NjU1IDE0LjY1MTcgMi4zNDg0N0MxNS4yNTM2IDIuOTUwMzkgMTUuNTEyNSAzLjcwODI2IDE1LjYzMzUgNC42MDgzN0MxNS43NSA1LjQ3NTM0IDE1Ljc1IDYuNTc3NjYgMTUuNzUgNy45NDUyNVYxNi4wNTVDMTUuNzUgMTcuNDIyNiAxNS43NSAxOC41MjQ5IDE1LjYzMzUgMTkuMzkxOUMxNS41MTI1IDIwLjI5MiAxNS4yNTM2IDIxLjA0OTkgMTQuNjUxNyAyMS42NTE4QzE0LjA0OTcgMjIuMjUzNyAxMy4yOTE5IDIyLjUxMjYgMTIuMzkxOCAyMi42MzM2QzExLjUyNDggMjIuNzUwMiAxMC40MjI1IDIyLjc1MDEgOS4wNTQ4NyAyMi43NTAxSDcuOTQ1MTNDNi41Nzc1NCAyMi43NTAxIDUuNDc1MjIgMjIuNzUwMiA0LjYwODI1IDIyLjYzMzZDMy43MDgxNCAyMi41MTI2IDIuOTUwMjcgMjIuMjUzNyAyLjM0ODM1IDIxLjY1MThDMS43NDY0MyAyMS4wNDk5IDEuNDg3NTQgMjAuMjkyIDEuMzY2NTIgMTkuMzkxOUMxLjI0OTk2IDE4LjUyNDkgMS4yNDk5OCAxNy40MjI2IDEuMjUgMTYuMDU1VjcuOTQ1MjVDMS4yNDk5OCA2LjU3NzY2IDEuMjQ5OTYgNS40NzUzNCAxLjM2NjUyIDQuNjA4MzdDMS40ODc1NCAzLjcwODI2IDEuNzQ2NDMgMi45NTAzOSAyLjM0ODM1IDIuMzQ4NDdDMi45NTAyNyAxLjc0NjU1IDMuNzA4MTQgMS40ODc2NiA0LjYwODI1IDEuMzY2NjRDNS40NzUyMiAxLjI1MDA4IDYuNTc3NTQgMS4yNTAxIDcuOTQ1MTMgMS4yNTAxMlpNNC44MDgxMiAyLjg1MzI3QzQuMDc0MzUgMi45NTE5MiAzLjY4NTc3IDMuMTMyMzcgMy40MDkwMSAzLjQwOTEzQzMuMTMyMjUgMy42ODU4OSAyLjk1MTggNC4wNzQ0NyAyLjg1MzE1IDQuODA4MjRDMi43NTE1OSA1LjU2MzU5IDIuNzUgNi41NjQ3IDIuNzUgOC4wMDAxMlYxNi4wMDAxQzIuNzUgMTcuNDM1NSAyLjc1MTU5IDE4LjQzNjYgMi44NTMxNSAxOS4xOTJDMi45NTE4IDE5LjkyNTggMy4xMzIyNSAyMC4zMTQzIDMuNDA5MDEgMjAuNTkxMUMzLjY4NTc3IDIwLjg2NzkgNC4wNzQzNSAyMS4wNDgzIDQuODA4MTIgMjEuMTQ3QzUuNTYzNDcgMjEuMjQ4NSA2LjU2NDU4IDIxLjI1MDEgOCAyMS4yNTAxSDlDMTAuNDM1NCAyMS4yNTAxIDExLjQzNjUgMjEuMjQ4NSAxMi4xOTE5IDIxLjE0N0MxMi45MjU3IDIxLjA0ODMgMTMuMzE0MiAyMC44Njc5IDEzLjU5MSAyMC41OTExQzEzLjg2NzggMjAuMzE0MyAxNC4wNDgyIDE5LjkyNTggMTQuMTQ2OSAxOS4xOTJDMTQuMjQ4NCAxOC40MzY2IDE0LjI1IDE3LjQzNTUgMTQuMjUgMTYuMDAwMVY4LjAwMDEyQzE0LjI1IDYuNTY0NyAxNC4yNDg0IDUuNTYzNTkgMTQuMTQ2OSA0LjgwODI0QzE0LjA0ODIgNC4wNzQ0NiAxMy44Njc4IDMuNjg1ODkgMTMuNTkxIDMuNDA5MTNDMTMuMzE0MiAzLjEzMjM3IDEyLjkyNTcgMi45NTE5MiAxMi4xOTE5IDIuODUzMjdDMTEuNDM2NSAyLjc1MTcxIDEwLjQzNTQgMi43NTAxMiA5IDIuNzUwMTJIOEM2LjU2NDU5IDIuNzUwMTIgNS41NjM0NyAyLjc1MTcxIDQuODA4MTIgMi44NTMyN1pNNS4yNSA1LjAwMDEyQzUuMjUgNC41ODU5MSA1LjU4NTc5IDQuMjUwMTIgNiA0LjI1MDEySDExQzExLjQxNDIgNC4yNTAxMiAxMS43NSA0LjU4NTkxIDExLjc1IDUuMDAwMTJDMTEuNzUgNS40MTQzMyAxMS40MTQyIDUuNzUwMTIgMTEgNS43NTAxMkg2QzUuNTg1NzkgNS43NTAxMiA1LjI1IDUuNDE0MzMgNS4yNSA1LjAwMDEyWk0xNi43NTAxIDkuOTk1NzlDMTYuNzU2MSA5LjU4MTYyIDE3LjA5NjcgOS4yNTA3MiAxNy41MTA5IDkuMjU2NzJDMTkuMzE4NCA5LjI4Mjg3IDIwLjY5NzIgOS4zOTQwMSAyMS42NTE3IDEwLjM0ODVDMjIuMjUzNiAxMC45NTA0IDIyLjUxMjUgMTEuNzA4MyAyMi42MzM1IDEyLjYwODRDMjIuNzUgMTMuNDc1MyAyMi43NSAxNC41Nzc3IDIyLjc1IDE1Ljk0NTNWMTYuMDU1QzIyLjc1IDE3LjQyMjYgMjIuNzUgMTguNTI0OSAyMi42MzM1IDE5LjM5MTlDMjIuNTEyNSAyMC4yOTIgMjIuMjUzNiAyMS4wNDk5IDIxLjY1MTcgMjEuNjUxOEMyMC42OTcyIDIyLjYwNjIgMTkuMzE4NCAyMi43MTc0IDE3LjUxMDkgMjIuNzQzNUMxNy4wOTY3IDIyLjc0OTUgMTYuNzU2MSAyMi40MTg2IDE2Ljc1MDEgMjIuMDA0NUMxNi43NDQxIDIxLjU5MDMgMTcuMDc1IDIxLjI0OTcgMTcuNDg5MiAyMS4yNDM3QzE5LjQwMDkgMjEuMjE2IDIwLjEzMDggMjEuMDUxMyAyMC41OTEgMjAuNTkxMUMyMC44Njc4IDIwLjMxNDMgMjEuMDQ4MiAxOS45MjU4IDIxLjE0NjkgMTkuMTkyQzIxLjI0ODQgMTguNDM2NiAyMS4yNSAxNy40MzU1IDIxLjI1IDE2LjAwMDFDMjEuMjUgMTQuNTY0NyAyMS4yNDg0IDEzLjU2MzYgMjEuMTQ2OSAxMi44MDgyQzIxLjA0ODIgMTIuMDc0NSAyMC44Njc4IDExLjY4NTkgMjAuNTkxIDExLjQwOTFDMjAuMTMwOCAxMC45NDkgMTkuNDAwOSAxMC43ODQyIDE3LjQ4OTIgMTAuNzU2NkMxNy4wNzUgMTAuNzUwNiAxNi43NDQxIDEwLjQxIDE2Ljc1MDEgOS45OTU3OVpNMTkgMTMuMjUwMUMxOS40MTQyIDEzLjI1MDEgMTkuNzUgMTMuNTg1OSAxOS43NSAxNC4wMDAxVjE4LjAwMDFDMTkuNzUgMTguNDE0MyAxOS40MTQyIDE4Ljc1MDEgMTkgMTguNzUwMUMxOC41ODU4IDE4Ljc1MDEgMTguMjUgMTguNDE0MyAxOC4yNSAxOC4wMDAxVjE0LjAwMDFDMTguMjUgMTMuNTg1OSAxOC41ODU4IDEzLjI1MDEgMTkgMTMuMjUwMVpNOC41IDE2Ljc1MDFDOC4wODU3OSAxNi43NTAxIDcuNzUgMTcuMDg1OSA3Ljc1IDE3LjUwMDFDNy43NSAxNy45MTQzIDguMDg1NzkgMTguMjUwMSA4LjUgMTguMjUwMUM4LjkxNDIxIDE4LjI1MDEgOS4yNSAxNy45MTQzIDkuMjUgMTcuNTAwMUM5LjI1IDE3LjA4NTkgOC45MTQyMSAxNi43NTAxIDguNSAxNi43NTAxWk02LjI1IDE3LjUwMDFDNi4yNSAxNi4yNTc1IDcuMjU3MzYgMTUuMjUwMSA4LjUgMTUuMjUwMUM5Ljc0MjY0IDE1LjI1MDEgMTAuNzUgMTYuMjU3NSAxMC43NSAxNy41MDAxQzEwLjc1IDE4Ljc0MjggOS43NDI2NCAxOS43NTAxIDguNSAxOS43NTAxQzcuMjU3MzYgMTkuNzUwMSA2LjI1IDE4Ljc0MjggNi4yNSAxNy41MDAxWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
 */
export const SmartphoneRotateOrientation:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M16.2606 1.87434C16.3301 1.46599 16.7174 1.19127 17.1258 1.26074C20.3254 1.80506 22.75 4.6212 22.75 8.00012C22.75 8.27758 22.5968 8.53238 22.3518 8.66251C22.1067 8.79265 21.8098 8.77686 21.58 8.62146L20.08 7.60744C19.7368 7.37546 19.6467 6.90922 19.8787 6.56606C20.1106 6.2229 20.5769 6.13278 20.92 6.36476L21.0196 6.43208C20.4426 4.52271 18.8399 3.0739 16.8742 2.7395C16.4659 2.67003 16.1912 2.28268 16.2606 1.87434ZM7.94513 1.25012H9.05488C10.4225 1.2501 11.5248 1.25008 12.3918 1.36664C13.2919 1.48766 14.0497 1.74655 14.6517 2.34847C15.2536 2.95039 15.5125 3.70826 15.6335 4.60837C15.75 5.47534 15.75 6.57766 15.75 7.94525V16.055C15.75 17.4226 15.75 18.5249 15.6335 19.3919C15.5125 20.292 15.2536 21.0499 14.6517 21.6518C14.0497 22.2537 13.2919 22.5126 12.3918 22.6336C11.5248 22.7502 10.4225 22.7501 9.05487 22.7501H7.94513C6.57754 22.7501 5.47522 22.7502 4.60825 22.6336C3.70814 22.5126 2.95027 22.2537 2.34835 21.6518C1.74643 21.0499 1.48754 20.292 1.36652 19.3919C1.24996 18.5249 1.24998 17.4226 1.25 16.055V7.94525C1.24998 6.57766 1.24996 5.47534 1.36652 4.60837C1.48754 3.70826 1.74643 2.95039 2.34835 2.34847C2.95027 1.74655 3.70814 1.48766 4.60825 1.36664C5.47522 1.25008 6.57754 1.2501 7.94513 1.25012ZM4.80812 2.85327C4.07435 2.95192 3.68577 3.13237 3.40901 3.40913C3.13225 3.68589 2.9518 4.07447 2.85315 4.80824C2.75159 5.56359 2.75 6.5647 2.75 8.00012V16.0001C2.75 17.4355 2.75159 18.4366 2.85315 19.192C2.9518 19.9258 3.13225 20.3143 3.40901 20.5911C3.68577 20.8679 4.07435 21.0483 4.80812 21.147C5.56347 21.2485 6.56458 21.2501 8 21.2501H9C10.4354 21.2501 11.4365 21.2485 12.1919 21.147C12.9257 21.0483 13.3142 20.8679 13.591 20.5911C13.8678 20.3143 14.0482 19.9258 14.1469 19.192C14.2484 18.4366 14.25 17.4355 14.25 16.0001V8.00012C14.25 6.5647 14.2484 5.56359 14.1469 4.80824C14.0482 4.07446 13.8678 3.68589 13.591 3.40913C13.3142 3.13237 12.9257 2.95192 12.1919 2.85327C11.4365 2.75171 10.4354 2.75012 9 2.75012H8C6.56459 2.75012 5.56347 2.75171 4.80812 2.85327ZM5.25 5.00012C5.25 4.58591 5.58579 4.25012 6 4.25012H11C11.4142 4.25012 11.75 4.58591 11.75 5.00012C11.75 5.41433 11.4142 5.75012 11 5.75012H6C5.58579 5.75012 5.25 5.41433 5.25 5.00012ZM16.7501 9.99579C16.7561 9.58162 17.0967 9.25072 17.5109 9.25672C19.3184 9.28287 20.6972 9.39401 21.6517 10.3485C22.2536 10.9504 22.5125 11.7083 22.6335 12.6084C22.75 13.4753 22.75 14.5777 22.75 15.9453V16.055C22.75 17.4226 22.75 18.5249 22.6335 19.3919C22.5125 20.292 22.2536 21.0499 21.6517 21.6518C20.6972 22.6062 19.3184 22.7174 17.5109 22.7435C17.0967 22.7495 16.7561 22.4186 16.7501 22.0045C16.7441 21.5903 17.075 21.2497 17.4892 21.2437C19.4009 21.216 20.1308 21.0513 20.591 20.5911C20.8678 20.3143 21.0482 19.9258 21.1469 19.192C21.2484 18.4366 21.25 17.4355 21.25 16.0001C21.25 14.5647 21.2484 13.5636 21.1469 12.8082C21.0482 12.0745 20.8678 11.6859 20.591 11.4091C20.1308 10.949 19.4009 10.7842 17.4892 10.7566C17.075 10.7506 16.7441 10.41 16.7501 9.99579ZM19 13.2501C19.4142 13.2501 19.75 13.5859 19.75 14.0001V18.0001C19.75 18.4143 19.4142 18.7501 19 18.7501C18.5858 18.7501 18.25 18.4143 18.25 18.0001V14.0001C18.25 13.5859 18.5858 13.2501 19 13.2501ZM8.5 16.7501C8.08579 16.7501 7.75 17.0859 7.75 17.5001C7.75 17.9143 8.08579 18.2501 8.5 18.2501C8.91421 18.2501 9.25 17.9143 9.25 17.5001C9.25 17.0859 8.91421 16.7501 8.5 16.7501ZM6.25 17.5001C6.25 16.2575 7.25736 15.2501 8.5 15.2501C9.74264 15.2501 10.75 16.2575 10.75 17.5001C10.75 18.7428 9.74264 19.7501 8.5 19.7501C7.25736 19.7501 6.25 18.7428 6.25 17.5001Z" fill="currentColor"/>
    </IconBase>
))

SmartphoneRotateOrientation.displayName = "SmartphoneRotateOrientation"
