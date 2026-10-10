// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bug` icon in the broken style.
class BugBrokenIcon extends StatelessWidget {
  /// Creates the `bug` icon in the broken style.
  const BugBrokenIcon({
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
    name: 'bug',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M14 21.7101C13.3663 21.8987 12.695 22 12 22C8.13401 22 5 18.866 5 15V11.9375C5 9.76288 6.76288 8 8.9375 8H15.0625C17.2371 8 19 9.76288 19 11.9375V15C19 16.9073 18.2372 18.6364 17 19.899" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 8.27065V7.5C16.5 5.01472 14.4853 3 12 3C10.4398 3 9.06504 3.79401 8.25777 5M7.5 7.5V8.27065" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 14H22" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 14H2" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.2905 3.62571C15.1937 3.08381 16.0969 2.5419 17 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.70947 3.62569C8.80631 3.0838 7.90315 2.5419 6.99998 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.8003 18.9202C18.7003 19.2801 19.6002 19.6401 20.5002 20.0001" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.7798 9.08789C18.6865 8.72521 19.5932 8.36252 20.4999 7.99984" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.19971 18.9202C5.29976 19.2801 4.39981 19.6401 3.49987 20.0001" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22V15" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.22021 9.08789C5.31354 8.72522 4.40686 8.36255 3.50018 7.99988" stroke="currentColor" stroke-linecap="round"/>''',
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
