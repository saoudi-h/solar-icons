// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chevrons-up-down` icon in every style.
///
/// Prefer the static widgets (e.g. `ChevronsUpDownLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjQ2OTcgMTQuNDY5N0MxNy43NjI2IDE0LjE3NjggMTguMjM3MyAxNC4xNzY4IDE4LjUzMDIgMTQuNDY5N0MxOC44MjMgMTQuNzYyNiAxOC44MjMxIDE1LjIzNzQgMTguNTMwMiAxNS41MzAyTDEyLjUzMDIgMjEuNTMwMkMxMi4yMzc0IDIxLjgyMzEgMTEuNzYyNiAyMS44MjMgMTEuNDY5NyAyMS41MzAyTDUuNDY5NjcgMTUuNTMwMkM1LjE3Njc4IDE1LjIzNzMgNS4xNzY3OCAxNC43NjI2IDUuNDY5NjcgMTQuNDY5N0M1Ljc2MjU2IDE0LjE3NjggNi4yMzczMiAxNC4xNzY4IDYuNTMwMjIgMTQuNDY5N0wxMS45OTk5IDE5LjkzOTRMMTcuNDY5NyAxNC40Njk3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTEuNDY5NyAyLjQ2OTY3QzExLjc2MjYgMi4xNzY3OCAxMi4yMzczIDIuMTc2NzggMTIuNTMwMiAyLjQ2OTY3TDE4LjUzMDIgOC40Njk2N0MxOC44MjMgOC43NjI1NyAxOC44MjMxIDkuMjM3MzYgMTguNTMwMiA5LjUzMDIyQzE4LjIzNzQgOS44MjMwNyAxNy43NjI2IDkuODIzIDE3LjQ2OTcgOS41MzAyMkwxMS45OTk5IDQuMDYwNDlMNi41MzAyMiA5LjUzMDIyQzYuMjM3MzYgOS44MjMwNyA1Ljc2MjU3IDkuODIzIDUuNDY5NjcgOS41MzAyMkM1LjE3Njc4IDkuMjM3MzIgNS4xNzY3OCA4Ljc2MjU2IDUuNDY5NjcgOC40Njk2N0wxMS40Njk3IDIuNDY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGcgb3BhY2l0eT0iMC41Ij4KPHBhdGggZD0iTTE3LjQ2OTcgMTQuNDY5N0MxNy43NjI2IDE0LjE3NjggMTguMjM3MyAxNC4xNzY4IDE4LjUzMDIgMTQuNDY5N0MxOC44MjMxIDE0Ljc2MjYgMTguODIzMSAxNS4yMzczIDE4LjUzMDIgMTUuNTMwMkwxMi41MzAyIDIxLjUzMDJDMTIuMjM3MyAyMS44MjMxIDExLjc2MjYgMjEuODIzMSAxMS40Njk3IDIxLjUzMDJMNS40Njk2NyAxNS41MzAyQzUuMTc2NzggMTUuMjM3MyA1LjE3Njc4IDE0Ljc2MjYgNS40Njk2NyAxNC40Njk3QzUuNzYyNTYgMTQuMTc2OCA2LjIzNzMyIDE0LjE3NjggNi41MzAyMiAxNC40Njk3TDExLjk5OTkgMTkuOTM5NEwxNy40Njk3IDE0LjQ2OTdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMS40Njk3IDIuNDY5NjdDMTEuNzYyNiAyLjE3Njc4IDEyLjIzNzMgMi4xNzY3OCAxMi41MzAyIDIuNDY5NjdMMTguNTMwMiA4LjQ2OTY3QzE4LjgyMzEgOC43NjI1NyAxOC44MjMxIDkuMjM3MzQgMTguNTMwMiA5LjUzMDIyQzE4LjIzNzMgOS44MjMwOSAxNy43NjI2IDkuODIzMDUgMTcuNDY5NyA5LjUzMDIyTDExLjk5OTkgNC4wNjA0OUw2LjUzMDIyIDkuNTMwMjJDNi4yMzczNCA5LjgyMzA5IDUuNzYyNTcgOS44MjMwNSA1LjQ2OTY3IDkuNTMwMjJDNS4xNzY3OCA5LjIzNzMyIDUuMTc2NzggOC43NjI1NiA1LjQ2OTY3IDguNDY5NjdMMTEuNDY5NyAyLjQ2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L2c+CjxwYXRoIGQ9Ik0xNy40Njk3IDE0LjQ2OTdDMTcuNzYyNiAxNC4xNzY4IDE4LjIzNzMgMTQuMTc2OCAxOC41MzAyIDE0LjQ2OTdDMTguODIzMSAxNC43NjI2IDE4LjgyMzEgMTUuMjM3MyAxOC41MzAyIDE1LjUzMDJMMTIuNTMwMiAyMS41MzAyQzEyLjIzNzMgMjEuODIzMSAxMS43NjI2IDIxLjgyMzEgMTEuNDY5NyAyMS41MzAyTDguNDY5NjcgMTguNTMwMkM4LjE3Njc4IDE4LjIzNzMgOC4xNzY3OCAxNy43NjI2IDguNDY5NjcgMTcuNDY5N0M4Ljc2MjU2IDE3LjE3NjggOS4yMzczMiAxNy4xNzY4IDkuNTMwMjIgMTcuNDY5N0wxMS45OTk5IDE5LjkzOTRMMTcuNDY5NyAxNC40Njk3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTEuNDY5NyAyLjQ2OTY3QzExLjc2MjYgMi4xNzY3OCAxMi4yMzczIDIuMTc2NzggMTIuNTMwMiAyLjQ2OTY3TDE4LjUzMDIgOC40Njk2N0MxOC44MjMxIDguNzYyNTcgMTguODIzMSA5LjIzNzM0IDE4LjUzMDIgOS41MzAyMkMxOC4yMzczIDkuODIzMDkgMTcuNzYyNiA5LjgyMzA1IDE3LjQ2OTcgOS41MzAyMkwxMS45OTk5IDQuMDYwNDlMOS41MzAyMiA2LjUzMDIyQzkuMjM3MzQgNi44MjMwOSA4Ljc2MjU3IDYuODIzMDUgOC40Njk2NyA2LjUzMDIyQzguMTc2NzggNi4yMzczMiA4LjE3Njc4IDUuNzYyNTYgOC40Njk2NyA1LjQ2OTY3TDExLjQ2OTcgMi40Njk2N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEzLjUgMTkuNUwxMiAyMUw2IDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTE2LjUgMTYuNUwxOCAxNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMy41IDQuNUwxMiAzTDYgOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNi41IDcuNUwxOCA5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4IDE1TDEyIDIxTDYgMTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTggOUwxMiAzTDYgOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTggOUwxMiAzTDYgOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDZMMTIgM0wxOCA5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTggMTVMMTIgMjFMNiAxNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDE4TDEyIDIxTDE4IDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjQ2OTcgMTQuNDY5N0MxNy43NjI2IDE0LjE3NjggMTguMjM3MyAxNC4xNzY4IDE4LjUzMDIgMTQuNDY5N0MxOC44MjMgMTQuNzYyNiAxOC44MjMxIDE1LjIzNzQgMTguNTMwMiAxNS41MzAyTDEyLjUzMDIgMjEuNTMwMkMxMi4yMzc0IDIxLjgyMzEgMTEuNzYyNiAyMS44MjMgMTEuNDY5NyAyMS41MzAyTDUuNDY5NjcgMTUuNTMwMkM1LjE3Njc4IDE1LjIzNzMgNS4xNzY3OCAxNC43NjI2IDUuNDY5NjcgMTQuNDY5N0M1Ljc2MjU2IDE0LjE3NjggNi4yMzczMiAxNC4xNzY4IDYuNTMwMjIgMTQuNDY5N0wxMS45OTk5IDE5LjkzOTRMMTcuNDY5NyAxNC40Njk3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTEuNDY5NyAyLjQ2OTY3QzExLjc2MjYgMi4xNzY3OCAxMi4yMzczIDIuMTc2NzggMTIuNTMwMiAyLjQ2OTY3TDE4LjUzMDIgOC40Njk2N0MxOC44MjMgOC43NjI1NyAxOC44MjMxIDkuMjM3MzYgMTguNTMwMiA5LjUzMDIyQzE4LjIzNzQgOS44MjMwNyAxNy43NjI2IDkuODIzIDE3LjQ2OTcgOS41MzAyMkwxMS45OTk5IDQuMDYwNDlMNi41MzAyMiA5LjUzMDIyQzYuMjM3MzYgOS44MjMwNyA1Ljc2MjU3IDkuODIzIDUuNDY5NjcgOS41MzAyMkM1LjE3Njc4IDkuMjM3MzIgNS4xNzY3OCA4Ljc2MjU2IDUuNDY5NjcgOC40Njk2N0wxMS40Njk3IDIuNDY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ChevronsUpDownIcon extends StatelessWidget {
  /// Creates the `chevrons-up-down` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ChevronsUpDownIcon({
    super.key,
    this.style,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw. Falls back to [SolarProvider] (unless [isolated]), then [SolarIconStyle.linear].
  final SolarIconStyle? style;

  /// Width and height.
  final double? size;

  /// Primary color.
  final Color? color;

  /// Stroke width for stroked styles.
  final double? strokeWidth;

  /// Accent color for duotone styles.
  final Color? secondaryColor;

  /// Accent opacity for duotone styles, from 0 to 1.
  final double? secondaryOpacity;

  /// Accessibility label.
  final String? semanticLabel;

  /// When true, ignores [SolarProvider] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'chevrons-up-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17.4697 14.4697C17.7626 14.1768 18.2373 14.1768 18.5302 14.4697C18.823 14.7626 18.8231 15.2374 18.5302 15.5302L12.5302 21.5302C12.2374 21.8231 11.7626 21.823 11.4697 21.5302L5.46967 15.5302C5.17678 15.2373 5.17678 14.7626 5.46967 14.4697C5.76256 14.1768 6.23732 14.1768 6.53022 14.4697L11.9999 19.9394L17.4697 14.4697Z" fill="currentColor"/>
<path d="M11.4697 2.46967C11.7626 2.17678 12.2373 2.17678 12.5302 2.46967L18.5302 8.46967C18.823 8.76257 18.8231 9.23736 18.5302 9.53022C18.2374 9.82307 17.7626 9.823 17.4697 9.53022L11.9999 4.06049L6.53022 9.53022C6.23736 9.82307 5.76257 9.823 5.46967 9.53022C5.17678 9.23732 5.17678 8.76256 5.46967 8.46967L11.4697 2.46967Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'chevrons-up-down',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17.4697 14.4697C17.7626 14.1768 18.2373 14.1768 18.5302 14.4697C18.8231 14.7626 18.8231 15.2373 18.5302 15.5302L12.5302 21.5302C12.2373 21.8231 11.7626 21.8231 11.4697 21.5302L8.46967 18.5302C8.17678 18.2373 8.17678 17.7626 8.46967 17.4697C8.76256 17.1768 9.23732 17.1768 9.53022 17.4697L11.9999 19.9394L17.4697 14.4697Z" fill="currentColor"/>
<path d="M11.4697 2.46967C11.7626 2.17678 12.2373 2.17678 12.5302 2.46967L18.5302 8.46967C18.8231 8.76257 18.8231 9.23734 18.5302 9.53022C18.2373 9.82309 17.7626 9.82305 17.4697 9.53022L11.9999 4.06049L9.53022 6.53022C9.23734 6.82309 8.76257 6.82305 8.46967 6.53022C8.17678 6.23732 8.17678 5.76256 8.46967 5.46967L11.4697 2.46967Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M17.4697 14.4697C17.7626 14.1768 18.2373 14.1768 18.5302 14.4697C18.8231 14.7626 18.8231 15.2373 18.5302 15.5302L12.5302 21.5302C12.2373 21.8231 11.7626 21.8231 11.4697 21.5302L5.46967 15.5302C5.17678 15.2373 5.17678 14.7626 5.46967 14.4697C5.76256 14.1768 6.23732 14.1768 6.53022 14.4697L11.9999 19.9394L17.4697 14.4697Z" fill="currentColor"/>
<path d="M11.4697 2.46967C11.7626 2.17678 12.2373 2.17678 12.5302 2.46967L18.5302 8.46967C18.8231 8.76257 18.8231 9.23734 18.5302 9.53022C18.2373 9.82309 17.7626 9.82305 17.4697 9.53022L11.9999 4.06049L6.53022 9.53022C6.23734 9.82309 5.76257 9.82305 5.46967 9.53022C5.17678 9.23732 5.17678 8.76256 5.46967 8.46967L11.4697 2.46967Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'chevrons-up-down',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13.5 19.5L12 21L6 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.5 16.5L18 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M13.5 4.5L12 3L6 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.5 7.5L18 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'chevrons-up-down',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M18 15L12 21L6 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 9L12 3L6 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'chevrons-up-down',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9 6L12 3L18 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 18L12 21L18 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M18 9L12 3L6 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M18 15L12 21L6 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'chevrons-up-down',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M17.4697 14.4697C17.7626 14.1768 18.2373 14.1768 18.5302 14.4697C18.823 14.7626 18.8231 15.2374 18.5302 15.5302L12.5302 21.5302C12.2374 21.8231 11.7626 21.823 11.4697 21.5302L5.46967 15.5302C5.17678 15.2373 5.17678 14.7626 5.46967 14.4697C5.76256 14.1768 6.23732 14.1768 6.53022 14.4697L11.9999 19.9394L17.4697 14.4697Z" fill="currentColor"/>
<path d="M11.4697 2.46967C11.7626 2.17678 12.2373 2.17678 12.5302 2.46967L18.5302 8.46967C18.823 8.76257 18.8231 9.23736 18.5302 9.53022C18.2374 9.82307 17.7626 9.823 17.4697 9.53022L11.9999 4.06049L6.53022 9.53022C6.23736 9.82307 5.76257 9.823 5.46967 9.53022C5.17678 9.23732 5.17678 8.76256 5.46967 8.46967L11.4697 2.46967Z" fill="currentColor"/>''',
  );

  @override
  Widget build(BuildContext context) {
    final SolarIconStyle fallback = isolated
        ? SolarIconStyle.linear
        : SolarProvider.maybeOf(context)?.style ?? SolarIconStyle.linear;
    final SolarIconData data = switch (style ?? fallback) {
      SolarIconStyle.bold => bold,
      SolarIconStyle.boldDuotone => boldDuotone,
      SolarIconStyle.broken => broken,
      SolarIconStyle.linear => linear,
      SolarIconStyle.lineDuotone => lineDuotone,
      SolarIconStyle.outline => outline,
    };
    return SolarIcon(
      data,
      size: size,
      color: color,
      strokeWidth: strokeWidth,
      secondaryColor: secondaryColor,
      secondaryOpacity: secondaryOpacity,
      semanticLabel: semanticLabel,
      isolated: isolated,
    );
  }
}
