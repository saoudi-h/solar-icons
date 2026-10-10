// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cup-first` icon in the broken style.
class CupFirstBrokenIcon extends StatelessWidget {
  /// Creates the `cup-first` icon in the broken style.
  const CupFirstBrokenIcon({
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
    name: 'cup-first',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M11 8L12.5 6.5V10.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 16V19" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 22H8.5L8.83922 20.3039C8.93271 19.8365 9.34312 19.5 9.8198 19.5H14.1802C14.6569 19.5 15.0673 19.8365 15.1608 20.3039L15.5 22Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 22H6" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 2.45597C17.7415 2.59747 18.1811 2.75299 18.5609 3.22083C19.0367 3.80673 19.0115 4.43998 18.9612 5.70647C18.7805 10.2595 17.7601 16 12.0002 16C6.24021 16 5.21983 10.2595 5.03907 5.70647C4.98879 4.43998 4.96365 3.80673 5.43937 3.22083C5.91508 2.63494 6.48445 2.53887 7.62318 2.34674C8.74724 2.15709 10.2166 2 12.0002 2C12.7184 2 13.3857 2.02548 14 2.06829" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.6401 12.422C18.579 11.9004 19.5178 11.3788 20.4567 10.8572C21.2091 10.4392 21.5853 10.2302 21.7925 9.87809C21.9997 9.52598 21.9997 9.09561 21.9997 8.23487L21.9997 8.16234C21.9998 7.11873 21.9998 6.59692 21.7166 6.20408C21.4335 5.81124 20.9385 5.64623 19.9484 5.31621L18.9998 5" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.36008 12.4223C5.42107 11.9006 4.48206 11.3789 3.54305 10.8572C2.79063 10.4392 2.41442 10.2302 2.20723 9.87809C2.00004 9.52598 2.00003 9.09561 2 8.23487L2 8.16234C1.99997 7.11873 1.99996 6.59692 2.2831 6.20408C2.56623 5.81124 3.06126 5.64623 4.05132 5.31621L4.99994 5" stroke="currentColor" stroke-linecap="round"/>''',
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
