// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiA5LjAwMDA4TDE2LjQzMTcgNC41Njg0Mk0xMiAxNC41MDAxTDE4LjYxNDMgNy44ODU4Mk0xMiAxOS41MDAxTDE5LjgxMSAxMS42ODkxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDIyQzE2LjQxODMgMjIgMjAgMTguMzU0MSAyMCAxMy44NTY3QzIwIDkuMzk0NTMgMTcuNDQ2NyA0LjE4NzU5IDEzLjQ2MjkgMi4zMjU1NUMxMi45OTg2IDIuMTA4NTIgMTIuNDk5MyAyIDEyIDJNMTIgMjJDNy41ODE3MiAyMiA0IDE4LjM1NDEgNCAxMy44NTY3QzQgOS4zOTQ1MyA2LjU1MzMyIDQuMTg3NTkgMTAuNTM3MSAyLjMyNTU1QzExLjAwMTQgMi4xMDg1MiAxMS41MDA3IDIgMTIgMk0xMiAyMlYyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class LeafLinearIcon extends StatelessWidget {
  /// Creates the `leaf` icon in the linear style.
  const LeafLinearIcon({
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
    name: 'leaf',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 9.00008L16.4317 4.56842M12 14.5001L18.6143 7.88582M12 19.5001L19.811 11.6891" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22C16.4183 22 20 18.3541 20 13.8567C20 9.39453 17.4467 4.18759 13.4629 2.32555C12.9986 2.10852 12.4993 2 12 2M12 22C7.58172 22 4 18.3541 4 13.8567C4 9.39453 6.55332 4.18759 10.5371 2.32555C11.0014 2.10852 11.5007 2 12 2M12 22V2" stroke="currentColor" stroke-linecap="round"/>''',
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
