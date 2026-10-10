// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-forward` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTIgNi40MjYzMkwyIDE3LjU3MzdDMiAxOS40MjExIDMuNjAwNjUgMjAuNTg4OCA0LjkwMzEzIDE5LjY5MTZMMTAuOTk5OCAxNS4yMzE2VjguNzY4NDRMNC45MDMxMiA0LjMwODM4QzMuNjAwNjQgMy40MTEyMiAyIDQuNTc4OTUgMiA2LjQyNjMyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTEgNy4xMjMwM0wxMSA4Ljc2ODQ0VjE1LjIzMTZWMTYuODc3QzExIDE4LjQ5MzQgMTIuNDY3MyAxOS41MTUyIDEzLjY2MTIgMTguNzMwMkwyMS4wNzg2IDEzLjg1MzJDMjIuMzA3MSAxMy4wNDU1IDIyLjMwNzEgMTAuOTU0NSAyMS4wNzg2IDEwLjE0NjhMMTMuNjYxMiA1LjI2OTgzQzEyLjQ2NzMgNC40ODQ4MiAxMSA1LjUwNjU4IDExIDcuMTIzMDNaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RewindForwardBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `rewind-forward` icon in the boldDuotone style.
  const RewindForwardBoldDuotoneIcon({
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
    name: 'rewind-forward',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11 7.12303L11 8.76844V15.2316V16.877C11 18.4934 12.4673 19.5152 13.6612 18.7302L21.0786 13.8532C22.3071 13.0455 22.3071 10.9545 21.0786 10.1468L13.6612 5.26983C12.4673 4.48482 11 5.50658 11 7.12303Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M2 6.42632L2 17.5737C2 19.4211 3.60065 20.5888 4.90313 19.6916L10.9998 15.2316V8.76844L4.90312 4.30838C3.60064 3.41122 2 4.57895 2 6.42632Z" fill="currentColor"/>''',
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
