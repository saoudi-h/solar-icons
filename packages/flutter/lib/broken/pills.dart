// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `pills` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3Ljg0NDUgNi4xNTU0N0MxNy44NDQ1IDYuMTU1NDcgMTcuNDExOSA4LjM5OTk5IDE0LjkwNTcgMTAuOTA2MUMxMi4zOTk2IDEzLjQxMjMgMTAuMTU1NSAxMy44NDQ1IDEwLjE1NTUgMTMuODQ0NU0yMS43ODI4IDExLjAzOEMyMS41MzU1IDEwLjE4ODggMjEuMDc3MSA5LjM4ODA2IDIwLjQwNzUgOC43MTg0OUwxNS4yODE1IDMuNTkyNDZDMTMuMTU4MiAxLjQ2OTE4IDkuNzE1NzMgMS40NjkxOCA3LjU5MjQ2IDMuNTkyNDZDNS40NjkxOCA1LjcxNTczIDUuNDY5MTggOS4xNTgyNCA3LjU5MjQ2IDExLjI4MTVMMTIuNzE4NSAxNi40MDc1QzE0Ljg0MTggMTguNTMwOCAxOC4yODQzIDE4LjUzMDggMjAuNDA3NSAxNi40MDc1QzIwLjgzMTIgMTUuOTgzOSAyMS4xNzAzIDE1LjUwNzcgMjEuNDI0OSAxNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNC41IDYuNUwxMyA1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTUuNDg5MDkgMjEuNDUxMUM2LjI1Mjk2IDIxLjgwMzUgNy4xMDM1MiAyMi4wMDAxIDggMjIuMDAwMUMxMC44NzMyIDIyLjAwMDEgMTMuMjc0OCAxOS45ODA1IDEzLjg2MjQgMTcuMjgzNE0yLjU0NDQ5IDE4LjUwMTFDMi4xOTQ5MSAxNy43Mzk4IDIgMTYuODkyNyAyIDE2LjAwMDFDMiAxMy4xMjY5IDQuMDE5NTkgMTAuNzI1NCA2LjcxNjY0IDEwLjEzNzciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PillsBrokenIcon extends StatelessWidget {
  /// Creates the `pills` icon in the broken style.
  const PillsBrokenIcon({
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
    name: 'pills',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M17.8445 6.15547C17.8445 6.15547 17.4119 8.39999 14.9057 10.9061C12.3996 13.4123 10.1555 13.8445 10.1555 13.8445M21.7828 11.038C21.5355 10.1888 21.0771 9.38806 20.4075 8.71849L15.2815 3.59246C13.1582 1.46918 9.71573 1.46918 7.59246 3.59246C5.46918 5.71573 5.46918 9.15824 7.59246 11.2815L12.7185 16.4075C14.8418 18.5308 18.2843 18.5308 20.4075 16.4075C20.8312 15.9839 21.1703 15.5077 21.4249 15" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 6.5L13 5" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.48909 21.4511C6.25296 21.8035 7.10352 22.0001 8 22.0001C10.8732 22.0001 13.2748 19.9805 13.8624 17.2834M2.54449 18.5011C2.19491 17.7398 2 16.8927 2 16.0001C2 13.1269 4.01959 10.7254 6.71664 10.1377" stroke="currentColor" stroke-linecap="round"/>''',
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
