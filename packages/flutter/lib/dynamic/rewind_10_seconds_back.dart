// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-10-seconds-back` icon in every style.
///
/// Prefer the static widgets (e.g. `Rewind10SecondsBackLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Rewind10SecondsBackIcon extends StatelessWidget {
  /// Creates the `rewind-10-seconds-back` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const Rewind10SecondsBackIcon({
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
    name: 'rewind-10-seconds-back',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 1.25C12.7353 1.25 13.4544 1.32376 14.1494 1.46484C19.0565 2.461 22.75 6.79843 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12C1.25 7.59065 3.90507 3.80269 7.7002 2.14453C8.07965 1.97907 8.52173 2.15283 8.6875 2.53223C8.85302 2.91169 8.67922 3.35376 8.2998 3.51953C5.03156 4.9477 2.75 8.20825 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 7.84953 18.5158 4.33582 14.75 3.16504V4.5C14.75 4.81852 14.5486 5.10258 14.248 5.20801C13.9476 5.31328 13.613 5.21739 13.4141 4.96875L11.4141 2.46875C11.234 2.24362 11.1993 1.93465 11.3242 1.6748C11.4492 1.41514 11.7118 1.25 12 1.25Z" fill="currentColor"/>
<path d="M9.53125 7.91406C9.75638 7.73396 10.0653 7.69933 10.3252 7.82422C10.5849 7.94917 10.75 8.21181 10.75 8.5V15.5C10.75 15.9142 10.4142 16.25 10 16.25C9.5858 16.25 9.25 15.9142 9.25 15.5V10.0605L7.96875 11.0859C7.6453 11.3447 7.17282 11.2922 6.91406 10.9688C6.65532 10.6453 6.70782 10.1728 7.03125 9.91406L9.53125 7.91406Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M14.25 7.75C15.6307 7.75 16.75 8.86929 16.75 10.25V13.75C16.75 15.1307 15.6307 16.25 14.25 16.25C12.8693 16.25 11.75 15.1307 11.75 13.75V10.25C11.75 8.8693 12.8693 7.75001 14.25 7.75ZM14.25 9.25C13.6977 9.25002 13.25 9.69773 13.25 10.25V13.75C13.25 14.3023 13.6977 14.75 14.25 14.75C14.8023 14.75 15.25 14.3023 15.25 13.75V10.25C15.25 9.69772 14.8023 9.25 14.25 9.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'rewind-10-seconds-back',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.3249 7.82403C10.5848 7.94892 10.75 8.2117 10.75 8.50001V15.5C10.75 15.9142 10.4142 16.25 10 16.25C9.58581 16.25 9.25003 15.9142 9.25003 15.5V10.0605L7.96855 11.0857C7.6451 11.3444 7.17313 11.292 6.91438 10.9685C6.65562 10.6451 6.70806 10.1731 7.03151 9.91436L9.53151 7.91436C9.75663 7.73425 10.0651 7.69914 10.3249 7.82403Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M14.25 7.75001C12.8693 7.75001 11.75 8.8693 11.75 10.25V13.75C11.75 15.1307 12.8693 16.25 14.25 16.25C15.6307 16.25 16.75 15.1307 16.75 13.75V10.25C16.75 8.8693 15.6307 7.75001 14.25 7.75001ZM14.25 9.25001C13.6977 9.25001 13.25 9.69772 13.25 10.25V13.75C13.25 14.3023 13.6977 14.75 14.25 14.75C14.8023 14.75 15.25 14.3023 15.25 13.75V10.25C15.25 9.69772 14.8023 9.25001 14.25 9.25001Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M11.324 1.67511C11.4489 1.41526 11.7117 1.25 12 1.25C12.7353 1.25 13.4541 1.32394 14.1492 1.46503C19.0563 2.46112 22.75 6.79837 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12C1.25 7.59065 3.90459 3.80298 7.69972 2.14482C8.07929 1.97898 8.52143 2.15224 8.68726 2.53181C8.8531 2.91137 8.67984 3.35351 8.30028 3.51935C5.03179 4.94742 2.75 8.20808 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 7.84953 18.5158 4.33622 14.75 3.16544V4.5C14.75 4.81852 14.5488 5.10229 14.2483 5.20772C13.9477 5.31315 13.6133 5.21724 13.4143 4.96852L11.4143 2.46852C11.2342 2.24339 11.1991 1.93496 11.324 1.67511Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'rewind-10-seconds-back',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7.5 10.5L10 8.5V15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12.5 13.75V10.25C12.5 9.2835 13.2835 8.5 14.25 8.5C15.2165 8.5 16 9.2835 16 10.25V13.75C16 14.7165 15.2165 15.5 14.25 15.5C13.2835 15.5 12.5 14.7165 12.5 13.75Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 4.5L12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C8.7288 22 5.82446 20.4293 4 18.001M8 2.83209C6.87754 3.32251 5.86251 4.01303 5 4.85857C3.14864 6.67349 2 9.20261 2 12C2 12.6849 2.06886 13.3538 2.20004 14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'rewind-10-seconds-back',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M14 4.5L12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 7.89936 4.46819 4.3752 8 2.83209" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7.5 10.5L10 8.5V15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12.5 13.75V10.25C12.5 9.2835 13.2835 8.5 14.25 8.5C15.2165 8.5 16 9.2835 16 10.25V13.75C16 14.7165 15.2165 15.5 14.25 15.5C13.2835 15.5 12.5 14.7165 12.5 13.75Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'rewind-10-seconds-back',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M7.5 10.5L10 8.5V15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12.5 13.75V10.25C12.5 9.2835 13.2835 8.5 14.25 8.5C15.2165 8.5 16 9.2835 16 10.25V13.75C16 14.7165 15.2165 15.5 14.25 15.5C13.2835 15.5 12.5 14.7165 12.5 13.75Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M14 4.5L12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 7.89936 4.46819 4.3752 8 2.83209" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'rewind-10-seconds-back',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.324 1.67511C11.4489 1.41526 11.7117 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12C1.25 7.59065 3.90459 3.80298 7.69972 2.14482C8.07929 1.97898 8.52143 2.15224 8.68726 2.53181C8.8531 2.91137 8.67984 3.35351 8.30028 3.51935C5.03179 4.94742 2.75 8.20808 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 7.46598 17.9879 3.69386 13.6826 2.90266L14.5857 4.03148C14.8444 4.35493 14.792 4.82689 14.4685 5.08565C14.1451 5.34441 13.6731 5.29197 13.4143 4.96852L11.4143 2.46852C11.2342 2.24339 11.1991 1.93496 11.324 1.67511ZM10.3249 7.82402C10.5847 7.94891 10.75 8.2117 10.75 8.5V15.5C10.75 15.9142 10.4142 16.25 10 16.25C9.58579 16.25 9.25 15.9142 9.25 15.5V10.0605L7.96852 11.0857C7.64507 11.3444 7.17311 11.292 6.91435 10.9685C6.65559 10.6451 6.70803 10.1731 7.03148 9.91435L9.53148 7.91435C9.75661 7.73425 10.065 7.69913 10.3249 7.82402ZM14.25 9.25C13.6977 9.25 13.25 9.69772 13.25 10.25V13.75C13.25 14.3023 13.6977 14.75 14.25 14.75C14.8023 14.75 15.25 14.3023 15.25 13.75V10.25C15.25 9.69772 14.8023 9.25 14.25 9.25ZM11.75 10.25C11.75 8.86929 12.8693 7.75 14.25 7.75C15.6307 7.75 16.75 8.86929 16.75 10.25V13.75C16.75 15.1307 15.6307 16.25 14.25 16.25C12.8693 16.25 11.75 15.1307 11.75 13.75V10.25Z" fill="currentColor"/>''',
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
