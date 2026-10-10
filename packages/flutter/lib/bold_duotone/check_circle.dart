// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIyIDEyQzIyIDE3LjUyMjggMTcuNTIyOCAyMiAxMiAyMkM2LjQ3NzE1IDIyIDIgMTcuNTIyOCAyIDEyQzIgNi40NzcxNSA2LjQ3NzE1IDIgMTIgMkMxNy41MjI4IDIgMjIgNi40NzcxNSAyMiAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE2LjAzMDMgOC45Njk2N0MxNi4zMjMyIDkuMjYyNTYgMTYuMzIzMiA5LjczNzQ0IDE2LjAzMDMgMTAuMDMwM0wxMS4wMzAzIDE1LjAzMDNDMTAuNzM3NCAxNS4zMjMyIDEwLjI2MjYgMTUuMzIzMiA5Ljk2OTY3IDE1LjAzMDNMNy45Njk2NyAxMy4wMzAzQzcuNjc2NzggMTIuNzM3NCA3LjY3Njc4IDEyLjI2MjYgNy45Njk2NyAxMS45Njk3QzguMjYyNTYgMTEuNjc2OCA4LjczNzQ0IDExLjY3NjggOS4wMzAzMyAxMS45Njk3TDEwLjUgMTMuNDM5M0wxMi43MzQ4IDExLjIwNDVMMTQuOTY5NyA4Ljk2OTY3QzE1LjI2MjYgOC42NzY3OCAxNS43Mzc0IDguNjc2NzggMTYuMDMwMyA4Ljk2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class CheckCircleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `check-circle` icon in the boldDuotone style.
  const CheckCircleBoldDuotoneIcon({
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
    name: 'check-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.0303 8.96967C16.3232 9.26256 16.3232 9.73744 16.0303 10.0303L11.0303 15.0303C10.7374 15.3232 10.2626 15.3232 9.96967 15.0303L7.96967 13.0303C7.67678 12.7374 7.67678 12.2626 7.96967 11.9697C8.26256 11.6768 8.73744 11.6768 9.03033 11.9697L10.5 13.4393L12.7348 11.2045L14.9697 8.96967C15.2626 8.67678 15.7374 8.67678 16.0303 8.96967Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" fill="currentColor"/>''',
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
