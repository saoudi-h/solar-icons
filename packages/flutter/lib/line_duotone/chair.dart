// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chair` icon in the lineDuotone style.
class ChairLineDuotoneIcon extends StatelessWidget {
  /// Creates the `chair` icon in the lineDuotone style.
  const ChairLineDuotoneIcon({
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
    name: 'chair',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M15.5 12H8.50001C6.8501 12 6.02514 12 5.51257 12.5858C5.22669 12.9125 5.10026 13.3503 5.04435 14.0008C4.9669 14.9018 4.92818 15.3523 5.22538 15.6762C5.52259 16 6.01506 16 7.00001 16H17C17.985 16 18.4774 16 18.7746 15.6762C19.0718 15.3523 19.0331 14.9018 18.9557 14.0008C18.8998 13.3503 18.7733 12.9125 18.4874 12.5858C17.9749 12 17.1499 12 15.5 12Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M17 21V16M7 21V16" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M7 8C7 6.13077 7 5.19615 7.40192 4.5C7.66523 4.04394 8.04394 3.66523 8.5 3.40192C9.19615 3 10.1308 3 12 3C13.8692 3 14.8038 3 15.5 3.40192C15.9561 3.66523 16.3348 4.04394 16.5981 4.5C17 5.19615 17 6.13077 17 8V12H7V8Z" stroke="currentColor" stroke-linecap="round"/>''',
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
