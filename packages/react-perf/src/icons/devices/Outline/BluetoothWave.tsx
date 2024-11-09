/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTEuOTA5OCAyLjc3MzY2TDEzLjc0MjYgNC4wNzUyQzE0LjI4MjkgNC40NTg4MSAxNC43NTQ4IDQuNzkzODUgMTUuMDg0MyA1LjEwODk3QzE1LjQzNSA1LjQ0NDQ1IDE1Ljc1MDEgNS44NzM0OSAxNS43NTAxIDYuNDU4MzRDMTUuNzUwMSA3LjA0MzE5IDE1LjQzNSA3LjQ3MjI0IDE1LjA4NDMgNy44MDc3MUMxNC43NTQ4IDguMTIyODMgMTQuMjgyOSA4LjQ1Nzg3IDEzLjc0MjYgOC44NDE0OEw5LjI5NTQxIDExLjk5OTZMMTMuNzQyNiAxNS4xNTc3QzE0LjI4MjkgMTUuNTQxMyAxNC43NTQ4IDE1Ljg3NjQgMTUuMDg0MyAxNi4xOTE1QzE1LjQzNSAxNi41MjcgMTUuNzUwMSAxNi45NTYgMTUuNzUwMSAxNy41NDA5QzE1Ljc1MDEgMTguMTI1NyAxNS40MzUgMTguNTU0OCAxNS4wODQzIDE4Ljg5MDJDMTQuNzU0OCAxOS4yMDU0IDE0LjI4MjkgMTkuNTQwNCAxMy43NDI2IDE5LjkyNEwxMS45MDk5IDIxLjIyNTVDMTEuMTgwNCAyMS43NDM2IDEwLjU2NDUgMjIuMTgxIDEwLjA1MzYgMjIuNDQxNkM5LjUzMzM2IDIyLjcwNyA4Ljg5ODI5IDIyLjkwNjcgOC4yNjMxMSAyMi41ODE3QzcuNjI2MTIgMjIuMjU1OCA3LjQxOTE5IDIxLjYyMjcgNy4zMzM3NCAyMS4wNDU4QzcuMjQ5OTggMjAuNDgwMyA3LjI1MDAyIDE5LjcyNzIgNy4yNTAwNiAxOC44MzY1TDcuMjUwMDYgMTMuNDQwMUwzLjQzMDE2IDE2LjExNEMzLjA5MDgyIDE2LjM1MTYgMi42MjMxOCAxNi4yNjkgMi4zODU2NCAxNS45Mjk3QzIuMTQ4MSAxNS41OTA0IDIuMjMwNjMgMTUuMTIyNyAyLjU2OTk3IDE0Ljg4NTJMNi42OTIyMiAxMS45OTk2TDIuNTY5OTcgOS4xMTQwMkMyLjIzMDYzIDguODc2NDkgMi4xNDgxIDguNDA4ODQgMi4zODU2NCA4LjA2OTVDMi42MjMxOCA3LjczMDE3IDMuMDkwODIgNy42NDc2NCAzLjQzMDE2IDcuODg1MTdMNy4yNTAwNiAxMC41NTkxVjUuMjI0MTdDNy4yNTAwNiA1LjIwMzU5IDcuMjUwMDYgNS4xODMwOSA3LjI1MDA2IDUuMTYyNjZDNy4yNTAwMiA0LjI3MTk4IDcuMjQ5OTggMy41MTg4OCA3LjMzMzc0IDIuOTUzNEM3LjQxOTE5IDIuMzc2NSA3LjYyNjEyIDEuNzQzNDIgOC4yNjMxMSAxLjQxNzUyQzguODk4MjkgMS4wOTI1NCA5LjUzMzM2IDEuMjkyMjMgMTAuMDUzNiAxLjU1NzU4QzEwLjU2NDQgMS44MTgxNyAxMS4xODA0IDIuMjU1NTkgMTEuOTA5OCAyLjc3MzY2Wk04Ljc1MDA2IDEzLjQ1MjFWMTguNzc1QzguNzUwMDYgMTkuNzQzOSA4Ljc1MjA3IDIwLjM4MzkgOC44MTc1NSAyMC44MjZDOC44NDkyNCAyMS4wNCA4Ljg4OTE1IDIxLjE1MjYgOC45MTg3IDIxLjIwODdDOC45MzE2OCAyMS4yMzM0IDguOTQwOTQgMjEuMjQyOSA4Ljk0MDk0IDIxLjI0MjlDOC45NDA5NCAyMS4yNDI5IDguOTQxNCAyMS4yNDM4IDguOTQ2MzIgMjEuMjQ2M0M4Ljk1MDgxIDIxLjI0ODYgOC45NTMwMyAyMS4yNDg5IDguOTUzMDMgMjEuMjQ4OUM4Ljk1NTA0IDIxLjI0OTIgOC45NjgwMyAyMS4yNTEgOC45OTY2MSAyMS4yNDcxQzkuMDYxMzMgMjEuMjM4MSA5LjE3Nzk2IDIxLjIwNDQgOS4zNzIgMjEuMTA1NEM5Ljc3MjcxIDIwLjkwMSAxMC4yOTg0IDIwLjUzMDEgMTEuMDkxMSAxOS45NjcyTDEyLjgyOTEgMTguNzMzQzEzLjQyNzggMTguMzA3OCAxMy44MDcyIDE4LjAzNiAxNC4wNDc1IDE3LjgwNjJDMTQuMTYxMiAxNy42OTc1IDE0LjIxMiAxNy42MjY5IDE0LjIzNDMgMTcuNTg2M0MxNC4yNTAzIDE3LjU1NzMgMTQuMjUwMSAxNy41NDc0IDE0LjI1MDEgMTcuNTQxOFYxNy41Mzk5QzE0LjI1MDEgMTcuNTM0MyAxNC4yNTAzIDE3LjUyNDQgMTQuMjM0MyAxNy40OTU1QzE0LjIxMiAxNy40NTQ4IDE0LjE2MTIgMTcuMzg0MiAxNC4wNDc1IDE3LjI3NTVDMTMuODA3MiAxNy4wNDU3IDEzLjQyNzggMTYuNzczOSAxMi44MjkxIDE2LjM0ODdMOC43NTAwNiAxMy40NTIxWk04Ljc1MDA2IDEwLjU0NzFWNS4yMjQxN0M4Ljc1MDA2IDQuMjU1MyA4Ljc1MjA3IDMuNjE1MjggOC44MTc1NSAzLjE3MzE4QzguODQ5MjQgMi45NTkyMiA4Ljg4OTE1IDIuODQ2NTYgOC45MTg3IDIuNzkwNDdDOC45MzE2OCAyLjc2NTgzIDguOTQwOTQgMi43NTYzMiA4Ljk0MDk0IDIuNzU2MzJDOC45NDA5NCAyLjc1NjMyIDguOTQxNCAyLjc1NTQxIDguOTQ2MzIgMi43NTI4OUM4Ljk1MDgxIDIuNzUwNTkgOC45NTMwMyAyLjc1MDMgOC45NTMwMyAyLjc1MDNDOC45NTUwMyAyLjc0OTk5IDguOTY4MDMgMi43NDgxOCA4Ljk5NjYxIDIuNzUyMTJDOS4wNjEzMyAyLjc2MTA1IDkuMTc3OTYgMi43OTQ4MSA5LjM3MiAyLjg5Mzc5QzkuNzcyNzEgMy4wOTgxOSAxMC4yOTg0IDMuNDY5MDggMTEuMDkxMSA0LjAzMjAyTDEyLjgyOTEgNS4yNjYyQzEzLjQyNzggNS42OTEzOCAxMy44MDcyIDUuOTYzMTUgMTQuMDQ3NSA2LjE5Mjk4QzE0LjE2MTIgNi4zMDE3MiAxNC4yMTIgNi4zNzIzMyAxNC4yMzQzIDYuNDEyOTRDMTQuMjUwMyA2LjQ0MTkxIDE0LjI1MDEgNi40NTE4MSAxNC4yNTAxIDYuNDU3MzVWNi40NTkzM0MxNC4yNTAxIDYuNDY0ODcgMTQuMjUwMyA2LjQ3NDc3IDE0LjIzNDMgNi41MDM3NEMxNC4yMTIgNi41NDQzNSAxNC4xNjEyIDYuNjE0OTYgMTQuMDQ3NSA2LjcyMzdDMTMuODA3MiA2Ljk1MzUzIDEzLjQyNzggNy4yMjUzIDEyLjgyOTEgNy42NTA0OEw4Ljc1MDA2IDEwLjU0NzFaTTE4LjQ4MjggNC40NTY0OUMxOC43ODI4IDQuMTcwODMgMTkuMjU3NSA0LjE4MjQxIDE5LjU0MzIgNC40ODIzNkwxOS4wMjQ5IDQuOTc1OTJDMTkuNTQzMiA0LjQ4MjM3IDE5LjU0MzIgNC40ODIzNiAxOS41NDMyIDQuNDgyMzZMMTkuNTQ0NCA0LjQ4MzY5TDE5LjU0NTkgNC40ODUyM0wxOS41NDkzIDQuNDg4ODlMMTkuNTU4MyA0LjQ5ODYzQzE5LjU2NTMgNC41MDYxOCAxOS41NzQxIDQuNTE1ODkgMTkuNTg0NSA0LjUyNzc1QzE5LjYwNTUgNC41NTE0OCAxOS42MzMzIDQuNTgzODggMTkuNjY3IDQuNjI1MTJDMTkuNzM0MyA0LjcwNzYgMTkuODI1MSA0LjgyNTQ3IDE5LjkzMTEgNC45ODAxNEMyMC4xNDMzIDUuMjg5NTggMjAuNDE2NiA1Ljc0NTk3IDIwLjY4NjcgNi4zNjAzQzIxLjIyNzkgNy41OTE1MiAyMS43NTAxIDkuNDQ0MTcgMjEuNzUwMSAxMS45OTk2QzIxLjc1MDEgMTQuNTU1IDIxLjIyNzkgMTYuNDA3NyAyMC42ODY3IDE3LjYzODlDMjAuNDE2NiAxOC4yNTMyIDIwLjE0MzMgMTguNzA5NiAxOS45MzExIDE5LjAxOTFDMTkuODI1MSAxOS4xNzM3IDE5LjczNDMgMTkuMjkxNiAxOS42NjcgMTkuMzc0MUMxOS42MzMzIDE5LjQxNTMgMTkuNjA1NSAxOS40NDc3IDE5LjU4NDUgMTkuNDcxNEMxOS41NzQxIDE5LjQ4MzMgMTkuNTY1MyAxOS40OTMgMTkuNTU4MyAxOS41MDA2TDE5LjU0OTMgMTkuNTEwM0wxOS41NDU5IDE5LjUxNEwxOS41NDQ0IDE5LjUxNTVDMTkuNTQ0NCAxOS41MTU1IDE5LjU0MzIgMTkuNTE2OCAxOS4wMjQ5IDE5LjAyMzNMMTkuNTQzMiAxOS41MTY4QzE5LjI1NzUgMTkuODE2OCAxOC43ODI4IDE5LjgyODQgMTguNDgyOCAxOS41NDI3QzE4LjE4NDEgMTkuMjU4MiAxOC4xNzE0IDE4Ljc4NjMgMTguNDUzNCAxOC40ODYxTDE4LjQ1NTcgMTguNDgzN0wxOC40NTUgMTguNDg0NUwxOC40NTM0IDE4LjQ4NjFMMTguNDYwNSAxOC40NzgyQzE4LjQ2ODggMTguNDY4OCAxOC40ODQgMTguNDUxMyAxOC41MDUgMTguNDI1NUMxOC41NDcxIDE4LjM3NCAxOC42MTI2IDE4LjI4OTUgMTguNjk0IDE4LjE3MDhDMTguODU2OCAxNy45MzMzIDE5LjA4MzUgMTcuNTU4NSAxOS4zMTM1IDE3LjAzNTNDMTkuNzcyMyAxNS45OTE1IDIwLjI1MDEgMTQuMzQ0MiAyMC4yNTAxIDExLjk5OTZDMjAuMjUwMSA5LjY1NTAzIDE5Ljc3MjMgOC4wMDc2OCAxOS4zMTM1IDYuOTYzOUMxOS4wODM1IDYuNDQwNzIgMTguODU2OCA2LjA2NTg3IDE4LjY5NCA1LjgyODQzQzE4LjYxMjYgNS43MDk2NiAxOC41NDcxIDUuNjI1MTkgMTguNTA1IDUuNTczNjlDMTguNDg0IDUuNTQ3OTMgMTguNDY4OCA1LjUzMDQzIDE4LjQ2MDUgNS41MjEwMUwxOC40NTM3IDUuNTEzMzhMMTguNDU1IDUuNTE0NzRMMTguNDU1OSA1LjUxNTdNMTguNDgyOCA0LjQ1NjQ5QzE4LjE4NDEgNC43NDA5NyAxOC4xNzE3IDUuMjEzMjQgMTguNDUzNyA1LjUxMzM4TDE4LjQ4MjggNC40NTY0OVpNMTYuNjUwOCA3LjMzNTkxQzE3LjAxNzMgNy4xNDI5OSAxNy40NzA4IDcuMjgzNzQgMTcuNjYzOCA3LjY1MDI5TDE3LjAwMDEgNy45OTk2QzE3LjY2MzggNy42NTAyOSAxNy42NjM4IDcuNjUwMjkgMTcuNjYzOCA3LjY1MDI5TDE3LjY2NDYgNy42NTE4MkwxNy42NjU3IDcuNjU0MDZMMTcuNjY5MSA3LjY2MDYyTDE3LjY4MDEgNy42ODE5N0MxNy42ODkxIDcuNjk5ODEgMTcuNzAxNiA3LjcyNDggMTcuNzE3MSA3Ljc1NjUyQzE3Ljc0OCA3LjgxOTk1IDE3Ljc5MDkgNy45MTA0NiAxNy44NDE3IDguMDI0NjhDMTcuOTQzMSA4LjI1MjggMTguMDc2OCA4LjU3NzQgMTguMjEwNCA4Ljk3MTMyQzE4LjQ3NTIgOS43NTI1OSAxOC43NTAxIDEwLjgzODQgMTguNzUwMSAxMS45OTk2QzE4Ljc1MDEgMTMuMTYwOCAxOC40NzUyIDE0LjI0NjYgMTguMjEwNCAxNS4wMjc5QzE4LjA3NjggMTUuNDIxOCAxNy45NDMxIDE1Ljc0NjQgMTcuODQxNyAxNS45NzQ1QzE3Ljc5MDkgMTYuMDg4NyAxNy43NDggMTYuMTc5MiAxNy43MTcxIDE2LjI0MjdDMTcuNzAxNiAxNi4yNzQ0IDE3LjY4OTEgMTYuMjk5NCAxNy42ODAxIDE2LjMxNzJMMTcuNjY5MSAxNi4zMzg2TDE3LjY2NTcgMTYuMzQ1MUwxNy42NjQ2IDE2LjM0NzRMMTcuNjYzOSAxNi4zNDg2QzE3LjY2MzkgMTYuMzQ4NiAxNy42NjM4IDE2LjM0ODkgMTcuMDAwMSAxNS45OTk2TDE3LjY2MzkgMTYuMzQ4NkMxNy40NzEgMTYuNzE1MSAxNy4wMTczIDE2Ljg1NjIgMTYuNjUwOCAxNi42NjMzQzE2LjI4NDUgMTYuNDcwNSAxNi4xNDM3IDE2LjAxNzYgMTYuMzM1OSAxNS42NTEzTTE2LjMzNjQgMTUuNjUwM0wxNi4zNDI1IDE1LjYzODNDMTYuMzQ4MSAxNS42MjcyIDE2LjM1NzEgMTUuNjA5NCAxNi4zNjkgMTUuNTg1QzE2LjM5MjcgMTUuNTM2NCAxNi40MjggMTUuNDYyIDE2LjQ3MSAxNS4zNjUzQzE2LjU1NzEgMTUuMTcxNSAxNi42NzMzIDE0Ljg4OTkgMTYuNzg5OCAxNC41NDYzQzE3LjAyNDkgMTMuODUyNiAxNy4yNTAxIDEyLjkzODQgMTcuMjUwMSAxMS45OTk2QzE3LjI1MDEgMTEuMDYwOCAxNy4wMjQ5IDEwLjE0NjYgMTYuNzg5OCA5LjQ1Mjg4QzE2LjY3MzMgOS4xMDkzIDE2LjU1NzEgOC44Mjc2NSAxNi40NzEgOC42MzM4OUMxNi40MjggOC41MzcxOCAxNi4zOTI3IDguNDYyODQgMTYuMzY5IDguNDE0MTZDMTYuMzU3MSA4LjM4OTgzIDE2LjM0ODEgOC4zNzE5NSAxNi4zNDI1IDguMzYwOTNMMTYuMzM2NyA4LjM0OTZMMTYuMzM2MiA4LjM0ODYzQzE2LjE0MzUgNy45ODIxNCAxNi4yODQzIDcuNTI4NzggMTYuNjUwOCA3LjMzNTkxIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
 */
export const BluetoothWave:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M11.9098 2.77366L13.7426 4.0752C14.2829 4.45881 14.7548 4.79385 15.0843 5.10897C15.435 5.44445 15.7501 5.87349 15.7501 6.45834C15.7501 7.04319 15.435 7.47224 15.0843 7.80771C14.7548 8.12283 14.2829 8.45787 13.7426 8.84148L9.29541 11.9996L13.7426 15.1577C14.2829 15.5413 14.7548 15.8764 15.0843 16.1915C15.435 16.527 15.7501 16.956 15.7501 17.5409C15.7501 18.1257 15.435 18.5548 15.0843 18.8902C14.7548 19.2054 14.2829 19.5404 13.7426 19.924L11.9099 21.2255C11.1804 21.7436 10.5645 22.181 10.0536 22.4416C9.53336 22.707 8.89829 22.9067 8.26311 22.5817C7.62612 22.2558 7.41919 21.6227 7.33374 21.0458C7.24998 20.4803 7.25002 19.7272 7.25006 18.8365L7.25006 13.4401L3.43016 16.114C3.09082 16.3516 2.62318 16.269 2.38564 15.9297C2.1481 15.5904 2.23063 15.1227 2.56997 14.8852L6.69222 11.9996L2.56997 9.11402C2.23063 8.87649 2.1481 8.40884 2.38564 8.0695C2.62318 7.73017 3.09082 7.64764 3.43016 7.88517L7.25006 10.5591V5.22417C7.25006 5.20359 7.25006 5.18309 7.25006 5.16266C7.25002 4.27198 7.24998 3.51888 7.33374 2.9534C7.41919 2.3765 7.62612 1.74342 8.26311 1.41752C8.89829 1.09254 9.53336 1.29223 10.0536 1.55758C10.5644 1.81817 11.1804 2.25559 11.9098 2.77366ZM8.75006 13.4521V18.775C8.75006 19.7439 8.75207 20.3839 8.81755 20.826C8.84924 21.04 8.88915 21.1526 8.9187 21.2087C8.93168 21.2334 8.94094 21.2429 8.94094 21.2429C8.94094 21.2429 8.9414 21.2438 8.94632 21.2463C8.95081 21.2486 8.95303 21.2489 8.95303 21.2489C8.95504 21.2492 8.96803 21.251 8.99661 21.2471C9.06133 21.2381 9.17796 21.2044 9.372 21.1054C9.77271 20.901 10.2984 20.5301 11.0911 19.9672L12.8291 18.733C13.4278 18.3078 13.8072 18.036 14.0475 17.8062C14.1612 17.6975 14.212 17.6269 14.2343 17.5863C14.2503 17.5573 14.2501 17.5474 14.2501 17.5418V17.5399C14.2501 17.5343 14.2503 17.5244 14.2343 17.4955C14.212 17.4548 14.1612 17.3842 14.0475 17.2755C13.8072 17.0457 13.4278 16.7739 12.8291 16.3487L8.75006 13.4521ZM8.75006 10.5471V5.22417C8.75006 4.2553 8.75207 3.61528 8.81755 3.17318C8.84924 2.95922 8.88915 2.84656 8.9187 2.79047C8.93168 2.76583 8.94094 2.75632 8.94094 2.75632C8.94094 2.75632 8.9414 2.75541 8.94632 2.75289C8.95081 2.75059 8.95303 2.7503 8.95303 2.7503C8.95503 2.74999 8.96803 2.74818 8.99661 2.75212C9.06133 2.76105 9.17796 2.79481 9.372 2.89379C9.77271 3.09819 10.2984 3.46908 11.0911 4.03202L12.8291 5.2662C13.4278 5.69138 13.8072 5.96315 14.0475 6.19298C14.1612 6.30172 14.212 6.37233 14.2343 6.41294C14.2503 6.44191 14.2501 6.45181 14.2501 6.45735V6.45933C14.2501 6.46487 14.2503 6.47477 14.2343 6.50374C14.212 6.54435 14.1612 6.61496 14.0475 6.7237C13.8072 6.95353 13.4278 7.2253 12.8291 7.65048L8.75006 10.5471ZM18.4828 4.45649C18.7828 4.17083 19.2575 4.18241 19.5432 4.48236L19.0249 4.97592C19.5432 4.48237 19.5432 4.48236 19.5432 4.48236L19.5444 4.48369L19.5459 4.48523L19.5493 4.48889L19.5583 4.49863C19.5653 4.50618 19.5741 4.51589 19.5845 4.52775C19.6055 4.55148 19.6333 4.58388 19.667 4.62512C19.7343 4.7076 19.8251 4.82547 19.9311 4.98014C20.1433 5.28958 20.4166 5.74597 20.6867 6.3603C21.2279 7.59152 21.7501 9.44417 21.7501 11.9996C21.7501 14.555 21.2279 16.4077 20.6867 17.6389C20.4166 18.2532 20.1433 18.7096 19.9311 19.0191C19.8251 19.1737 19.7343 19.2916 19.667 19.3741C19.6333 19.4153 19.6055 19.4477 19.5845 19.4714C19.5741 19.4833 19.5653 19.493 19.5583 19.5006L19.5493 19.5103L19.5459 19.514L19.5444 19.5155C19.5444 19.5155 19.5432 19.5168 19.0249 19.0233L19.5432 19.5168C19.2575 19.8168 18.7828 19.8284 18.4828 19.5427C18.1841 19.2582 18.1714 18.7863 18.4534 18.4861L18.4557 18.4837L18.455 18.4845L18.4534 18.4861L18.4605 18.4782C18.4688 18.4688 18.484 18.4513 18.505 18.4255C18.5471 18.374 18.6126 18.2895 18.694 18.1708C18.8568 17.9333 19.0835 17.5585 19.3135 17.0353C19.7723 15.9915 20.2501 14.3442 20.2501 11.9996C20.2501 9.65503 19.7723 8.00768 19.3135 6.9639C19.0835 6.44072 18.8568 6.06587 18.694 5.82843C18.6126 5.70966 18.5471 5.62519 18.505 5.57369C18.484 5.54793 18.4688 5.53043 18.4605 5.52101L18.4537 5.51338L18.455 5.51474L18.4559 5.5157M18.4828 4.45649C18.1841 4.74097 18.1717 5.21324 18.4537 5.51338L18.4828 4.45649ZM16.6508 7.33591C17.0173 7.14299 17.4708 7.28374 17.6638 7.65029L17.0001 7.9996C17.6638 7.65029 17.6638 7.65029 17.6638 7.65029L17.6646 7.65182L17.6657 7.65406L17.6691 7.66062L17.6801 7.68197C17.6891 7.69981 17.7016 7.7248 17.7171 7.75652C17.748 7.81995 17.7909 7.91046 17.8417 8.02468C17.9431 8.2528 18.0768 8.5774 18.2104 8.97132C18.4752 9.75259 18.7501 10.8384 18.7501 11.9996C18.7501 13.1608 18.4752 14.2466 18.2104 15.0279C18.0768 15.4218 17.9431 15.7464 17.8417 15.9745C17.7909 16.0887 17.748 16.1792 17.7171 16.2427C17.7016 16.2744 17.6891 16.2994 17.6801 16.3172L17.6691 16.3386L17.6657 16.3451L17.6646 16.3474L17.6639 16.3486C17.6639 16.3486 17.6638 16.3489 17.0001 15.9996L17.6639 16.3486C17.471 16.7151 17.0173 16.8562 16.6508 16.6633C16.2845 16.4705 16.1437 16.0176 16.3359 15.6513M16.3364 15.6503L16.3425 15.6383C16.3481 15.6272 16.3571 15.6094 16.369 15.585C16.3927 15.5364 16.428 15.462 16.471 15.3653C16.5571 15.1715 16.6733 14.8899 16.7898 14.5463C17.0249 13.8526 17.2501 12.9384 17.2501 11.9996C17.2501 11.0608 17.0249 10.1466 16.7898 9.45288C16.6733 9.1093 16.5571 8.82765 16.471 8.63389C16.428 8.53718 16.3927 8.46284 16.369 8.41416C16.3571 8.38983 16.3481 8.37195 16.3425 8.36093L16.3367 8.3496L16.3362 8.34863C16.1435 7.98214 16.2843 7.52878 16.6508 7.33591" fill="currentColor"/>
    </IconBase>
))

BluetoothWave.displayName = "BluetoothWave"
