// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-5-seconds-back` icon in every style.
///
/// Prefer the static widgets (e.g. `Rewind5SecondsBackLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Rewind5SecondsBackIcon extends StatelessWidget {
  /// Creates the `rewind-5-seconds-back` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const Rewind5SecondsBackIcon({
    super.key,
    this.style = SolarIconStyle.linear,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw.
  final SolarIconStyle style;

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

  static const bold = SolarIconData(
    name: 'rewind-5-seconds-back',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 1.25C12.7353 1.25 13.4544 1.32376 14.1494 1.46484C19.0565 2.461 22.75 6.79843 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12C1.25 7.59065 3.90507 3.80269 7.7002 2.14453C8.07965 1.97907 8.52173 2.15283 8.6875 2.53223C8.85302 2.91169 8.67922 3.35376 8.2998 3.51953C5.03156 4.9477 2.75 8.20825 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 7.84953 18.5158 4.33582 14.75 3.16504V4.5C14.75 4.81852 14.5486 5.10258 14.248 5.20801C13.9476 5.31328 13.613 5.21739 13.4141 4.96875L11.4141 2.46875C11.234 2.24362 11.1993 1.93465 11.3242 1.6748C11.4492 1.41514 11.7118 1.25 12 1.25Z" fill="currentColor"/>
<path d="M14 7.75C14.4142 7.75 14.75 8.08579 14.75 8.5C14.75 8.91421 14.4142 9.25 14 9.25H11.541L11.041 10.75H12C13.5188 10.75 14.75 11.9812 14.75 13.5C14.75 15.0188 13.5188 16.25 12 16.25H10C9.58579 16.25 9.25 15.9142 9.25 15.5C9.25 15.0858 9.58579 14.75 10 14.75H12C12.6904 14.75 13.25 14.1904 13.25 13.5C13.25 12.8096 12.6904 12.25 12 12.25H10.6934C9.84035 12.2498 9.23805 11.4138 9.50781 10.6045L10.1748 8.60449C10.345 8.09423 10.8224 7.75001 11.3604 7.75H14Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'rewind-5-seconds-back',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.1745 8.60472C10.3447 8.09429 10.8223 7.75 11.3604 7.75H14C14.4142 7.75 14.75 8.08579 14.75 8.5C14.75 8.91421 14.4142 9.25 14 9.25H11.5406L11.0406 10.75H12C13.5188 10.75 14.75 11.9812 14.75 13.5C14.75 15.0188 13.5188 16.25 12 16.25H10C9.58579 16.25 9.25 15.9142 9.25 15.5C9.25 15.0858 9.58579 14.75 10 14.75H12C12.6904 14.75 13.25 14.1904 13.25 13.5C13.25 12.8096 12.6904 12.25 12 12.25H10.6937C9.84052 12.25 9.23805 11.4141 9.50786 10.6047L10.1745 8.60472Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M11.324 1.67511C11.4489 1.41526 11.7117 1.25 12 1.25C12.7353 1.25 13.4541 1.32394 14.1492 1.46503C19.0563 2.46112 22.75 6.79837 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12C1.25 7.59065 3.90459 3.80298 7.69972 2.14482C8.07929 1.97898 8.52143 2.15224 8.68726 2.53181C8.8531 2.91137 8.67984 3.35351 8.30028 3.51935C5.03179 4.94742 2.75 8.20808 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 7.84953 18.5158 4.33622 14.75 3.16544V4.5C14.75 4.81852 14.5488 5.10229 14.2483 5.20772C13.9477 5.31315 13.6133 5.21724 13.4143 4.96852L11.4143 2.46852C11.2342 2.24339 11.1991 1.93496 11.324 1.67511Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'rewind-5-seconds-back',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M14 4.5L12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C8.7288 22 5.82446 20.4293 4 18.001M8 2.83209C6.87754 3.32251 5.86251 4.01303 5 4.85857C3.14864 6.67349 2 9.20261 2 12C2 12.6849 2.06886 13.3538 2.20004 14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14 8.5H11.3604C11.1452 8.5 10.9541 8.63772 10.886 8.84189L10.2194 10.8419C10.1114 11.1657 10.3524 11.5 10.6937 11.5H12C13.1046 11.5 14 12.3954 14 13.5C14 14.6046 13.1046 15.5 12 15.5H10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'rewind-5-seconds-back',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M14 4.5L12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 7.89936 4.46819 4.3752 8 2.83209" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14 8.5H11.3604C11.1452 8.5 10.9541 8.63772 10.886 8.84189L10.2194 10.8419C10.1114 11.1657 10.3524 11.5 10.6937 11.5H12C13.1046 11.5 14 12.3954 14 13.5C14 14.6046 13.1046 15.5 12 15.5H10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'rewind-5-seconds-back',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14 8.5H11.3604C11.1452 8.5 10.9541 8.63772 10.886 8.84189L10.2194 10.8419C10.1114 11.1657 10.3524 11.5 10.6937 11.5H12C13.1046 11.5 14 12.3954 14 13.5C14 14.6046 13.1046 15.5 12 15.5H10" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M14 4.5L12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 7.89936 4.46819 4.3752 8 2.83209" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'rewind-5-seconds-back',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.324 1.67511C11.4489 1.41526 11.7117 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12C1.25 7.59065 3.90459 3.80298 7.69972 2.14482C8.07929 1.97898 8.52143 2.15224 8.68726 2.53181C8.8531 2.91137 8.67984 3.35351 8.30028 3.51935C5.03179 4.94742 2.75 8.20808 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 7.46598 17.9879 3.69386 13.6826 2.90266L14.5857 4.03148C14.8444 4.35493 14.792 4.82689 14.4685 5.08565C14.1451 5.34441 13.6731 5.29197 13.4143 4.96852L11.4143 2.46852C11.2342 2.24339 11.1991 1.93496 11.324 1.67511ZM10.1745 8.60472C10.3447 8.09429 10.8223 7.75 11.3604 7.75H14C14.4142 7.75 14.75 8.08579 14.75 8.5C14.75 8.91421 14.4142 9.25 14 9.25H11.5406L11.0406 10.75H12C13.5188 10.75 14.75 11.9812 14.75 13.5C14.75 15.0188 13.5188 16.25 12 16.25H10C9.58579 16.25 9.25 15.9142 9.25 15.5C9.25 15.0858 9.58579 14.75 10 14.75H12C12.6904 14.75 13.25 14.1904 13.25 13.5C13.25 12.8096 12.6904 12.25 12 12.25H10.6937C9.84052 12.25 9.23805 11.4141 9.50786 10.6047L10.1745 8.60472ZM10.9309 11.0791L10.931 11.0787L10.9309 11.0791Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => switch (style) {
    SolarIconStyle.bold => bold,
    SolarIconStyle.boldDuotone => boldDuotone,
    SolarIconStyle.broken => broken,
    SolarIconStyle.linear => linear,
    SolarIconStyle.lineDuotone => lineDuotone,
    SolarIconStyle.outline => outline,
  };

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
