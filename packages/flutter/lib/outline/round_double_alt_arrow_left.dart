// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-double-alt-arrow-left` icon in the outline style.
class RoundDoubleAltArrowLeftOutlineIcon extends StatelessWidget {
  /// Creates the `round-double-alt-arrow-left` icon in the outline style.
  const RoundDoubleAltArrowLeftOutlineIcon({
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
    name: 'round-double-alt-arrow-left',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM12.0303 8.46967C12.3232 8.76256 12.3232 9.23744 12.0303 9.53033L9.56066 12L12.0303 14.4697C12.3232 14.7626 12.3232 15.2374 12.0303 15.5303C11.7374 15.8232 11.2626 15.8232 10.9697 15.5303L7.96967 12.5303C7.67678 12.2374 7.67678 11.7626 7.96967 11.4697L10.9697 8.46967C11.2626 8.17678 11.7374 8.17678 12.0303 8.46967ZM16.0303 8.46967C16.3232 8.76256 16.3232 9.23744 16.0303 9.53033L13.5607 12L16.0303 14.4697C16.3232 14.7626 16.3232 15.2374 16.0303 15.5303C15.7374 15.8232 15.2626 15.8232 14.9697 15.5303L11.9697 12.5303C11.6768 12.2374 11.6768 11.7626 11.9697 11.4697L14.9697 8.46967C15.2626 8.17678 15.7374 8.17678 16.0303 8.46967Z" fill="currentColor"/>''',
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
