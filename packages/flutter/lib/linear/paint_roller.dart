// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `paint-roller` icon in the linear style.
class PaintRollerLinearIcon extends StatelessWidget {
  /// Creates the `paint-roller` icon in the linear style.
  const PaintRollerLinearIcon({
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
    name: 'paint-roller',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M6 4.5C6 3.56538 6 3.09808 6.20096 2.75C6.33261 2.52197 6.52197 2.33261 6.75 2.20096C7.09808 2 7.56538 2 8.5 2H15.5C16.4346 2 16.9019 2 17.25 2.20096C17.478 2.33261 17.6674 2.52197 17.799 2.75C18 3.09808 18 3.56538 18 4.5M6 4.5C6 5.43462 6 5.90192 6.20096 6.25C6.33261 6.47803 6.52197 6.66739 6.75 6.79904C7.09808 7 7.56538 7 8.5 7H15.5C16.4346 7 16.9019 7 17.25 6.79904C17.478 6.66739 17.6674 6.47803 17.799 6.25C18 5.90192 18 5.43462 18 4.5M6 4.5H5.5M18 4.5H19.0449C19.9347 4.5 20.3795 4.5 20.7327 4.63903C21.249 4.84232 21.6577 5.25099 21.861 5.76733C22 6.12047 22 6.56535 22 7.4551C22 8.232 22 8.62044 21.8858 8.94369C21.719 9.41611 21.3809 9.8087 20.9384 10.0438C20.6357 10.2046 20.2516 10.2623 19.4833 10.3775L15.4066 10.989C13.7816 11.2328 12.969 11.3546 12.4845 11.9173C12.1033 12.3599 12.022 12.9628 12.0047 14H12M12 14C12.9428 14 13.4142 14 13.7071 14.2929C14 14.5858 14 15.0572 14 16V20C14 20.9428 14 21.4142 13.7071 21.7071C13.4142 22 12.9428 22 12 22C11.0572 22 10.5858 22 10.2929 21.7071C10 21.4142 10 20.9428 10 20V16C10 15.0572 10 14.5858 10.2929 14.2929C10.5858 14 11.0572 14 12 14Z" stroke="currentColor" stroke-linecap="round"/>''',
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
