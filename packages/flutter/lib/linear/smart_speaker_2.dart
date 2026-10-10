// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `smart-speaker-2` icon in the linear style.
class SmartSpeaker2LinearIcon extends StatelessWidget {
  /// Creates the `smart-speaker-2` icon in the linear style.
  const SmartSpeaker2LinearIcon({
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
    name: 'smart-speaker-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M18.0849 3.68959L18.8825 14.4404C19.0377 17.1794 19.1153 18.5489 18.6162 19.5882C18.2472 20.3564 17.6678 20.9943 16.9506 21.4218C15.9804 22 14.6588 22 12.0156 22C9.34227 22 8.00563 22 7.02989 21.413C6.3088 20.9793 5.72853 20.3324 5.36308 19.5549C4.86856 18.5028 4.9638 17.1189 5.15426 14.351L5.86204 6.3551M18.0477 3.43536C18.4224 4.88725 16.0049 6.82114 12.648 7.75482C9.29106 8.6885 6.2659 8.26841 5.89111 6.81651C5.51633 5.36462 7.93384 3.43073 11.2908 2.49705C14.6477 1.56337 17.6729 1.98346 18.0477 3.43536Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.24609 13.3087C5.80507 13.8701 7.49022 14.9997 11.9996 14.9997C16.6277 14.9997 18.2809 13.8098 18.7949 13.2656" stroke="currentColor" stroke-linecap="round"/>''',
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
