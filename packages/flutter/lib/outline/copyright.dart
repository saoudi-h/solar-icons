// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `copyright` icon in the outline style.
class CopyrightOutlineIcon extends StatelessWidget {
  /// Creates the `copyright` icon in the outline style.
  const CopyrightOutlineIcon({
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
    name: 'copyright',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12.2861 7.25C12.9934 7.25005 13.6692 7.38827 14.2832 7.63867C14.6667 7.79512 14.8507 8.2327 14.6943 8.61621C14.5379 8.99962 14.1003 9.18372 13.7168 9.02734C13.2811 8.84969 12.7976 8.75005 12.2861 8.75C10.2838 8.75 8.75 10.253 8.75 12C8.75 13.747 10.2838 15.25 12.2861 15.25C12.7976 15.2499 13.2811 15.1503 13.7168 14.9727C14.1003 14.8163 14.5379 15.0004 14.6943 15.3838C14.8507 15.7673 14.6667 16.2049 14.2832 16.3613C13.6692 16.6117 12.9934 16.7499 12.2861 16.75C9.55456 16.75 7.25 14.6712 7.25 12C7.25 9.32875 9.55456 7.25 12.2861 7.25Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12C1.25 6.06294 6.06294 1.25 12 1.25ZM12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75Z" fill="currentColor"/>''',
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
