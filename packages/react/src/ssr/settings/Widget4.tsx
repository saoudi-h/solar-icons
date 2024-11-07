/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import SSRBase from "../../lib/SSRBase"
import weights from "../../defs/settings/Widget4"

/**
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDYuMjEwNTNDMiA0LjIyNTY3IDIgMy4yMzMyMyAyLjY1OTAxIDIuNjE2NjJDMy4zMTgwMiAyIDQuMzc4NjggMiA2LjUgMkM4LjYyMTMyIDIgOS42ODE5OCAyIDEwLjM0MSAyLjYxNjYyQzExIDMuMjMzMjMgMTEgNC4yMjU2NyAxMSA2LjIxMDUzVjE3Ljc4OTVDMTEgMTkuNzc0MyAxMSAyMC43NjY4IDEwLjM0MSAyMS4zODM0QzkuNjgxOTggMjIgOC42MjEzMiAyMiA2LjUgMjJDNC4zNzg2OCAyMiAzLjMxODAyIDIyIDIuNjU5MDEgMjEuMzgzNEMyIDIwLjc2NjggMiAxOS43NzQzIDIgMTcuNzg5NVY2LjIxMDUzWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTMgMTUuNEMxMyAxMy4zMjU4IDEzIDEyLjI4ODcgMTMuNjU5IDExLjY0NDRDMTQuMzE4IDExIDE1LjM3ODcgMTEgMTcuNSAxMUMxOS42MjEzIDExIDIwLjY4MiAxMSAyMS4zNDEgMTEuNjQ0NEMyMiAxMi4yODg3IDIyIDEzLjMyNTggMjIgMTUuNFYxNy42QzIyIDE5LjY3NDIgMjIgMjAuNzExMyAyMS4zNDEgMjEuMzU1NkMyMC42ODIgMjIgMTkuNjIxMyAyMiAxNy41IDIyQzE1LjM3ODcgMjIgMTQuMzE4IDIyIDEzLjY1OSAyMS4zNTU2QzEzIDIwLjcxMTMgMTMgMTkuNjc0MiAxMyAxNy42VjE1LjRaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMyA1LjVDMTMgNC40MTI4IDEzIDMuODY5MiAxMy4xNzEzIDMuNDQwNDFDMTMuMzk5NiAyLjg2ODY3IDEzLjgzNzYgMi40MTQ0MyAxNC4zODkgMi4xNzc2MUMxNC44MDI0IDIgMTUuMzI2NiAyIDE2LjM3NSAySDE4LjYyNUMxOS42NzM0IDIgMjAuMTk3NiAyIDIwLjYxMSAyLjE3NzYxQzIxLjE2MjQgMi40MTQ0MyAyMS42MDA0IDIuODY4NjcgMjEuODI4NyAzLjQ0MDQxQzIyIDMuODY5MiAyMiA0LjQxMjggMjIgNS41QzIyIDYuNTg3MiAyMiA3LjEzMDggMjEuODI4NyA3LjU1OTU5QzIxLjYwMDQgOC4xMzEzMyAyMS4xNjI0IDguNTg1NTcgMjAuNjExIDguODIyMzlDMjAuMTk3NiA5IDE5LjY3MzQgOSAxOC42MjUgOUgxNi4zNzVDMTUuMzI2NiA5IDE0LjgwMjQgOSAxNC4zODkgOC44MjIzOUMxMy44Mzc2IDguNTg1NTcgMTMuMzk5NiA4LjEzMTMzIDEzLjE3MTMgNy41NTk1OUMxMyA3LjEzMDggMTMgNi41ODcyIDEzIDUuNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==) Bold
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIgNi4yMTA1M0MyIDQuMjI1NjcgMiAzLjIzMzIzIDIuNjU5MDEgMi42MTY2MkMzLjMxODAyIDIgNC4zNzg2OCAyIDYuNSAyQzguNjIxMzIgMiA5LjY4MTk4IDIgMTAuMzQxIDIuNjE2NjJDMTEgMy4yMzMyMyAxMSA0LjIyNTY3IDExIDYuMjEwNTNWMTcuNzg5NUMxMSAxOS43NzQzIDExIDIwLjc2NjggMTAuMzQxIDIxLjM4MzRDOS42ODE5OCAyMiA4LjYyMTMyIDIyIDYuNSAyMkM0LjM3ODY4IDIyIDMuMzE4MDIgMjIgMi42NTkwMSAyMS4zODM0QzIgMjAuNzY2OCAyIDE5Ljc3NDMgMiAxNy43ODk1VjYuMjEwNTNaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMyAxNS40QzEzIDEzLjMyNTggMTMgMTIuMjg4NyAxMy42NTkgMTEuNjQ0NEMxNC4zMTggMTEgMTUuMzc4NyAxMSAxNy41IDExQzE5LjYyMTMgMTEgMjAuNjgyIDExIDIxLjM0MSAxMS42NDQ0QzIyIDEyLjI4ODcgMjIgMTMuMzI1OCAyMiAxNS40VjE3LjZDMjIgMTkuNjc0MiAyMiAyMC43MTEzIDIxLjM0MSAyMS4zNTU2QzIwLjY4MiAyMiAxOS42MjEzIDIyIDE3LjUgMjJDMTUuMzc4NyAyMiAxNC4zMTggMjIgMTMuNjU5IDIxLjM1NTZDMTMgMjAuNzExMyAxMyAxOS42NzQyIDEzIDE3LjZWMTUuNFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEzIDUuNUMxMyA0LjQxMjggMTMgMy44NjkyIDEzLjE3MTMgMy40NDA0MUMxMy4zOTk2IDIuODY4NjcgMTMuODM3NiAyLjQxNDQzIDE0LjM4OSAyLjE3NzYxQzE0LjgwMjQgMiAxNS4zMjY2IDIgMTYuMzc1IDJIMTguNjI1QzE5LjY3MzQgMiAyMC4xOTc2IDIgMjAuNjExIDIuMTc3NjFDMjEuMTYyNCAyLjQxNDQzIDIxLjYwMDQgMi44Njg2NyAyMS44Mjg3IDMuNDQwNDFDMjIgMy44NjkyIDIyIDQuNDEyOCAyMiA1LjVDMjIgNi41ODcyIDIyIDcuMTMwOCAyMS44Mjg3IDcuNTU5NTlDMjEuNjAwNCA4LjEzMTMzIDIxLjE2MjQgOC41ODU1NyAyMC42MTEgOC44MjIzOUMyMC4xOTc2IDkgMTkuNjczNCA5IDE4LjYyNSA5SDE2LjM3NUMxNS4zMjY2IDkgMTQuODAyNCA5IDE0LjM4OSA4LjgyMjM5QzEzLjgzNzYgOC41ODU1NyAxMy4zOTk2IDguMTMxMzMgMTMuMTcxMyA3LjU1OTU5QzEzIDcuMTMwOCAxMyA2LjU4NzIgMTMgNS41WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K) BoldDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yLjUgMTNWMTcuNUMyLjUgMTkuMzg1NiAyLjUgMjAuMzI4NCAzLjA4NTc5IDIwLjkxNDJDMy42NzE1NyAyMS41IDQuNjE0MzggMjEuNSA2LjUgMjEuNUM4LjM4NTYyIDIxLjUgOS4zMjg0MyAyMS41IDkuOTE0MjEgMjAuOTE0MkMxMC41IDIwLjMyODQgMTAuNSAxOS4zODU2IDEwLjUgMTcuNVY2LjVDMTAuNSA0LjYxNDM4IDEwLjUgMy42NzE1NyA5LjkxNDIxIDMuMDg1NzlDOS4zMjg0MyAyLjUgOC4zODU2MiAyLjUgNi41IDIuNUM0LjYxNDM4IDIuNSAzLjY3MTU3IDIuNSAzLjA4NTc5IDMuMDg1NzlDMi41IDMuNjcxNTcgMi41IDQuNjE0MzggMi41IDYuNVY5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIxLjQ5OTUgMThDMjEuNDk1IDE5LjU1NzIgMjEuNDQ1OCAyMC4zODI3IDIwLjkxNDIgMjAuOTE0MkMyMC4zMjg0IDIxLjUgMTkuMzg1NiAyMS41IDE3LjUgMjEuNUMxNS42MTQ0IDIxLjUgMTQuNjcxNiAyMS41IDE0LjA4NTggMjAuOTE0MkMxMy41IDIwLjMyODQgMTMuNSAxOS4zODU2IDEzLjUgMTcuNVYxNS41QzEzLjUgMTMuNjE0NCAxMy41IDEyLjY3MTYgMTQuMDg1OCAxMi4wODU4QzE0LjY3MTYgMTEuNSAxNS42MTQ0IDExLjUgMTcuNSAxMS41QzE5LjM4NTYgMTEuNSAyMC4zMjg0IDExLjUgMjAuOTE0MiAxMi4wODU4QzIxLjMxODMgMTIuNDg5OSAyMS40NDM2IDEzLjA2MzggMjEuNDgyNSAxNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMy41IDUuNUMxMy41IDQuNTY4MTIgMTMuNSA0LjEwMjE4IDEzLjY1MjIgMy43MzQ2M0MxMy44NTUyIDMuMjQ0NTggMTQuMjQ0NiAyLjg1NTIzIDE0LjczNDYgMi42NTIyNEMxNS4xMDIyIDIuNSAxNS41NjgxIDIuNSAxNi41IDIuNUgxOC41QzE5LjQzMTkgMi41IDE5Ljg5NzggMi41IDIwLjI2NTQgMi42NTIyNEMyMC43NTU0IDIuODU1MjMgMjEuMTQ0OCAzLjI0NDU4IDIxLjM0NzggMy43MzQ2M0MyMS41IDQuMTAyMTggMjEuNSA0LjU2ODEyIDIxLjUgNS41QzIxLjUgNi40MzE4OCAyMS41IDYuODk3ODIgMjEuMzQ3OCA3LjI2NTM3QzIxLjE0NDggNy43NTU0MiAyMC43NTU0IDguMTQ0NzcgMjAuMjY1NCA4LjM0Nzc2QzE5Ljg5NzggOC41IDE5LjQzMTkgOC41IDE4LjUgOC41SDE2LjVDMTUuNTY4MSA4LjUgMTUuMTAyMiA4LjUgMTQuNzM0NiA4LjM0Nzc2QzE0LjI0NDYgOC4xNDQ3NyAxMy44NTUyIDcuNzU1NDIgMTMuNjUyMiA3LjI2NTM3QzEzLjUgNi44OTc4MiAxMy41IDYuNDMxODggMTMuNSA1LjVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+Cjwvc3ZnPgo=) Broken
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yLjUgNi41QzIuNSA0LjYxNDM4IDIuNSAzLjY3MTU3IDMuMDg1NzkgMy4wODU3OUMzLjY3MTU3IDIuNSA0LjYxNDM4IDIuNSA2LjUgMi41QzguMzg1NjIgMi41IDkuMzI4NDMgMi41IDkuOTE0MjEgMy4wODU3OUMxMC41IDMuNjcxNTcgMTAuNSA0LjYxNDM4IDEwLjUgNi41VjE3LjVDMTAuNSAxOS4zODU2IDEwLjUgMjAuMzI4NCA5LjkxNDIxIDIwLjkxNDJDOS4zMjg0MyAyMS41IDguMzg1NjIgMjEuNSA2LjUgMjEuNUM0LjYxNDM4IDIxLjUgMy42NzE1NyAyMS41IDMuMDg1NzkgMjAuOTE0MkMyLjUgMjAuMzI4NCAyLjUgMTkuMzg1NiAyLjUgMTcuNVY2LjVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIGQ9Ik0xMy41IDE1LjVDMTMuNSAxMy42MTQ0IDEzLjUgMTIuNjcxNiAxNC4wODU4IDEyLjA4NThDMTQuNjcxNiAxMS41IDE1LjYxNDQgMTEuNSAxNy41IDExLjVDMTkuMzg1NiAxMS41IDIwLjMyODQgMTEuNSAyMC45MTQyIDEyLjA4NThDMjEuNSAxMi42NzE2IDIxLjUgMTMuNjE0NCAyMS41IDE1LjVWMTcuNUMyMS41IDE5LjM4NTYgMjEuNSAyMC4zMjg0IDIwLjkxNDIgMjAuOTE0MkMyMC4zMjg0IDIxLjUgMTkuMzg1NiAyMS41IDE3LjUgMjEuNUMxNS42MTQ0IDIxLjUgMTQuNjcxNiAyMS41IDE0LjA4NTggMjAuOTE0MkMxMy41IDIwLjMyODQgMTMuNSAxOS4zODU2IDEzLjUgMTcuNVYxNS41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNMTMuNSA1LjVDMTMuNSA0LjU2ODEyIDEzLjUgNC4xMDIxOCAxMy42NTIyIDMuNzM0NjNDMTMuODU1MiAzLjI0NDU4IDE0LjI0NDYgMi44NTUyMyAxNC43MzQ2IDIuNjUyMjRDMTUuMTAyMiAyLjUgMTUuNTY4MSAyLjUgMTYuNSAyLjVIMTguNUMxOS40MzE5IDIuNSAxOS44OTc4IDIuNSAyMC4yNjU0IDIuNjUyMjRDMjAuNzU1NCAyLjg1NTIzIDIxLjE0NDggMy4yNDQ1OCAyMS4zNDc4IDMuNzM0NjNDMjEuNSA0LjEwMjE4IDIxLjUgNC41NjgxMiAyMS41IDUuNUMyMS41IDYuNDMxODggMjEuNSA2Ljg5NzgyIDIxLjM0NzggNy4yNjUzN0MyMS4xNDQ4IDcuNzU1NDIgMjAuNzU1NCA4LjE0NDc3IDIwLjI2NTQgOC4zNDc3NkMxOS44OTc4IDguNSAxOS40MzE5IDguNSAxOC41IDguNUgxNi41QzE1LjU2ODEgOC41IDE1LjEwMjIgOC41IDE0LjczNDYgOC4zNDc3NkMxNC4yNDQ2IDguMTQ0NzcgMTMuODU1MiA3Ljc1NTQyIDEzLjY1MjIgNy4yNjUzN0MxMy41IDYuODk3ODIgMTMuNSA2LjQzMTg4IDEzLjUgNS41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K) Linear
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIuNSA2LjVDMi41IDQuNjE0MzggMi41IDMuNjcxNTcgMy4wODU3OSAzLjA4NTc5QzMuNjcxNTcgMi41IDQuNjE0MzggMi41IDYuNSAyLjVDOC4zODU2MiAyLjUgOS4zMjg0MyAyLjUgOS45MTQyMSAzLjA4NTc5QzEwLjUgMy42NzE1NyAxMC41IDQuNjE0MzggMTAuNSA2LjVWMTcuNUMxMC41IDE5LjM4NTYgMTAuNSAyMC4zMjg0IDkuOTE0MjEgMjAuOTE0MkM5LjMyODQzIDIxLjUgOC4zODU2MiAyMS41IDYuNSAyMS41QzQuNjE0MzggMjEuNSAzLjY3MTU3IDIxLjUgMy4wODU3OSAyMC45MTQyQzIuNSAyMC4zMjg0IDIuNSAxOS4zODU2IDIuNSAxNy41VjYuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPHBhdGggZD0iTTEzLjUgMTUuNUMxMy41IDEzLjYxNDQgMTMuNSAxMi42NzE2IDE0LjA4NTggMTIuMDg1OEMxNC42NzE2IDExLjUgMTUuNjE0NCAxMS41IDE3LjUgMTEuNUMxOS4zODU2IDExLjUgMjAuMzI4NCAxMS41IDIwLjkxNDIgMTIuMDg1OEMyMS41IDEyLjY3MTYgMjEuNSAxMy42MTQ0IDIxLjUgMTUuNVYxNy41QzIxLjUgMTkuMzg1NiAyMS41IDIwLjMyODQgMjAuOTE0MiAyMC45MTQyQzIwLjMyODQgMjEuNSAxOS4zODU2IDIxLjUgMTcuNSAyMS41QzE1LjYxNDQgMjEuNSAxNC42NzE2IDIxLjUgMTQuMDg1OCAyMC45MTQyQzEzLjUgMjAuMzI4NCAxMy41IDE5LjM4NTYgMTMuNSAxNy41VjE1LjVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+CjxwYXRoIGQ9Ik0xMy41IDUuNUMxMy41IDQuNTY4MTIgMTMuNSA0LjEwMjE4IDEzLjY1MjIgMy43MzQ2M0MxMy44NTUyIDMuMjQ0NTggMTQuMjQ0NiAyLjg1NTIzIDE0LjczNDYgMi42NTIyNEMxNS4xMDIyIDIuNSAxNS41NjgxIDIuNSAxNi41IDIuNUgxOC41QzE5LjQzMTkgMi41IDE5Ljg5NzggMi41IDIwLjI2NTQgMi42NTIyNEMyMC43NTU0IDIuODU1MjMgMjEuMTQ0OCAzLjI0NDU4IDIxLjM0NzggMy43MzQ2M0MyMS41IDQuMTAyMTggMjEuNSA0LjU2ODEyIDIxLjUgNS41QzIxLjUgNi40MzE4OCAyMS41IDYuODk3ODIgMjEuMzQ3OCA3LjI2NTM3QzIxLjE0NDggNy43NTU0MiAyMC43NTU0IDguMTQ0NzcgMjAuMjY1NCA4LjM0Nzc2QzE5Ljg5NzggOC41IDE5LjQzMTkgOC41IDE4LjUgOC41SDE2LjVDMTUuNTY4MSA4LjUgMTUuMTAyMiA4LjUgMTQuNzM0NiA4LjM0Nzc2QzE0LjI0NDYgOC4xNDQ3NyAxMy44NTUyIDcuNzU1NDIgMTMuNjUyMiA3LjI2NTM3QzEzLjUgNi44OTc4MiAxMy41IDYuNDMxODggMTMuNSA1LjVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41Ii8+Cjwvc3ZnPgo=) LineDuotone
 * ### ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNi40NDggMS43NUg2LjU1MkM3LjQ1MDQ3IDEuNzQ5OTcgOC4xOTk3MSAxLjc0OTk1IDguNzk0NDggMS44Mjk5MUM5LjQyMjI4IDEuOTE0MzIgOS45ODkwOCAyLjA5OTk5IDEwLjQ0NDUgMi41NTU0NkMxMC45IDMuMDEwOTMgMTEuMDg1NyAzLjU3NzczIDExLjE3MDEgNC4yMDU1MkMxMS4yNTAxIDQuODAwMyAxMS4yNSA1LjU0OTUxIDExLjI1IDYuNDQ3OThWMTcuNTUyQzExLjI1IDE4LjQ1MDUgMTEuMjUwMSAxOS4xOTk3IDExLjE3MDEgMTkuNzk0NUMxMS4wODU3IDIwLjQyMjMgMTAuOSAyMC45ODkxIDEwLjQ0NDUgMjEuNDQ0NUM5Ljk4OTA4IDIxLjkgOS40MjIyOCAyMi4wODU3IDguNzk0NDggMjIuMTcwMUM4LjE5OTcgMjIuMjUwMSA3LjQ1MDQ4IDIyLjI1IDYuNTUyIDIyLjI1SDYuNDQ4MDFDNS41NDk1MyAyMi4yNSA0LjgwMDMxIDIyLjI1MDEgNC4yMDU1MiAyMi4xNzAxQzMuNTc3NzMgMjIuMDg1NyAzLjAxMDkzIDIxLjkgMi41NTU0NiAyMS40NDQ1QzIuMDk5OTkgMjAuOTg5MSAxLjkxNDMyIDIwLjQyMjMgMS44Mjk5MSAxOS43OTQ1QzEuNzQ5OTUgMTkuMTk5NyAxLjc0OTk3IDE4LjQ1MDUgMS43NSAxNy41NTJWNi40NDhDMS43NDk5NyA1LjU0OTU0IDEuNzQ5OTUgNC44MDAzIDEuODI5OTEgNC4yMDU1MkMxLjkxNDMyIDMuNTc3NzMgMi4wOTk5OSAzLjAxMDkzIDIuNTU1NDYgMi41NTU0NkMzLjAxMDkzIDIuMDk5OTkgMy41Nzc3MyAxLjkxNDMyIDQuMjA1NTIgMS44Mjk5MUM0LjgwMDMgMS43NDk5NSA1LjU0OTU0IDEuNzQ5OTcgNi40NDggMS43NVpNNC40MDU0IDMuMzE2NTRDMy45NDM5MyAzLjM3ODU4IDMuNzQ2NDQgMy40ODU4IDMuNjE2MTIgMy42MTYxMkMzLjQ4NTggMy43NDY0NCAzLjM3ODU4IDMuOTQzOTMgMy4zMTY1NCA0LjQwNTRDMy4yNTE2IDQuODg4NDMgMy4yNSA1LjUzNTk5IDMuMjUgNi41VjE3LjVDMy4yNSAxOC40NjQgMy4yNTE2IDE5LjExMTYgMy4zMTY1NCAxOS41OTQ2QzMuMzc4NTggMjAuMDU2MSAzLjQ4NTggMjAuMjUzNiAzLjYxNjEyIDIwLjM4MzlDMy43NDY0NCAyMC41MTQyIDMuOTQzOTMgMjAuNjIxNCA0LjQwNTQgMjAuNjgzNUM0Ljg4ODQzIDIwLjc0ODQgNS41MzU5OSAyMC43NSA2LjUgMjAuNzVDNy40NjQwMSAyMC43NSA4LjExMTU3IDIwLjc0ODQgOC41OTQ2MSAyMC42ODM1QzkuMDU2MDcgMjAuNjIxNCA5LjI1MzU3IDIwLjUxNDIgOS4zODM4OSAyMC4zODM5QzkuNTE0MiAyMC4yNTM2IDkuNjIxNDMgMjAuMDU2MSA5LjY4MzQ3IDE5LjU5NDZDOS43NDg0MSAxOS4xMTE2IDkuNzUgMTguNDY0IDkuNzUgMTcuNVY2LjVDOS43NSA1LjUzNTk5IDkuNzQ4NDEgNC44ODg0MyA5LjY4MzQ3IDQuNDA1NEM5LjYyMTQzIDMuOTQzOTMgOS41MTQyIDMuNzQ2NDQgOS4zODM4OSAzLjYxNjEyQzkuMjUzNTcgMy40ODU4IDkuMDU2MDcgMy4zNzg1OCA4LjU5NDYxIDMuMzE2NTRDOC4xMTE1NyAzLjI1MTYgNy40NjQwMSAzLjI1IDYuNSAzLjI1QzUuNTM1OTkgMy4yNSA0Ljg4ODQzIDMuMjUxNiA0LjQwNTQgMy4zMTY1NFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNy40NDggMTAuNzVIMTcuNTUyQzE4LjQ1MDUgMTAuNzUgMTkuMTk5NyAxMC43NDk5IDE5Ljc5NDUgMTAuODI5OUMyMC40MjIzIDEwLjkxNDMgMjAuOTg5MSAxMS4xIDIxLjQ0NDUgMTEuNTU1NUMyMS45IDEyLjAxMDkgMjIuMDg1NyAxMi41Nzc3IDIyLjE3MDEgMTMuMjA1NUMyMi4yNTAxIDEzLjgwMDMgMjIuMjUgMTQuNTQ5NSAyMi4yNSAxNS40NDc5VjE3LjU1MkMyMi4yNSAxOC40NTA1IDIyLjI1MDEgMTkuMTk5NyAyMi4xNzAxIDE5Ljc5NDVDMjIuMDg1NyAyMC40MjIzIDIxLjkgMjAuOTg5MSAyMS40NDQ1IDIxLjQ0NDVDMjAuOTg5MSAyMS45IDIwLjQyMjMgMjIuMDg1NyAxOS43OTQ1IDIyLjE3MDFDMTkuMTk5NyAyMi4yNTAxIDE4LjQ1MDUgMjIuMjUgMTcuNTUyMSAyMi4yNUgxNy40NDhDMTYuNTQ5NiAyMi4yNSAxNS44MDAzIDIyLjI1MDEgMTUuMjA1NSAyMi4xNzAxQzE0LjU3NzcgMjIuMDg1NyAxNC4wMTA5IDIxLjkgMTMuNTU1NSAyMS40NDQ1QzEzLjEgMjAuOTg5MSAxMi45MTQzIDIwLjQyMjMgMTIuODI5OSAxOS43OTQ1QzEyLjc0OTkgMTkuMTk5NyAxMi43NSAxOC40NTA1IDEyLjc1IDE3LjU1MlYxNS40NDhDMTIuNzUgMTQuNTQ5NSAxMi43NDk5IDEzLjgwMDMgMTIuODI5OSAxMy4yMDU1QzEyLjkxNDMgMTIuNTc3NyAxMy4xIDEyLjAxMDkgMTMuNTU1NSAxMS41NTU1QzE0LjAxMDkgMTEuMSAxNC41Nzc3IDEwLjkxNDMgMTUuMjA1NSAxMC44Mjk5QzE1LjgwMDMgMTAuNzQ5OSAxNi41NDk1IDEwLjc1IDE3LjQ0OCAxMC43NVpNMTUuNDA1NCAxMi4zMTY1QzE0Ljk0MzkgMTIuMzc4NiAxNC43NDY0IDEyLjQ4NTggMTQuNjE2MSAxMi42MTYxQzE0LjQ4NTggMTIuNzQ2NCAxNC4zNzg2IDEyLjk0MzkgMTQuMzE2NSAxMy40MDU0QzE0LjI1MTYgMTMuODg4NCAxNC4yNSAxNC41MzYgMTQuMjUgMTUuNVYxNy41QzE0LjI1IDE4LjQ2NCAxNC4yNTE2IDE5LjExMTYgMTQuMzE2NSAxOS41OTQ2QzE0LjM3ODYgMjAuMDU2MSAxNC40ODU4IDIwLjI1MzYgMTQuNjE2MSAyMC4zODM5QzE0Ljc0NjQgMjAuNTE0MiAxNC45NDM5IDIwLjYyMTQgMTUuNDA1NCAyMC42ODM1QzE1Ljg4ODQgMjAuNzQ4NCAxNi41MzYgMjAuNzUgMTcuNSAyMC43NUMxOC40NjQgMjAuNzUgMTkuMTExNiAyMC43NDg0IDE5LjU5NDYgMjAuNjgzNUMyMC4wNTYxIDIwLjYyMTQgMjAuMjUzNiAyMC41MTQyIDIwLjM4MzkgMjAuMzgzOUMyMC41MTQyIDIwLjI1MzYgMjAuNjIxNCAyMC4wNTYxIDIwLjY4MzUgMTkuNTk0NkMyMC43NDg0IDE5LjExMTYgMjAuNzUgMTguNDY0IDIwLjc1IDE3LjVWMTUuNUMyMC43NSAxNC41MzYgMjAuNzQ4NCAxMy44ODg0IDIwLjY4MzUgMTMuNDA1NEMyMC42MjE0IDEyLjk0MzkgMjAuNTE0MiAxMi43NDY0IDIwLjM4MzkgMTIuNjE2MUMyMC4yNTM2IDEyLjQ4NTggMjAuMDU2MSAxMi4zNzg2IDE5LjU5NDYgMTIuMzE2NUMxOS4xMTE2IDEyLjI1MTYgMTguNDY0IDEyLjI1IDE3LjUgMTIuMjVDMTYuNTM2IDEyLjI1IDE1Ljg4ODQgMTIuMjUxNiAxNS40MDU0IDEyLjMxNjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTYuNDc0OCAxLjc1QzE2LjAzMDMgMS43NSAxNS42NTkyIDEuNzQ5OTkgMTUuMzU0NiAxLjc3MDc3QzE1LjAzNzUgMS43OTI0MSAxNC43MzggMS44MzkwNSAxNC40NDc2IDEuOTU5MzNDMTMuNzczOCAyLjIzODQ0IDEzLjIzODQgMi43NzM4IDEyLjk1OTMgMy40NDc2MkMxMi44MzkxIDMuNzM4MDEgMTIuNzkyNCA0LjAzNzU0IDEyLjc3MDggNC4zNTQ2NEMxMi43NSA0LjY1OTI1IDEyLjc1IDUuMDMwMjkgMTIuNzUgNS40NzQ3NVY1LjUyNTI1QzEyLjc1IDUuOTY5NzIgMTIuNzUgNi4zNDA3NSAxMi43NzA4IDYuNjQ1MzdDMTIuNzkyNCA2Ljk2MjQ3IDEyLjgzOTEgNy4yNjE5OSAxMi45NTkzIDcuNTUyMzhDMTMuMjM4NCA4LjIyNjIxIDEzLjc3MzggOC43NjE1NiAxNC40NDc2IDkuMDQwNjdDMTQuNzM4IDkuMTYwOTUgMTUuMDM3NSA5LjIwNzYgMTUuMzU0NiA5LjIyOTIzQzE1LjY1OTIgOS4yNTAwMiAxNi4wMzAzIDkuMjUwMDEgMTYuNDc0NyA5LjI1SDE4LjUyNTNDMTguOTY5NyA5LjI1MDAxIDE5LjM0MDggOS4yNTAwMiAxOS42NDU0IDkuMjI5MjNDMTkuOTYyNSA5LjIwNzYgMjAuMjYyIDkuMTYwOTUgMjAuNTUyNCA5LjA0MDY3QzIxLjIyNjIgOC43NjE1NiAyMS43NjE2IDguMjI2MjEgMjIuMDQwNyA3LjU1MjM4QzIyLjE2MSA3LjI2MTk5IDIyLjIwNzYgNi45NjI0NyAyMi4yMjkyIDYuNjQ1MzdDMjIuMjUgNi4zNDA3NiAyMi4yNSA1Ljk2OTcyIDIyLjI1IDUuNTI1MjZWNS40NzQ3NUMyMi4yNSA1LjAzMDI5IDIyLjI1IDQuNjU5MjUgMjIuMjI5MiA0LjM1NDY0QzIyLjIwNzYgNC4wMzc1NCAyMi4xNjEgMy43MzgwMSAyMi4wNDA3IDMuNDQ3NjJDMjEuNzYxNiAyLjc3MzggMjEuMjI2MiAyLjIzODQ0IDIwLjU1MjQgMS45NTkzM0MyMC4yNjIgMS44MzkwNSAxOS45NjI1IDEuNzkyNDEgMTkuNjQ1NCAxLjc3MDc3QzE5LjM0MDggMS43NDk5OSAxOC45Njk4IDEuNzUgMTguNTI1NCAxLjc1SDE2LjQ3NDhaTTE1LjAyMTYgMy4zNDUxNUMxNS4wOTg4IDMuMzEzMiAxNS4yMTYgMy4yODM3MiAxNS40NTY3IDMuMjY3MjlDMTUuNzA0MiAzLjI1MDQxIDE2LjAyMzggMy4yNSAxNi41IDMuMjVIMTguNUMxOC45NzYyIDMuMjUgMTkuMjk1OCAzLjI1MDQxIDE5LjU0MzMgMy4yNjcyOUMxOS43ODQgMy4yODM3MiAxOS45MDEyIDMuMzEzMiAxOS45Nzg0IDMuMzQ1MTVDMjAuMjg0NiAzLjQ3MjAyIDIwLjUyOCAzLjcxNTM2IDIwLjY1NDkgNC4wMjE2NUMyMC42ODY4IDQuMDk4OCAyMC43MTYzIDQuMjE2MDIgMjAuNzMyNyA0LjQ1Njc0QzIwLjc0OTYgNC43MDQyMSAyMC43NSA1LjAyMzggMjAuNzUgNS41QzIwLjc1IDUuOTc2MjEgMjAuNzQ5NiA2LjI5NTggMjAuNzMyNyA2LjU0MzI2QzIwLjcxNjMgNi43ODM5OSAyMC42ODY4IDYuOTAxMiAyMC42NTQ5IDYuOTc4MzZDMjAuNTI4IDcuMjg0NjQgMjAuMjg0NiA3LjUyNzk5IDE5Ljk3ODQgNy42NTQ4NUMxOS45MDEyIDcuNjg2ODEgMTkuNzg0IDcuNzE2MjkgMTkuNTQzMyA3LjczMjcxQzE5LjI5NTggNy43NDk2IDE4Ljk3NjIgNy43NSAxOC41IDcuNzVIMTYuNUMxNi4wMjM4IDcuNzUgMTUuNzA0MiA3Ljc0OTYgMTUuNDU2NyA3LjczMjcxQzE1LjIxNiA3LjcxNjI5IDE1LjA5ODggNy42ODY4MSAxNS4wMjE2IDcuNjU0ODVDMTQuNzE1NCA3LjUyNzk5IDE0LjQ3MiA3LjI4NDY0IDE0LjM0NTIgNi45NzgzNkMxNC4zMTMyIDYuOTAxMiAxNC4yODM3IDYuNzgzOTkgMTQuMjY3MyA2LjU0MzI2QzE0LjI1MDQgNi4yOTU4IDE0LjI1IDUuOTc2MjEgMTQuMjUgNS41QzE0LjI1IDUuMDIzOCAxNC4yNTA0IDQuNzA0MjEgMTQuMjY3MyA0LjQ1Njc1QzE0LjI4MzcgNC4yMTYwMiAxNC4zMTMyIDQuMDk4OCAxNC4zNDUyIDQuMDIxNjVDMTQuNDcyIDMuNzE1MzYgMTQuNzE1NCAzLjQ3MjAyIDE1LjAyMTYgMy4zNDUxNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==) Outline
 */
const Widget4: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <SSRBase ref={ref} {...props} weights={weights} />
))

Widget4.displayName = "Widget4"
export default Widget4