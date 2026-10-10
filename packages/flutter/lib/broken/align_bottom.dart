// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `align-bottom` icon in the broken style.
class AlignBottomBrokenIcon extends StatelessWidget {
  /// Creates the `align-bottom` icon in the broken style.
  const AlignBottomBrokenIcon({
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
    name: 'align-bottom',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10 21L22 21M2 21L6 21" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 9L5 14.5C5 15.4346 5 15.9019 5.20096 16.25C5.33261 16.478 5.52197 16.6674 5.75 16.799C6.09808 17 6.56538 17 7.5 17C8.43462 17 8.90192 17 9.25 16.799C9.47803 16.6674 9.66739 16.478 9.79904 16.25C10 15.9019 10 15.4346 10 14.5L10 5.5C10 4.56538 10 4.09808 9.79904 3.75C9.66739 3.52197 9.47803 3.33261 9.25 3.20096C8.90192 3 8.43462 3 7.5 3C6.56538 3 6.09808 3 5.75 3.20096C5.52197 3.33261 5.33261 3.52197 5.20096 3.75C5.03954 4.0296 5.00778 4.38613 5.00153 5" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 17C15.5654 17 15.0981 17 14.75 16.799C14.522 16.6674 14.3326 16.478 14.201 16.25C14 15.9019 14 15.4346 14 14.5L14 8.5C14 7.56538 14 7.09808 14.201 6.75C14.3326 6.52197 14.522 6.33261 14.75 6.20096C15.0981 6 15.5654 6 16.5 6C17.4346 6 17.9019 6 18.25 6.20096C18.478 6.33261 18.6674 6.52197 18.799 6.75C19 7.09808 19 7.56538 19 8.5L19 14.5C19 15.4346 19 15.9019 18.799 16.25C18.6674 16.478 18.478 16.6674 18.25 16.799C17.9019 17 17.4346 17 16.5 17Z" stroke="currentColor" stroke-linecap="round"/>''',
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
