// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `alt-arrow-up` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTguMzAyNzMgMTEuNTk1NkwxMS42Mjk2IDguMTY0ODVDMTEuODQyOCA3Ljk0NTA1IDEyLjE1NzMgNy45NDUwNSAxMi4zNzA0IDguMTY0ODVMMTguODAwMSAxNC43OTUzQzE5LjIwMTMgMTUuMjA5MSAxOC45NTgxIDE2IDE4LjQyOTcgMTZIMTIuNzA3MUw4LjMwMjczIDExLjU5NTZaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTExLjI5MjkgMTYuMDAwOUg1LjU3MDNDNS4wNDE4OSAxNi4wMDA5IDQuNzk4NjkgMTUuMjA5OSA1LjE5OTkgMTQuNzk2Mkw3LjYwNjQ4IDEyLjMxNDVMMTEuMjkyOSAxNi4wMDA5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class AltArrowUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `alt-arrow-up` icon in the boldDuotone style.
  const AltArrowUpBoldDuotoneIcon({
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
    name: 'alt-arrow-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.30273 11.5956L11.6296 8.16485C11.8428 7.94505 12.1573 7.94505 12.3704 8.16485L18.8001 14.7953C19.2013 15.2091 18.9581 16 18.4297 16H12.7071L8.30273 11.5956Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.2929 16.0009H5.5703C5.04189 16.0009 4.79869 15.2099 5.1999 14.7962L7.60648 12.3145L11.2929 16.0009Z" fill="currentColor"/>''',
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
