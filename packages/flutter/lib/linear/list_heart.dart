// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNCAxNS4wMzYxQzE0IDE2LjI3MDkgMTUuNDg0OSAxNy41Nzg5IDE2LjUyMDMgMTguMzQwOEMxNi45NTQ2IDE4LjY2MDMgMTcuMTcxNyAxOC44MjAxIDE3LjUgMTguODIwMUMxNy44MjgzIDE4LjgyMDEgMTguMDQ1NCAxOC42NjAzIDE4LjQ3OTcgMTguMzQwOEMxOS41MTUxIDE3LjU3ODkgMjEgMTYuMjcwOSAyMSAxNS4wMzYxQzIxIDEzLjAyODIgMTkuMDc0OSAxMi4yNzg2IDE3LjUgMTMuODI5NkMxNS45MjUxIDEyLjI3ODYgMTQgMTMuMDI4MiAxNCAxNS4wMzYxWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMSA2TDMgNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMSAxMEwzIDEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwIDE0SDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAgMThIMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class ListHeartLinearIcon extends StatelessWidget {
  /// Creates the `list-heart` icon in the linear style.
  const ListHeartLinearIcon({
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
    name: 'list-heart',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M14 15.0361C14 16.2709 15.4849 17.5789 16.5203 18.3408C16.9546 18.6603 17.1717 18.8201 17.5 18.8201C17.8283 18.8201 18.0454 18.6603 18.4797 18.3408C19.5151 17.5789 21 16.2709 21 15.0361C21 13.0282 19.0749 12.2786 17.5 13.8296C15.9251 12.2786 14 13.0282 14 15.0361Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M21 6L3 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 10L3 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 14H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 18H3" stroke="currentColor" stroke-linecap="round"/>''',
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
