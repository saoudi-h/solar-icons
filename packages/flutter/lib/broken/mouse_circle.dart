// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNiAxNEMxNiAxNi4yMDkxIDE0LjIwOTEgMTggMTIgMThDOS43OTA4NiAxOCA4IDE2LjIwOTEgOCAxNFYxMEM4IDcuNzkwODYgOS43OTA4NiA2IDEyIDZDMTQuMjA5MSA2IDE2IDcuNzkwODYgMTYgMTAiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOC41IDEwSDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDEwVjYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgOC44OTE4MlYzLjg1MDIyQzEyIDIuNzM2NDYgMTEuMDk1NSAxLjgxMjU0IDEwLjAxMjggMi4wMzI2N0M1LjQ0MTkzIDIuOTYxOTQgMiA3LjAzNDA3IDIgMTEuOTE2OEMyIDEzLjc3MDYgMi40OTYxNCAxNS41MDc1IDMuMzYxODIgMTdNMTYuMzY0MSAyLjg0MTlDMTkuNzAwMyA0LjQ3NjEgMjIgNy45MjU2NSAyMiAxMS45MTY4QzIyIDE3LjQ4NTYgMTcuNTIyOCAyMiAxMiAyMkMxMC4xNzg2IDIyIDguNDcwODcgMjEuNTA5IDcgMjAuNjUxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class MouseCircleBrokenIcon extends StatelessWidget {
  /// Creates the `mouse-circle` icon in the broken style.
  const MouseCircleBrokenIcon({
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
    name: 'mouse-circle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M16 14C16 16.2091 14.2091 18 12 18C9.79086 18 8 16.2091 8 14V10C8 7.79086 9.79086 6 12 6C14.2091 6 16 7.79086 16 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 10H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 10V6" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 8.89182V3.85022C12 2.73646 11.0955 1.81254 10.0128 2.03267C5.44193 2.96194 2 7.03407 2 11.9168C2 13.7706 2.49614 15.5075 3.36182 17M16.3641 2.8419C19.7003 4.4761 22 7.92565 22 11.9168C22 17.4856 17.5228 22 12 22C10.1786 22 8.47087 21.509 7 20.651" stroke="currentColor" stroke-linecap="round"/>''',
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
