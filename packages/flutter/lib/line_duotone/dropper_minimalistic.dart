// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `dropper-minimalistic` icon in the lineDuotone style.
class DropperMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `dropper-minimalistic` icon in the lineDuotone style.
  const DropperMinimalisticLineDuotoneIcon({
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
    name: 'dropper-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M19 15.8831V8C19 6.11438 19 5.17157 18.4142 4.58579C17.8284 4 16.8856 4 15 4H9C7.11438 4 6.17157 4 5.58579 4.58579C5 5.17157 5 6.11438 5 8V15.8831C5 16.6438 5.31911 17.3697 5.87966 17.8841C9.3416 21.0607 14.6584 21.0607 18.1203 17.8841C18.6809 17.3697 19 16.6438 19 15.8831Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 8L17 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 14H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 11.9166C14 13.0672 13.1046 13.9999 12 13.9999C10.8954 13.9999 10 13.0672 10 11.9166C10 11.1967 10.783 10.2358 11.3691 9.61737C11.7161 9.25124 12.2839 9.25124 12.6309 9.61737C13.217 10.2358 14 11.1967 14 11.9166Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 11H17" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 21V22" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M14 4C14 2.89543 13.1046 2 12 2C10.8954 2 10 2.89543 10 4" stroke="currentColor" stroke-linecap="round"/>''',
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
