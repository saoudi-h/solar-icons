/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTkuMzc0MiAyLjgyOTEyQzE4LjM4MTYgMy4wMDU2OSAxNy4wNCAzLjQ1MDgxIDE1LjE0MzIgNC4wODMwNUw1LjgxMTk4IDcuMTkzMzRDNC43NTEyNiA3LjU0NjkgNC4wMjQ5MSA3Ljc5MDUzIDMuNTE3OTMgOC4wMzM5OEMzLjAxNDYxIDguMjc1NjggMi44ODA2NyA4LjQ0ODI3IDIuODI5MSA4LjU3Mjg1QzIuNzg1NjMgOC42Nzc4OSAyLjc1OTM0IDguNzg5MjQgMi43NTEyNSA4LjkwMjY0QzIuNzQxNjYgOS4wMzcxMiAyLjc4NDI2IDkuMjUxMzggMy4xMjYzNSA5LjY5MjY0QzMuNDcwOTIgMTAuMTM3MSA0LjAxMTYzIDEwLjY3OTggNC44MDIyNCAxMS40NzA0TDUuMDg0ODcgMTEuNzUzQzUuMDk4MzkgMTEuNzY2NSA1LjExMTc1IDExLjc3OTkgNS4xMjQ5NiAxMS43OTMxQzUuMzQwNTggMTIuMDA4NSA1LjUxNjE2IDEyLjE4MzggNS42NTMzMiAxMi4zODU4QzUuOTIxODggMTIuNzgxMyA2LjA3NDMzIDEzLjI0NCA2LjA5MzM4IDEzLjcyMTdDNi4xMDMxMSAxMy45NjU2IDYuMDY2MTQgMTQuMjExIDYuMDIwNzMgMTQuNTEyNEM2LjAxNzk1IDE0LjUzMDggNi4wMTUxNCAxNC41NDk1IDYuMDEyMyAxNC41Njg0QzUuOTEzMDggMTUuMjI5NSA1Ljg0Mzk3IDE1LjY5MjEgNS44MTE5MyAxNi4wNTI5QzUuNzgwMDcgMTYuNDExNiA1Ljc5MTY0IDE2LjYwODYgNS44MjMzIDE2Ljc0NjRDNS44NDU1NyAxNi44NDMzIDUuODc0OTEgMTYuOTM3NSA1LjkxMDc2IDE3LjAyODNMMjAuMTg5NCAyLjc0OTYzQzE5Ljk3NTMgMi43NDYwOCAxOS43MDkyIDIuNzY5NTQgMTkuMzc0MiAyLjgyOTEyWk0yMi4wNDI1IDEuOTU3MTJDMjIuODA3OSAyLjcyMjUgMjIuODQ2OSAzLjc2NjQ0IDIyLjY0NzQgNC44ODgwN0MyMi40NDkyIDYuMDAyMDUgMjEuOTY3MSA3LjQ0ODI3IDIxLjM2MSA5LjI2NjM4TDE4LjE5MjggMTguNzcwNUMxNy44Njg5IDE5Ljc0MjMgMTcuNjAzNiAyMC41MzgzIDE3LjMyMyAyMS4xMjcyQzE3LjAzNjMgMjEuNzI4OSAxNi42Njc0IDIyLjI2MjkgMTYuMDUyNCAyMi41MzM1QzE1Ljc2NjIgMjIuNjU5NSAxNS40NTkzIDIyLjczMTkgMTUuMTQ2OSAyMi43NDczQzE0LjQ3NTggMjIuNzgwMiAxMy45MDcxIDIyLjQ2NzYgMTMuMzgxNSAyMi4wNTc2QzEyLjg2NzIgMjEuNjU2NCAxMi4yNzM4IDIxLjA2MzEgMTEuNTQ5NSAyMC4zMzg3TDExLjI2MjEgMjAuMDUxM0MxMC45NzggMTkuNzY3MiAxMC45MDU0IDE5LjY5OTQgMTAuODMzNiAxOS42NTEzQzEwLjY3NzIgMTkuNTQ2NSAxMC40OTU3IDE5LjQ4NTMgMTAuMzA3NyAxOS40NzM5QzEwLjIyMTQgMTkuNDY4NyAxMC4xMjI3IDE5LjQ3ODggOS43MjQ1NCAxOS41MzI4TDkuNjI5MTEgMTkuNTQ1N0M4Ljk5NjI3IDE5LjYzMTYgOC40ODc2NSAxOS43MDA3IDguMDc1ODIgMTkuNzMxNEM3LjY1Njc4IDE5Ljc2MjcgNy4yNzcwNSAxOS43NjAyIDYuOTE0MzkgMTkuNjcxNEM1LjY0MjQ0IDE5LjM2MDMgNC42NTQ2NCAxOC4zNTg1IDQuMzYxMzkgMTcuMDgyM0M0LjI3Nzc4IDE2LjcxODQgNC4yODA2NCAxNi4zMzg3IDQuMzE3ODEgMTUuOTIwMkM0LjM1NDM0IDE1LjUwODggNC40MzA1MiAxNS4wMDEzIDQuNTI1MzIgMTQuMzY5OEw0LjUyODkyIDE0LjM0NThDNC41ODY3MiAxMy45NjA3IDQuNTk3OSAxMy44NjUgNC41OTQ1NyAxMy43ODE1QzQuNTg2NjkgMTMuNTgzOCA0LjUyMzU5IDEzLjM5MjIgNC40MTI0MiAxMy4yMjg1QzQuMzY1NDQgMTMuMTU5MyA0LjI5OTU4IDEzLjA4OTEgNC4wMjQyMyAxMi44MTM3TDMuNzA0MzQgMTIuNDkzOEMyLjk2MDE3IDExLjc0OTcgMi4zNTA2MyAxMS4xNDAyIDEuOTQwODcgMTAuNjExN0MxLjUyMTggMTAuMDcxMSAxLjIwNTg3IDkuNDg1NDUgMS4yNTUwNSA4Ljc5NTkxQzEuMjc0NTkgOC41MjE5NiAxLjMzODEgOC4yNTI5NCAxLjQ0MzE0IDcuOTk5MTdDMS43MDc1MyA3LjM2MDQ0IDIuMjUyMDMgNi45Nzc4OSAyLjg2ODYxIDYuNjgxODFDMy40NzE1IDYuMzkyMjkgNC4yODkyNiA2LjExOTczIDUuMjg3NjUgNS43ODY5OEwxNC43MzMxIDIuNjM4NjFDMTYuNTUxMyAyLjAzMjU2IDE3Ljk5NzUgMS41NTA0NyAxOS4xMTE1IDEuMzUyMzFDMjAuMjMzMiAxLjE1Mjc4IDIxLjI3NzEgMS4xOTE3NiAyMi4wNDI1IDEuOTU3MTJaTTIxLjI1MDEgMy44MTAzTDYuOTUzMDggMTguMTA3M0M3LjA1NDcxIDE4LjE1MTUgNy4xNjA5IDE4LjE4NzUgNy4yNzA4NCAxOC4yMTQ0QzcuNDA4MTUgMTguMjQ4IDcuNjA1MDIgMTguMjYyNCA3Ljk2NDIgMTguMjM1NkM4LjMyNTM4IDE4LjIwODYgOC43ODg5NSAxOC4xNDYgOS40NTEzOCAxOC4wNTYxTDkuNTIyODIgMTguMDQ2NEM5LjU0MjMyIDE4LjA0MzggOS41NjE1OSAxOC4wNDExIDkuNTgwNjUgMTguMDM4NUM5Ljg5MjMxIDE3Ljk5NjEgMTAuMTQ2MiAxNy45NjE1IDEwLjM5ODEgMTcuOTc2N0MxMC44NTIxIDE4LjAwNDEgMTEuMjkwNiAxOC4xNTE5IDExLjY2ODQgMTguNDA1QzExLjg3ODEgMTguNTQ1NSAxMi4wNTkxIDE4LjcyNjcgMTIuMjgxNCAxOC45NDkyQzEyLjI5NSAxOC45NjI5IDEyLjMwODggMTguOTc2NyAxMi4zMjI3IDE4Ljk5MDZMMTIuNTc0IDE5LjI0MThDMTMuMzQzNCAyMC4wMTEzIDEzLjg3MTYgMjAuNTM3NSAxNC4zMDQxIDIwLjg3NDlDMTQuNzM0IDIxLjIxMDIgMTQuOTQzNCAyMS4yNTU1IDE1LjA3MzQgMjEuMjQ5MUMxNS4yMDI3IDIxLjI0MjcgMTUuMzI5NyAyMS4yMTI3IDE1LjQ0ODIgMjEuMTYwNkMxNS41NjczIDIxLjEwODIgMTUuNzM0MyAyMC45NzQxIDE1Ljk2ODkgMjAuNDgxOUMxNi4yMDQ4IDE5Ljk4NjggMTYuNDQxOSAxOS4yNzk5IDE2Ljc4NiAxOC4yNDc2TDE5LjkxNjYgOC44NTYxOUMyMC41NDg5IDYuOTU5NDkgMjAuOTk0IDUuNjE3ODkgMjEuMTcwNiA0LjYyNTM0QzIxLjIzMDEgNC4yOTA0NSAyMS4yNTM2IDQuMDI0NDEgMjEuMjUwMSAzLjgxMDNaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
 */
export const Plain2:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        <path fillRule="evenodd" clipRule="evenodd" d="M19.3742 2.82912C18.3816 3.00569 17.04 3.45081 15.1432 4.08305L5.81198 7.19334C4.75126 7.5469 4.02491 7.79053 3.51793 8.03398C3.01461 8.27568 2.88067 8.44827 2.8291 8.57285C2.78563 8.67789 2.75934 8.78924 2.75125 8.90264C2.74166 9.03712 2.78426 9.25138 3.12635 9.69264C3.47092 10.1371 4.01163 10.6798 4.80224 11.4704L5.08487 11.753C5.09839 11.7665 5.11175 11.7799 5.12496 11.7931C5.34058 12.0085 5.51616 12.1838 5.65332 12.3858C5.92188 12.7813 6.07433 13.244 6.09338 13.7217C6.10311 13.9656 6.06614 14.211 6.02073 14.5124C6.01795 14.5308 6.01514 14.5495 6.0123 14.5684C5.91308 15.2295 5.84397 15.6921 5.81193 16.0529C5.78007 16.4116 5.79164 16.6086 5.8233 16.7464C5.84557 16.8433 5.87491 16.9375 5.91076 17.0283L20.1894 2.74963C19.9753 2.74608 19.7092 2.76954 19.3742 2.82912ZM22.0425 1.95712C22.8079 2.7225 22.8469 3.76644 22.6474 4.88807C22.4492 6.00205 21.9671 7.44827 21.361 9.26638L18.1928 18.7705C17.8689 19.7423 17.6036 20.5383 17.323 21.1272C17.0363 21.7289 16.6674 22.2629 16.0524 22.5335C15.7662 22.6595 15.4593 22.7319 15.1469 22.7473C14.4758 22.7802 13.9071 22.4676 13.3815 22.0576C12.8672 21.6564 12.2738 21.0631 11.5495 20.3387L11.2621 20.0513C10.978 19.7672 10.9054 19.6994 10.8336 19.6513C10.6772 19.5465 10.4957 19.4853 10.3077 19.4739C10.2214 19.4687 10.1227 19.4788 9.72454 19.5328L9.62911 19.5457C8.99627 19.6316 8.48765 19.7007 8.07582 19.7314C7.65678 19.7627 7.27705 19.7602 6.91439 19.6714C5.64244 19.3603 4.65464 18.3585 4.36139 17.0823C4.27778 16.7184 4.28064 16.3387 4.31781 15.9202C4.35434 15.5088 4.43052 15.0013 4.52532 14.3698L4.52892 14.3458C4.58672 13.9607 4.5979 13.865 4.59457 13.7815C4.58669 13.5838 4.52359 13.3922 4.41242 13.2285C4.36544 13.1593 4.29958 13.0891 4.02423 12.8137L3.70434 12.4938C2.96017 11.7497 2.35063 11.1402 1.94087 10.6117C1.5218 10.0711 1.20587 9.48545 1.25505 8.79591C1.27459 8.52196 1.3381 8.25294 1.44314 7.99917C1.70753 7.36044 2.25203 6.97789 2.86861 6.68181C3.4715 6.39229 4.28926 6.11973 5.28765 5.78698L14.7331 2.63861C16.5513 2.03256 17.9975 1.55047 19.1115 1.35231C20.2332 1.15278 21.2771 1.19176 22.0425 1.95712ZM21.2501 3.8103L6.95308 18.1073C7.05471 18.1515 7.1609 18.1875 7.27084 18.2144C7.40815 18.248 7.60502 18.2624 7.9642 18.2356C8.32538 18.2086 8.78895 18.146 9.45138 18.0561L9.52282 18.0464C9.54232 18.0438 9.56159 18.0411 9.58065 18.0385C9.89231 17.9961 10.1462 17.9615 10.3981 17.9767C10.8521 18.0041 11.2906 18.1519 11.6684 18.405C11.8781 18.5455 12.0591 18.7267 12.2814 18.9492C12.295 18.9629 12.3088 18.9767 12.3227 18.9906L12.574 19.2418C13.3434 20.0113 13.8716 20.5375 14.3041 20.8749C14.734 21.2102 14.9434 21.2555 15.0734 21.2491C15.2027 21.2427 15.3297 21.2127 15.4482 21.1606C15.5673 21.1082 15.7343 20.9741 15.9689 20.4819C16.2048 19.9868 16.4419 19.2799 16.786 18.2476L19.9166 8.85619C20.5489 6.95949 20.994 5.61789 21.1706 4.62534C21.2301 4.29045 21.2536 4.02441 21.2501 3.8103Z" fill="currentColor"/>
    </IconBase>
))

Plain2.displayName = "Plain2"
