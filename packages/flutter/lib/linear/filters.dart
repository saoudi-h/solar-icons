// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik02LjQyMDE4IDEwLjIxMDFDMy44NzI5NCAxMC45MDM1IDIgMTMuMjMzIDIgMTUuOTk5OUMyIDE5LjMxMzYgNC42ODYyOSAyMS45OTk5IDggMjEuOTk5OUMxMS4zMTM3IDIxLjk5OTkgMTQgMTkuMzEzNiAxNCAxNS45OTk5QzE0IDE1LjIxOTQgMTMuODUxIDE0LjQ3MzggMTMuNTc5OCAxMy43ODk4TTExLjk5OTcgMjAuNDcyMkMxMy4wNjEzIDIxLjQyMjMgMTQuNDYzMSAyMiAxNS45OTk4IDIyQzE5LjMxMzUgMjIgMjEuOTk5OCAxOS4zMTM3IDIxLjk5OTggMTZDMjEuOTk5OCAxMy4yMzMxIDIwLjEyNjkgMTAuOTAzNiAxNy41Nzk2IDEwLjIxMDJNMTcuOTk5OCA4QzE3Ljk5OTggMTEuMzEzNyAxNS4zMTM1IDE0IDExLjk5OTggMTRDOC42ODYwOSAxNCA1Ljk5OTggMTEuMzEzNyA1Ljk5OTggOEM1Ljk5OTggNC42ODYyOSA4LjY4NjA5IDIgMTEuOTk5OCAyQzE1LjMxMzUgMiAxNy45OTk4IDQuNjg2MjkgMTcuOTk5OCA4WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class FiltersLinearIcon extends StatelessWidget {
  /// Creates the `filters` icon in the linear style.
  const FiltersLinearIcon({
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
    name: 'filters',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M6.42018 10.2101C3.87294 10.9035 2 13.233 2 15.9999C2 19.3136 4.68629 21.9999 8 21.9999C11.3137 21.9999 14 19.3136 14 15.9999C14 15.2194 13.851 14.4738 13.5798 13.7898M11.9997 20.4722C13.0613 21.4223 14.4631 22 15.9998 22C19.3135 22 21.9998 19.3137 21.9998 16C21.9998 13.2331 20.1269 10.9036 17.5796 10.2102M17.9998 8C17.9998 11.3137 15.3135 14 11.9998 14C8.68609 14 5.9998 11.3137 5.9998 8C5.9998 4.68629 8.68609 2 11.9998 2C15.3135 2 17.9998 4.68629 17.9998 8Z" stroke="currentColor" stroke-linecap="round"/>''',
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
