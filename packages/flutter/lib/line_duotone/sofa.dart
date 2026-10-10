// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIwIDE5VjE4TTQgMTlWMTgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNS41NTU1NiAxOEgxOC40NDQ0QzIwLjQwODEgMTggMjIgMTYuNDA4MSAyMiAxNC40NDQ0VjEyQzIyIDEwLjg5NTQgMjEuMTA0NiAxMCAyMCAxMEMxOC44OTU0IDEwIDE4IDEwLjg5NTQgMTggMTJWMTMuMkMxOCAxMy42NDE4IDE3LjY0MTggMTQgMTcuMiAxNEgxMkg2LjhDNi4zNTgxNyAxNCA2IDEzLjY0MTggNiAxMy4yVjEyQzYgMTAuODk1NCA1LjEwNDU3IDEwIDQgMTBDMi44OTU0MyAxMCAyIDEwLjg5NTQgMiAxMlYxNC40NDQ0QzIgMTYuNDA4MSAzLjU5MTg4IDE4IDUuNTU1NTYgMThaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTkuOTk5OSAxMEMxOS45OTk5IDkuMDcwNjkgMTkuOTk5OSA4LjYwNjAzIDE5LjkyMyA4LjIxOTY0QzE5LjYwNzQgNi42MzI4OCAxOC4zNjcgNS4zOTI0OSAxNi43ODAyIDUuMDc2ODZDMTYuMzkzOCA1IDE1LjkyOTIgNSAxNC45OTk5IDVIMTEuOTk5OUg4Ljk5OTg4QzguMDcwNTcgNSA3LjYwNTkxIDUgNy4yMTk1MiA1LjA3Njg2QzUuNjMyNzYgNS4zOTI0OSA0LjM5MjM2IDYuNjMyODggNC4wNzY3NCA4LjIxOTY0QzMuOTk5ODggOC42MDYwMyA0IDkuMDcwNjkgNCAxMCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class SofaLineDuotoneIcon extends StatelessWidget {
  /// Creates the `sofa` icon in the lineDuotone style.
  const SofaLineDuotoneIcon({
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
    name: 'sofa',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5.55556 18H18.4444C20.4081 18 22 16.4081 22 14.4444V12C22 10.8954 21.1046 10 20 10C18.8954 10 18 10.8954 18 12V13.2C18 13.6418 17.6418 14 17.2 14H12H6.8C6.35817 14 6 13.6418 6 13.2V12C6 10.8954 5.10457 10 4 10C2.89543 10 2 10.8954 2 12V14.4444C2 16.4081 3.59188 18 5.55556 18Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 19V18M4 19V18" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M19.9999 10C19.9999 9.07069 19.9999 8.60603 19.923 8.21964C19.6074 6.63288 18.367 5.39249 16.7802 5.07686C16.3938 5 15.9292 5 14.9999 5H11.9999H8.99988C8.07057 5 7.60591 5 7.21952 5.07686C5.63276 5.39249 4.39236 6.63288 4.07674 8.21964C3.99988 8.60603 4 9.07069 4 10" stroke="currentColor" stroke-linecap="round"/>''',
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
