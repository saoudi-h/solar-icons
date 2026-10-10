// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bowling` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyQzIgMTcuNTIyOCA2LjQ3NzE1IDIyIDEyIDIyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIgMTAuNUMxMi44Mjg0IDEwLjUgMTMuNSAxMS4xNzE2IDEzLjUgMTJDMTMuNSAxMi44Mjg0IDEyLjgyODQgMTMuNSAxMiAxMy41QzExLjE3MTYgMTMuNSAxMC41IDEyLjgyODQgMTAuNSAxMkMxMC41IDExLjE3MTYgMTEuMTcxNiAxMC41IDEyIDEwLjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik04IDhDOC44Mjg0MyA4IDkuNSA4LjY3MTU3IDkuNSA5LjVDOS41IDEwLjMyODQgOC44Mjg0MyAxMSA4IDExQzcuMTcxNTcgMTEgNi41IDEwLjMyODQgNi41IDkuNUM2LjUgOC42NzE1NyA3LjE3MTU3IDggOCA4WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIgNS41QzEyLjgyODQgNS41IDEzLjUgNi4xNzE1NyAxMy41IDdDMTMuNSA3LjgyODQzIDEyLjgyODQgOC41IDEyIDguNUMxMS4xNzE2IDguNSAxMC41IDcuODI4NDMgMTAuNSA3QzEwLjUgNi4xNzE1NyAxMS4xNzE2IDUuNSAxMiA1LjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class BowlingBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `bowling` icon in the boldDuotone style.
  const BowlingBoldDuotoneIcon({
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
    name: 'bowling',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 10.5C12.8284 10.5 13.5 11.1716 13.5 12C13.5 12.8284 12.8284 13.5 12 13.5C11.1716 13.5 10.5 12.8284 10.5 12C10.5 11.1716 11.1716 10.5 12 10.5Z" fill="currentColor"/>
<path d="M8 8C8.82843 8 9.5 8.67157 9.5 9.5C9.5 10.3284 8.82843 11 8 11C7.17157 11 6.5 10.3284 6.5 9.5C6.5 8.67157 7.17157 8 8 8Z" fill="currentColor"/>
<path d="M12 5.5C12.8284 5.5 13.5 6.17157 13.5 7C13.5 7.82843 12.8284 8.5 12 8.5C11.1716 8.5 10.5 7.82843 10.5 7C10.5 6.17157 11.1716 5.5 12 5.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="currentColor"/>''',
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
