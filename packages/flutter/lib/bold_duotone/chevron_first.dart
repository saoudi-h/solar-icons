// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chevron-first` icon in the boldDuotone style.
class ChevronFirstBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chevron-first` icon in the boldDuotone style.
  const ChevronFirstBoldDuotoneIcon({
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
    name: 'chevron-first',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.25 19C8.25 19.4142 7.9142 19.75 7.5 19.75C7.08579 19.75 6.75 19.4142 6.75 19L6.75 5C6.75 4.58579 7.08579 4.25 7.5 4.25C7.91421 4.25 8.25 4.58579 8.25 5L8.25 19Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.9306 4.51167C16.2002 4.19735 16.6737 4.1611 16.9882 4.43061C17.3024 4.70021 17.3387 5.17382 17.0692 5.48823L11.4882 12L17.0692 18.5117C17.3387 18.8261 17.3025 19.2997 16.9882 19.5693C16.6738 19.8388 16.2002 19.8025 15.9306 19.4882L9.93056 12.4882C9.68981 12.2074 9.68981 11.7925 9.93056 11.5117L15.9306 4.51167Z" fill="currentColor"/>''',
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
