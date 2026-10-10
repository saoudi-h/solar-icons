// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `object-scan` icon in the lineDuotone style.
class ObjectScanLineDuotoneIcon extends StatelessWidget {
  /// Creates the `object-scan` icon in the lineDuotone style.
  const ObjectScanLineDuotoneIcon({
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
    name: 'object-scan',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M4 11.5C4 11.5 6.4 9.5 12 9.5C17.6 9.5 20 11.5 20 11.5" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 14C22 17.7712 22 19.6569 20.8284 20.8284C19.6569 22 17.7712 22 14 22" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10 22C6.22876 22 4.34315 22 3.17157 20.8284C2 19.6569 2 17.7712 2 14" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10 2C6.22876 2 4.34315 2 3.17157 3.17157C2 4.34315 2 6.22876 2 10" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M14 2C17.7712 2 19.6569 2 20.8284 3.17157C22 4.34315 22 6.22876 22 10" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M18 10V9.5C18 7.61438 18 6.67157 17.4142 6.08579C16.8284 5.5 15.8856 5.5 14 5.5H10C8.11438 5.5 7.17157 5.5 6.58579 6.08579C6 6.67157 6 7.61438 6 9.5V14.5C6 16.3856 6 17.3284 6.58579 17.9142C7.17157 18.5 8.11438 18.5 10 18.5H14C15.8856 18.5 16.8284 18.5 17.4142 17.9142C18 17.3284 18 16.3856 18 14.5V10.5" stroke="currentColor" stroke-linecap="round"/>''',
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
