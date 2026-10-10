// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `leaf` icon in the bold style.
class LeafBoldIcon extends StatelessWidget {
  /// Creates the `leaf` icon in the bold style.
  const LeafBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M11.25 2.08258C11.0066 2.13684 10.7675 2.21782 10.5371 2.32554C6.55332 4.18758 4 9.39452 4 13.8567C4 18.0967 7.18341 21.5798 11.25 21.9647V2.08258Z" fill="currentColor"/>
<path d="M12.75 21.9647C16.8166 21.5798 20 18.0967 20 13.8567C20 13.4507 19.9789 13.0385 19.9374 12.6232L12.75 19.8106V21.9647Z" fill="currentColor"/>
<path d="M18.2597 7.17964C17.8707 6.45482 17.4222 5.76815 16.92 5.14068L12.75 9.31065V12.6893L18.2597 7.17964Z" fill="currentColor"/>
<path d="M15.9084 4.03088C15.1732 3.32565 14.3538 2.74195 13.4629 2.32554C13.2325 2.21782 12.9934 2.13684 12.75 2.08258V7.18933L15.9084 4.03088Z" fill="currentColor"/>
<path d="M18.9364 8.62421L12.75 14.8106V17.6893L19.5 10.9393L19.6319 10.8074C19.458 10.0697 19.2246 9.33633 18.9364 8.62421Z" fill="currentColor"/>''',
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
