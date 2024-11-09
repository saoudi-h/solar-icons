/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMy4wODY3IDIxLjM4NzdMMTMuNzMyMSAyMS43Njk3TDEzLjA4NjcgMjEuMzg3N1pNMTMuNjI4OCAyMC40NzE4TDEyLjk4MzMgMjAuMDg5OEwxMy42Mjg4IDIwLjQ3MThaTTEwLjM3MTIgMjAuNDcxOEw5LjcyNTc5IDIwLjg1MzlIOS43MjU3OUwxMC4zNzEyIDIwLjQ3MThaTTEwLjkxMzMgMjEuMzg3N0wxMS41NTg3IDIxLjAwNTdMMTAuOTEzMyAyMS4zODc3Wk0yLjM4MDYgMTUuOTEzNEwzLjA3MzUxIDE1LjYyNjRWMTUuNjI2NEwyLjM4MDYgMTUuOTEzNFpNNy43ODk1OCAxOC45OTE1TDcuNzc2NjYgMTkuNzQxM0w3Ljc4OTU4IDE4Ljk5MTVaTTUuMDg2NTggMTguNjE5NEw0Ljc5OTU3IDE5LjMxMjNINC43OTk1N0w1LjA4NjU4IDE4LjYxOTRaTTIxLjYxOTQgMTUuOTEzNEwyMi4zMTIzIDE2LjIwMDRWMTYuMjAwNEwyMS42MTk0IDE1LjkxMzRaTTE2LjIxMDQgMTguOTkxNUwxNi4xOTc1IDE4LjI0MTZMMTYuMjEwNCAxOC45OTE1Wk0xOC45MTM0IDE4LjYxOTRMMTkuMjAwNCAxOS4zMTIzSDE5LjIwMDRMMTguOTEzNCAxOC42MTk0Wk0xOS42MTI1IDIuNzM2OEwxOS4yMjA2IDMuMzc2MjhMMTkuNjEyNSAyLjczNjhaTTIxLjI2MzIgNC4zODc1MUwyMS45MDI3IDMuOTk1NjNWMy45OTU2M0wyMS4yNjMyIDQuMzg3NTFaTTQuMzg3NTEgMi43MzY4TDMuOTk1NjMgMi4wOTczMlYyLjA5NzMyTDQuMzg3NTEgMi43MzY4Wk0yLjczNjggNC4zODc1MUwyLjA5NzMyIDMuOTk1NjNIMi4wOTczMkwyLjczNjggNC4zODc1MVpNOS40MDI3OSAxOS4yMDk4TDkuNzc5ODYgMTguNTYxNUw5Ljc3OTg2IDE4LjU2MTVMOS40MDI3OSAxOS4yMDk4Wk0xMy43MzIxIDIxLjc2OTdMMTQuMjc0MiAyMC44NTM5TDEyLjk4MzMgMjAuMDg5OEwxMi40NDEyIDIxLjAwNTdMMTMuNzMyMSAyMS43Njk3Wk05LjcyNTc5IDIwLjg1MzlMMTAuMjY3OSAyMS43Njk3TDExLjU1ODcgMjEuMDA1N0wxMS4wMTY2IDIwLjA4OThMOS43MjU3OSAyMC44NTM5Wk0xMi40NDEyIDIxLjAwNTdDMTIuMjQ4NSAyMS4zMzEzIDExLjc1MTUgMjEuMzMxMyAxMS41NTg3IDIxLjAwNTdMMTAuMjY3OSAyMS43Njk3QzExLjA0MTUgMjMuMDc2NyAxMi45NTg1IDIzLjA3NjcgMTMuNzMyMSAyMS43Njk3TDEyLjQ0MTIgMjEuMDA1N1pNMTAuNSAyLjc1SDEzLjVWMS4yNUgxMC41VjIuNzVaTTIxLjI1IDEwLjVWMTEuNUgyMi43NVYxMC41SDIxLjI1Wk0yLjc1IDExLjVWMTAuNUgxLjI1VjExLjVIMi43NVpNMS4yNSAxMS41QzEuMjUgMTIuNjU0NiAxLjI0OTU5IDEzLjU1ODEgMS4yOTkzMSAxNC4yODY4QzEuMzQ5NSAxNS4wMjIzIDEuNDUzMjMgMTUuNjM0NCAxLjY4NzY5IDE2LjIwMDRMMy4wNzM1MSAxNS42MjY0QzIuOTI3MzcgMTUuMjczNiAyLjg0MDgxIDE0Ljg0MzggMi43OTU4NCAxNC4xODQ3QzIuNzUwNDEgMTMuNTE4OSAyLjc1IDEyLjY3NTEgMi43NSAxMS41SDEuMjVaTTcuODAyNSAxOC4yNDE2QzYuNTQ3MDYgMTguMjE5OSA1Ljg4OTIzIDE4LjE0MDEgNS4zNzM1OSAxNy45MjY1TDQuNzk5NTcgMTkuMzEyM0M1LjYwNDU0IDE5LjY0NTcgNi41MjEzOCAxOS43MTk3IDcuNzc2NjYgMTkuNzQxM0w3LjgwMjUgMTguMjQxNlpNMS42ODc2OSAxNi4yMDA0QzIuMjcxMjggMTcuNjA5MyAzLjM5MDY2IDE4LjcyODcgNC43OTk1NyAxOS4zMTIzTDUuMzczNiAxNy45MjY1QzQuMzMyMjMgMTcuNDk1MSAzLjUwNDg2IDE2LjY2NzggMy4wNzM1MSAxNS42MjY0TDEuNjg3NjkgMTYuMjAwNFpNMjEuMjUgMTEuNUMyMS4yNSAxMi42NzUxIDIxLjI0OTYgMTMuNTE4OSAyMS4yMDQyIDE0LjE4NDdDMjEuMTU5MiAxNC44NDM4IDIxLjA3MjYgMTUuMjczNiAyMC45MjY1IDE1LjYyNjRMMjIuMzEyMyAxNi4yMDA0QzIyLjU0NjggMTUuNjM0NCAyMi42NTA1IDE1LjAyMjMgMjIuNzAwNyAxNC4yODY4QzIyLjc1MDQgMTMuNTU4MSAyMi43NSAxMi42NTQ2IDIyLjc1IDExLjVIMjEuMjVaTTE2LjIyMzMgMTkuNzQxM0MxNy40Nzg2IDE5LjcxOTcgMTguMzk1NSAxOS42NDU3IDE5LjIwMDQgMTkuMzEyM0wxOC42MjY0IDE3LjkyNjVDMTguMTEwOCAxOC4xNDAxIDE3LjQ1MjkgMTguMjE5OSAxNi4xOTc1IDE4LjI0MTZMMTYuMjIzMyAxOS43NDEzWk0yMC45MjY1IDE1LjYyNjRDMjAuNDk1MSAxNi42Njc4IDE5LjY2NzggMTcuNDk1MSAxOC42MjY0IDE3LjkyNjVMMTkuMjAwNCAxOS4zMTIzQzIwLjYwOTMgMTguNzI4NyAyMS43Mjg3IDE3LjYwOTMgMjIuMzEyMyAxNi4yMDA0TDIwLjkyNjUgMTUuNjI2NFpNMTMuNSAyLjc1QzE1LjE1MTIgMi43NSAxNi4zMzcgMi43NTA3OSAxNy4yNjE5IDIuODM4NzNDMTguMTc1NyAyLjkyNTYxIDE4Ljc1NzEgMy4wOTIyMyAxOS4yMjA2IDMuMzc2MjhMMjAuMDA0NCAyLjA5NzMyQzE5LjI2NTUgMS42NDQ1NyAxOC40Mjc0IDEuNDQyNzkgMTcuNDAzOSAxLjM0NTQ3QzE2LjM5MTUgMS4yNDkyMSAxNS4xMjIyIDEuMjUgMTMuNSAxLjI1VjIuNzVaTTIyLjc1IDEwLjVDMjIuNzUgOC44Nzc4MSAyMi43NTA4IDcuNjA4NSAyMi42NTQ1IDYuNTk2MTFDMjIuNTU3MiA1LjU3MjU2IDIyLjM1NTQgNC43MzQ0NSAyMS45MDI3IDMuOTk1NjNMMjAuNjIzNyA0Ljc3OTM4QzIwLjkwNzggNS4yNDI5MSAyMS4wNzQ0IDUuODI0MzQgMjEuMTYxMyA2LjczODA5QzIxLjI0OTIgNy42NjMgMjEuMjUgOC44NDg3NiAyMS4yNSAxMC41SDIyLjc1Wk0xOS4yMjA2IDMuMzc2MjhDMTkuNzkyNSAzLjcyNjcyIDIwLjI3MzMgNC4yMDc1MiAyMC42MjM3IDQuNzc5MzhMMjEuOTAyNyAzLjk5NTYzQzIxLjQyODYgMy4yMjE5NCAyMC43NzgxIDIuNTcxNDQgMjAuMDA0NCAyLjA5NzMyTDE5LjIyMDYgMy4zNzYyOFpNMTAuNSAxLjI1QzguODc3ODEgMS4yNSA3LjYwODUgMS4yNDkyMSA2LjU5NjExIDEuMzQ1NDdDNS41NzI1NiAxLjQ0Mjc5IDQuNzM0NDUgMS42NDQ1NyAzLjk5NTYzIDIuMDk3MzJMNC43NzkzOCAzLjM3NjI4QzUuMjQyOTEgMy4wOTIyMyA1LjgyNDM0IDIuOTI1NjEgNi43MzgwOSAyLjgzODczQzcuNjYzIDIuNzUwNzkgOC44NDg3NiAyLjc1IDEwLjUgMi43NVYxLjI1Wk0yLjc1IDEwLjVDMi43NSA4Ljg0ODc2IDIuNzUwNzkgNy42NjMgMi44Mzg3MyA2LjczODA5QzIuOTI1NjEgNS44MjQzNCAzLjA5MjIzIDUuMjQyOTEgMy4zNzYyOCA0Ljc3OTM4TDIuMDk3MzIgMy45OTU2M0MxLjY0NDU3IDQuNzM0NDUgMS40NDI3OSA1LjU3MjU2IDEuMzQ1NDcgNi41OTYxMUMxLjI0OTIxIDcuNjA4NSAxLjI1IDguODc3ODEgMS4yNSAxMC41SDIuNzVaTTMuOTk1NjMgMi4wOTczMkMzLjIyMTk0IDIuNTcxNDQgMi41NzE0NCAzLjIyMTk0IDIuMDk3MzIgMy45OTU2M0wzLjM3NjI4IDQuNzc5MzhDMy43MjY3MiA0LjIwNzUyIDQuMjA3NTIgMy43MjY3MiA0Ljc3OTM4IDMuMzc2MjhMMy45OTU2MyAyLjA5NzMyWk0xMS4wMTY2IDIwLjA4OThDMTAuODEzNiAxOS43NDY4IDEwLjYzNTQgMTkuNDQ0MSAxMC40NjIxIDE5LjIwNjNDMTAuMjc5NSAxOC45NTU5IDEwLjA3MDIgMTguNzMwNCA5Ljc3OTg2IDE4LjU2MTVMOS4wMjU3MiAxOS44NTgyQzkuMDczMTMgMTkuODg1NyA5LjEzNzcyIDE5LjkzNiA5LjI0OTg1IDIwLjA4OThDOS4zNzEyMiAyMC4yNTY0IDkuNTA4MzUgMjAuNDg2NSA5LjcyNTc5IDIwLjg1MzlMMTEuMDE2NiAyMC4wODk4Wk03Ljc3NjY2IDE5Ljc0MTNDOC4yMTU3NSAxOS43NDg5IDguNDkzODcgMTkuNzU0NSA4LjcwNTg4IDE5Ljc3NzlDOC45MDM5OSAxOS43OTk5IDguOTgwNzggMTkuODMyIDkuMDI1NzIgMTkuODU4Mkw5Ljc3OTg2IDE4LjU2MTVDOS40ODcxIDE4LjM5MTIgOS4xODI0NiAxOC4zMjE1IDguODcwOTcgMTguMjg3QzguNTczMzkgMTguMjU0MSA4LjIxMzc1IDE4LjI0ODcgNy44MDI1IDE4LjI0MTZMNy43NzY2NiAxOS43NDEzWk0xNC4yNzQyIDIwLjg1MzlDMTQuNDkxNiAyMC40ODY1IDE0LjYyODcgMjAuMjU2NCAxNC43NTAxIDIwLjA4OThDMTQuODYyMiAxOS45MzYgMTQuOTI2OCAxOS44ODU3IDE0Ljk3NDIgMTkuODU4MkwxNC4yMjAxIDE4LjU2MTVDMTMuOTI5OCAxOC43MzA0IDEzLjcyMDQgMTguOTU1OSAxMy41Mzc5IDE5LjIwNjNDMTMuMzY0NiAxOS40NDQxIDEzLjE4NjQgMTkuNzQ2OCAxMi45ODMzIDIwLjA4OThMMTQuMjc0MiAyMC44NTM5Wk0xNi4xOTc1IDE4LjI0MTZDMTUuNzg2MiAxOC4yNDg3IDE1LjQyNjYgMTguMjU0MSAxNS4xMjkgMTguMjg3QzE0LjgxNzUgMTguMzIxNSAxNC41MTI5IDE4LjM5MTIgMTQuMjIwMSAxOC41NjE1TDE0Ljk3NDIgMTkuODU4MkMxNS4wMTkyIDE5LjgzMiAxNS4wOTYgMTkuNzk5OSAxNS4yOTQxIDE5Ljc3NzlDMTUuNTA2MSAxOS43NTQ1IDE1Ljc4NDIgMTkuNzQ4OSAxNi4yMjMzIDE5Ljc0MTNMMTYuMTk3NSAxOC4yNDE2WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik05IDExLjA4TDExIDEzTDE1IDkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
 */
export const ChatSquareCheck:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path d="M13.0867 21.3877L13.7321 21.7697L13.0867 21.3877ZM13.6288 20.4718L12.9833 20.0898L13.6288 20.4718ZM10.3712 20.4718L9.72579 20.8539H9.72579L10.3712 20.4718ZM10.9133 21.3877L11.5587 21.0057L10.9133 21.3877ZM2.3806 15.9134L3.07351 15.6264V15.6264L2.3806 15.9134ZM7.78958 18.9915L7.77666 19.7413L7.78958 18.9915ZM5.08658 18.6194L4.79957 19.3123H4.79957L5.08658 18.6194ZM21.6194 15.9134L22.3123 16.2004V16.2004L21.6194 15.9134ZM16.2104 18.9915L16.1975 18.2416L16.2104 18.9915ZM18.9134 18.6194L19.2004 19.3123H19.2004L18.9134 18.6194ZM19.6125 2.7368L19.2206 3.37628L19.6125 2.7368ZM21.2632 4.38751L21.9027 3.99563V3.99563L21.2632 4.38751ZM4.38751 2.7368L3.99563 2.09732V2.09732L4.38751 2.7368ZM2.7368 4.38751L2.09732 3.99563H2.09732L2.7368 4.38751ZM9.40279 19.2098L9.77986 18.5615L9.77986 18.5615L9.40279 19.2098ZM13.7321 21.7697L14.2742 20.8539L12.9833 20.0898L12.4412 21.0057L13.7321 21.7697ZM9.72579 20.8539L10.2679 21.7697L11.5587 21.0057L11.0166 20.0898L9.72579 20.8539ZM12.4412 21.0057C12.2485 21.3313 11.7515 21.3313 11.5587 21.0057L10.2679 21.7697C11.0415 23.0767 12.9585 23.0767 13.7321 21.7697L12.4412 21.0057ZM10.5 2.75H13.5V1.25H10.5V2.75ZM21.25 10.5V11.5H22.75V10.5H21.25ZM2.75 11.5V10.5H1.25V11.5H2.75ZM1.25 11.5C1.25 12.6546 1.24959 13.5581 1.29931 14.2868C1.3495 15.0223 1.45323 15.6344 1.68769 16.2004L3.07351 15.6264C2.92737 15.2736 2.84081 14.8438 2.79584 14.1847C2.75041 13.5189 2.75 12.6751 2.75 11.5H1.25ZM7.8025 18.2416C6.54706 18.2199 5.88923 18.1401 5.37359 17.9265L4.79957 19.3123C5.60454 19.6457 6.52138 19.7197 7.77666 19.7413L7.8025 18.2416ZM1.68769 16.2004C2.27128 17.6093 3.39066 18.7287 4.79957 19.3123L5.3736 17.9265C4.33223 17.4951 3.50486 16.6678 3.07351 15.6264L1.68769 16.2004ZM21.25 11.5C21.25 12.6751 21.2496 13.5189 21.2042 14.1847C21.1592 14.8438 21.0726 15.2736 20.9265 15.6264L22.3123 16.2004C22.5468 15.6344 22.6505 15.0223 22.7007 14.2868C22.7504 13.5581 22.75 12.6546 22.75 11.5H21.25ZM16.2233 19.7413C17.4786 19.7197 18.3955 19.6457 19.2004 19.3123L18.6264 17.9265C18.1108 18.1401 17.4529 18.2199 16.1975 18.2416L16.2233 19.7413ZM20.9265 15.6264C20.4951 16.6678 19.6678 17.4951 18.6264 17.9265L19.2004 19.3123C20.6093 18.7287 21.7287 17.6093 22.3123 16.2004L20.9265 15.6264ZM13.5 2.75C15.1512 2.75 16.337 2.75079 17.2619 2.83873C18.1757 2.92561 18.7571 3.09223 19.2206 3.37628L20.0044 2.09732C19.2655 1.64457 18.4274 1.44279 17.4039 1.34547C16.3915 1.24921 15.1222 1.25 13.5 1.25V2.75ZM22.75 10.5C22.75 8.87781 22.7508 7.6085 22.6545 6.59611C22.5572 5.57256 22.3554 4.73445 21.9027 3.99563L20.6237 4.77938C20.9078 5.24291 21.0744 5.82434 21.1613 6.73809C21.2492 7.663 21.25 8.84876 21.25 10.5H22.75ZM19.2206 3.37628C19.7925 3.72672 20.2733 4.20752 20.6237 4.77938L21.9027 3.99563C21.4286 3.22194 20.7781 2.57144 20.0044 2.09732L19.2206 3.37628ZM10.5 1.25C8.87781 1.25 7.6085 1.24921 6.59611 1.34547C5.57256 1.44279 4.73445 1.64457 3.99563 2.09732L4.77938 3.37628C5.24291 3.09223 5.82434 2.92561 6.73809 2.83873C7.663 2.75079 8.84876 2.75 10.5 2.75V1.25ZM2.75 10.5C2.75 8.84876 2.75079 7.663 2.83873 6.73809C2.92561 5.82434 3.09223 5.24291 3.37628 4.77938L2.09732 3.99563C1.64457 4.73445 1.44279 5.57256 1.34547 6.59611C1.24921 7.6085 1.25 8.87781 1.25 10.5H2.75ZM3.99563 2.09732C3.22194 2.57144 2.57144 3.22194 2.09732 3.99563L3.37628 4.77938C3.72672 4.20752 4.20752 3.72672 4.77938 3.37628L3.99563 2.09732ZM11.0166 20.0898C10.8136 19.7468 10.6354 19.4441 10.4621 19.2063C10.2795 18.9559 10.0702 18.7304 9.77986 18.5615L9.02572 19.8582C9.07313 19.8857 9.13772 19.936 9.24985 20.0898C9.37122 20.2564 9.50835 20.4865 9.72579 20.8539L11.0166 20.0898ZM7.77666 19.7413C8.21575 19.7489 8.49387 19.7545 8.70588 19.7779C8.90399 19.7999 8.98078 19.832 9.02572 19.8582L9.77986 18.5615C9.4871 18.3912 9.18246 18.3215 8.87097 18.287C8.57339 18.2541 8.21375 18.2487 7.8025 18.2416L7.77666 19.7413ZM14.2742 20.8539C14.4916 20.4865 14.6287 20.2564 14.7501 20.0898C14.8622 19.936 14.9268 19.8857 14.9742 19.8582L14.2201 18.5615C13.9298 18.7304 13.7204 18.9559 13.5379 19.2063C13.3646 19.4441 13.1864 19.7468 12.9833 20.0898L14.2742 20.8539ZM16.1975 18.2416C15.7862 18.2487 15.4266 18.2541 15.129 18.287C14.8175 18.3215 14.5129 18.3912 14.2201 18.5615L14.9742 19.8582C15.0192 19.832 15.096 19.7999 15.2941 19.7779C15.5061 19.7545 15.7842 19.7489 16.2233 19.7413L16.1975 18.2416Z" fill="currentColor"/>
<path opacity="0.5" d="M9 11.08L11 13L15 9" stroke="currentColor" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round"/>
    </IconBase>
))

ChatSquareCheck.displayName = "ChatSquareCheck"
