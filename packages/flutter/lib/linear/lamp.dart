// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `lamp` icon in the linear style.
class LampLinearIcon extends StatelessWidget {
  /// Creates the `lamp` icon in the linear style.
  const LampLinearIcon({
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
    name: 'lamp',
    style: SolarIconStyle.linear,
    body: r'''<path d="M9 22H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22V15" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.96167 7.44451C5.57058 5.0991 5.87503 3.9264 6.66114 3.15144C6.88904 2.92678 7.14306 2.73028 7.41778 2.56616C8.36541 2 9.57699 2 12.0002 2C14.4233 2 15.6349 2 16.5825 2.56616C16.8572 2.73028 17.1113 2.92678 17.3392 3.15144C18.1253 3.9264 18.4297 5.0991 19.0386 7.44451L19.1229 7.76898C19.9507 10.9576 20.3646 12.5519 19.6128 13.6719C19.5378 13.7837 19.4554 13.8902 19.3661 13.9909C18.4709 15 16.8237 15 13.5294 15H10.4709C7.1766 15 5.52945 15 4.63423 13.9909C4.54494 13.8902 4.46252 13.7837 4.38754 13.6719C3.63573 12.5519 4.04963 10.9576 4.87744 7.76897L4.96167 7.44451Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.5 15V17" stroke="currentColor" stroke-linecap="round"/>''',
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
