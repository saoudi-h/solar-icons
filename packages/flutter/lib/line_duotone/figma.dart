// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `figma` icon in the lineDuotone style.
class FigmaLineDuotoneIcon extends StatelessWidget {
  /// Creates the `figma` icon in the lineDuotone style.
  const FigmaLineDuotoneIcon({
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
    name: 'figma',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M11.9999 8.6665H8.66659C6.82564 8.6665 5.33325 10.1589 5.33325 11.9998C5.33325 13.8408 6.82563 15.3332 8.66658 15.3332H11.9999V8.6665Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 2H15.3333C17.1743 2 18.6667 3.49238 18.6667 5.33333C18.6667 7.17428 17.1743 8.66667 15.3333 8.66667H12V2Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.9999 2H8.66659C6.82564 2 5.33325 3.49238 5.33325 5.33333C5.33325 7.17428 6.82563 8.66667 8.66658 8.66667H11.9999V2Z" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M18.6667 11.9998C18.6667 13.8408 17.1743 15.3332 15.3333 15.3332C13.4924 15.3332 12 13.8408 12 11.9998C12 10.1589 13.4924 8.6665 15.3333 8.6665C17.1743 8.6665 18.6667 10.1589 18.6667 11.9998Z" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M8.66658 15.3335H11.9999V18.6668C11.9999 20.5078 10.5075 22.0002 8.66659 22.0002C6.82564 22.0002 5.33325 20.5078 5.33325 18.6668C5.33325 16.8259 6.82563 15.3335 8.66658 15.3335Z" stroke="currentColor" stroke-linecap="round"/>''',
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
