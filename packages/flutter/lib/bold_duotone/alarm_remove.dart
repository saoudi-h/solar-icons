// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `alarm-remove` icon in the boldDuotone style.
class AlarmRemoveBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `alarm-remove` icon in the boldDuotone style.
  const AlarmRemoveBoldDuotoneIcon({
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
    name: 'alarm-remove',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.9998 12.2496C15.414 12.2496 15.7498 12.5854 15.7498 12.9996C15.7498 13.4139 15.414 13.7496 14.9998 13.7496H8.99981C8.5856 13.7496 8.24981 13.4139 8.24981 12.9996C8.24981 12.5854 8.5856 12.2496 8.99981 12.2496H14.9998Z" fill="currentColor"/>
<path d="M7.23516 2.10999C7.57686 1.89853 8.02644 2.00107 8.24004 2.33949C8.45358 2.67795 8.35013 3.12391 8.0086 3.33558L4.11602 5.74574C3.77434 5.95693 3.32465 5.85362 3.11114 5.51527C2.89758 5.17677 3.00097 4.73081 3.34258 4.51917L7.23516 2.10999Z" fill="currentColor"/>
<path d="M15.7596 2.33949C15.9732 2.00107 16.4228 1.89854 16.7645 2.10999L20.657 4.51917C20.9986 4.73081 21.102 5.17677 20.8885 5.51527C20.675 5.85362 20.2253 5.95693 19.8836 5.74574L15.991 3.33558C15.6495 3.12391 15.546 2.67794 15.7596 2.33949Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C16.9706 22 21 17.9706 21 13C21 8.02944 16.9706 4 12 4C7.02944 4 3 8.02944 3 13C3 17.9706 7.02944 22 12 22Z" fill="currentColor"/>''',
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
