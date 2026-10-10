// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `help` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTIiIGN5PSIxMiIgcj0iNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNC44Mjg0IDkuMTcxNTRMMTkuMDcyNCA0LjkyNzczIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTQuOTI3NzMgMTkuMDcyM0w5LjE3MTU1IDE0LjgyODYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOS4xNzE1NyA5LjE3MTU3TDQuOTI4NTEgNC45MjgyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOS4wNzIzIDE5LjA3MjNMMTQuODI4NCAxNC44Mjg2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkuNDEyMzUgMi4zMzg5MkMxMS4wNTMzIDEuODk3NzUgMTIuODI4OSAxLjg2OTM2IDE0LjU4ODIgMi4zNDA3OEMxOS45MjI5IDMuNzcwMiAyMy4wODg3IDkuMjUzNTcgMjEuNjU5MyAxNC41ODgyQzIwLjIyOTkgMTkuOTIyOSAxNC43NDY1IDIzLjA4ODcgOS40MTE4NSAyMS42NTkzQzQuMDc3MTkgMjAuMjI5OSAwLjkxMTM2NCAxNC43NDY1IDIuMzQwNzggOS40MTE4NUMyLjgxMjIgNy42NTI0OCAzLjcyNDU3IDYuMTI5MDEgNC45MjcxMSA0LjkyODQ3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class HelpBrokenIcon extends StatelessWidget {
  /// Creates the `help` icon in the broken style.
  const HelpBrokenIcon({
    super.key,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

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

  /// Static payload for composition with [SolarIcon].
  static const data = SolarIconData(
    name: 'help',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="12" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.8284 9.17154L19.0724 4.92773" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.92773 19.0723L9.17155 14.8286" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.17157 9.17157L4.92851 4.92822" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.0723 19.0723L14.8284 14.8286" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.41235 2.33892C11.0533 1.89775 12.8289 1.86936 14.5882 2.34078C19.9229 3.7702 23.0887 9.25357 21.6593 14.5882C20.2299 19.9229 14.7465 23.0887 9.41185 21.6593C4.07719 20.2299 0.911364 14.7465 2.34078 9.41185C2.8122 7.65248 3.72457 6.12901 4.92711 4.92847" stroke="currentColor" stroke-linecap="round"/>''',
  );

  SolarIconData get _data => data;

  @override
  Widget build(BuildContext context) {
    return SolarIcon(
      _data,
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
