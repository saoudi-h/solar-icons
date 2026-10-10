// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNi41MzAzMyAxNS41MzAzQzYuMzE1ODMgMTUuNzQ0OCA1Ljk5MzI0IDE1LjgwOSA1LjcxMjk5IDE1LjY5MjlDNS40MzI3MyAxNS41NzY4IDUuMjUgMTUuMzAzMyA1LjI1IDE1VjZDNS4yNSA1LjU4NTc5IDUuNTg1NzkgNS4yNSA2IDUuMjVMMTUgNS4yNUMxNS4zMDMzIDUuMjUgMTUuNTc2OCA1LjQzMjczIDE1LjY5MjkgNS43MTI5OUMxNS44MDkgNS45OTMyNCAxNS43NDQ4IDYuMzE1ODMgMTUuNTMwMyA2LjUzMDMzTDYuNTMwMzMgMTUuNTMwM1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTguNTMwMyAxNy40Njk3QzE4LjgyMzIgMTcuNzYyNiAxOC44MjMyIDE4LjIzNzQgMTguNTMwMyAxOC41MzAzQzE4LjIzNzQgMTguODIzMiAxNy43NjI2IDE4LjgyMzIgMTcuNDY5NyAxOC41MzAzTDEwLjUgMTEuNTYwN0wxMS41NjA3IDEwLjVMMTguNTMwMyAxNy40Njk3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowLeftUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-left-up` icon in the boldDuotone style.
  const ArrowLeftUpBoldDuotoneIcon({
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
    name: 'arrow-left-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.53033 15.5303C6.31583 15.7448 5.99324 15.809 5.71299 15.6929C5.43273 15.5768 5.25 15.3033 5.25 15V6C5.25 5.58579 5.58579 5.25 6 5.25L15 5.25C15.3033 5.25 15.5768 5.43273 15.6929 5.71299C15.809 5.99324 15.7448 6.31583 15.5303 6.53033L6.53033 15.5303Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.5303 17.4697C18.8232 17.7626 18.8232 18.2374 18.5303 18.5303C18.2374 18.8232 17.7626 18.8232 17.4697 18.5303L10.5 11.5607L11.5607 10.5L18.5303 17.4697Z" fill="currentColor"/>''',
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
