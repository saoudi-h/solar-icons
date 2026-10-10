// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-back` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTIxLjk5OTggNi40MjYzMkwyMS45OTk4IDE3LjU3MzdDMjEuOTk5OCAxOS40MjExIDIwLjM5OTEgMjAuNTg4OCAxOS4wOTY2IDE5LjY5MTZMMTMgMTUuMjMxNlY4Ljc2ODQ0TDE5LjA5NjYgNC4zMDgzOEMyMC4zOTkxIDMuNDExMjIgMjEuOTk5OCA0LjU3ODk1IDIxLjk5OTggNi40MjYzMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEzIDcuMTIzMDNMMTMgMTYuODc3QzEzIDE4LjQ5MzQgMTEuNTMyNyAxOS41MTUyIDEwLjMzODggMTguNzMwMkwyLjkyMTM1IDEzLjg1MzJDMS42OTI4OCAxMy4wNDU1IDEuNjkyODggMTAuOTU0NSAyLjkyMTM2IDEwLjE0NjhMMTAuMzM4OCA1LjI2OTgzQzExLjUzMjcgNC40ODQ4MiAxMyA1LjUwNjU4IDEzIDcuMTIzMDNaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RewindBackBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `rewind-back` icon in the boldDuotone style.
  const RewindBackBoldDuotoneIcon({
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
    name: 'rewind-back',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13 7.12303L13 16.877C13 18.4934 11.5327 19.5152 10.3388 18.7302L2.92135 13.8532C1.69288 13.0455 1.69288 10.9545 2.92136 10.1468L10.3388 5.26983C11.5327 4.48482 13 5.50658 13 7.12303Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M21.9998 6.42632L21.9998 17.5737C21.9998 19.4211 20.3991 20.5888 19.0966 19.6916L13 15.2316V8.76844L19.0966 4.30838C20.3991 3.41122 21.9998 4.57895 21.9998 6.42632Z" fill="currentColor"/>''',
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
