// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-10-seconds-forward` icon in every style.
///
/// Prefer the static widgets (e.g. `Rewind10SecondsForwardLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Rewind10SecondsForwardIcon extends StatelessWidget {
  /// Creates the `rewind-10-seconds-forward` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const Rewind10SecondsForwardIcon({
    super.key,
    this.style,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw. Falls back to [SolarProvider] (unless [isolated]), then [SolarIconStyle.linear].
  final SolarIconStyle? style;

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
    name: 'rewind-10-seconds-forward',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 1.25C12.2882 1.25 12.5508 1.41514 12.6758 1.6748C12.8007 1.93465 12.766 2.24362 12.5859 2.46875L10.5859 4.96875C10.387 5.21739 10.0524 5.31328 9.75195 5.20801C9.45139 5.10258 9.25 4.81852 9.25 4.5V3.16504C5.48421 4.33582 2.75 7.84953 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 8.20825 18.9684 4.9477 15.7002 3.51953C15.3208 3.35376 15.147 2.91169 15.3125 2.53223C15.4783 2.15283 15.9204 1.97907 16.2998 2.14453C20.0949 3.80269 22.75 7.59065 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12C1.25 6.79843 4.94354 2.461 9.85059 1.46484C10.5456 1.32376 11.2647 1.25 12 1.25Z" fill="currentColor"/>
<path d="M9.53125 7.91406C9.75638 7.73396 10.0653 7.69933 10.3252 7.82422C10.5849 7.94917 10.75 8.21181 10.75 8.5V15.5C10.75 15.9142 10.4142 16.25 10 16.25C9.5858 16.25 9.25 15.9142 9.25 15.5V10.0605L7.96875 11.0859C7.6453 11.3447 7.17282 11.2922 6.91406 10.9688C6.65532 10.6453 6.70782 10.1728 7.03125 9.91406L9.53125 7.91406Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M14.25 7.75C15.6307 7.75 16.75 8.86929 16.75 10.25V13.75C16.75 15.1307 15.6307 16.25 14.25 16.25C12.8693 16.25 11.75 15.1307 11.75 13.75V10.25C11.75 8.8693 12.8693 7.75001 14.25 7.75ZM14.25 9.25C13.6977 9.25002 13.25 9.69773 13.25 10.25V13.75C13.25 14.3023 13.6977 14.75 14.25 14.75C14.8023 14.75 15.25 14.3023 15.25 13.75V10.25C15.25 9.69772 14.8023 9.25 14.25 9.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'rewind-10-seconds-forward',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.3249 7.82403C10.5848 7.94892 10.75 8.2117 10.75 8.50001V15.5C10.75 15.9142 10.4142 16.25 10 16.25C9.58581 16.25 9.25003 15.9142 9.25003 15.5V10.0605L7.96855 11.0857C7.6451 11.3444 7.17313 11.292 6.91438 10.9685C6.65562 10.6451 6.70806 10.1731 7.03151 9.91436L9.53151 7.91436C9.75663 7.73425 10.0651 7.69914 10.3249 7.82403Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M14.25 7.75001C12.8693 7.75001 11.75 8.8693 11.75 10.25V13.75C11.75 15.1307 12.8693 16.25 14.25 16.25C15.6307 16.25 16.75 15.1307 16.75 13.75V10.25C16.75 8.8693 15.6307 7.75001 14.25 7.75001ZM14.25 9.25001C13.6977 9.25001 13.25 9.69772 13.25 10.25V13.75C13.25 14.3023 13.6977 14.75 14.25 14.75C14.8023 14.75 15.25 14.3023 15.25 13.75V10.25C15.25 9.69772 14.8023 9.25001 14.25 9.25001Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M12.676 1.67511C12.5511 1.41526 12.2883 1.25 12 1.25C11.2647 1.25 10.5459 1.32394 9.8508 1.46503C4.94367 2.46112 1.25 6.79837 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 7.59065 20.0954 3.80298 16.3003 2.14482C15.9207 1.97898 15.4786 2.15224 15.3127 2.53181C15.1469 2.91137 15.3202 3.35351 15.6997 3.51935C18.9682 4.94742 21.25 8.20808 21.25 12C21.25 17.1086 17.1086 21.25 12 21.25C6.89137 21.25 2.75 17.1086 2.75 12C2.75 7.84953 5.48421 4.33622 9.25 3.16544V4.5C9.25 4.81852 9.45118 5.10229 9.75175 5.20772C10.0523 5.31315 10.3867 5.21724 10.5857 4.96852L12.5857 2.46852C12.7658 2.24339 12.8009 1.93496 12.676 1.67511Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'rewind-10-seconds-forward',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7.5 10.5L10 8.5V15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12.5 13.75V10.25C12.5 9.2835 13.2835 8.5 14.25 8.5C15.2165 8.5 16 9.2835 16 10.25V13.75C16 14.7165 15.2165 15.5 14.25 15.5C13.2835 15.5 12.5 14.7165 12.5 13.75Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 4.5L12 2C6.47715 2 2 6.47715 2 12C2 12.6849 2.06886 13.3538 2.20004 14M16 2.83209C19.5318 4.3752 22 7.89936 22 12C22 17.5228 17.5228 22 12 22C8.72852 22 5.82443 20.4287 4 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'rewind-10-seconds-forward',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M10 4.5L12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 7.89936 19.5318 4.3752 16 2.83209" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7.5 10.5L10 8.5V15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12.5 13.75V10.25C12.5 9.2835 13.2835 8.5 14.25 8.5C15.2165 8.5 16 9.2835 16 10.25V13.75C16 14.7165 15.2165 15.5 14.25 15.5C13.2835 15.5 12.5 14.7165 12.5 13.75Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'rewind-10-seconds-forward',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M7.5 10.5L10 8.5V15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12.5 13.75V10.25C12.5 9.2835 13.2835 8.5 14.25 8.5C15.2165 8.5 16 9.2835 16 10.25V13.75C16 14.7165 15.2165 15.5 14.25 15.5C13.2835 15.5 12.5 14.7165 12.5 13.75Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M10 4.5L12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 7.89936 19.5318 4.3752 16 2.83209" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'rewind-10-seconds-forward',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C12.2883 1.25 12.5511 1.41526 12.676 1.67511C12.8009 1.93496 12.7658 2.24339 12.5857 2.46852L10.5857 4.96852C10.3269 5.29197 9.85493 5.34441 9.53148 5.08565C9.20803 4.82689 9.15559 4.35493 9.41435 4.03148L10.3174 2.90266C6.01213 3.69386 2.75 7.46598 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 8.20808 18.9682 4.94742 15.6997 3.51935C15.3202 3.35351 15.1469 2.91137 15.3127 2.53181C15.4786 2.15224 15.9207 1.97898 16.3003 2.14482C20.0954 3.80298 22.75 7.59065 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM10.3249 7.82402C10.5847 7.94891 10.75 8.2117 10.75 8.5V15.5C10.75 15.9142 10.4142 16.25 10 16.25C9.58579 16.25 9.25 15.9142 9.25 15.5V10.0605L7.96852 11.0857C7.64507 11.3444 7.17311 11.292 6.91435 10.9685C6.65559 10.6451 6.70803 10.1731 7.03148 9.91435L9.53148 7.91435C9.75661 7.73425 10.065 7.69913 10.3249 7.82402ZM14.25 9.25C13.6977 9.25 13.25 9.69772 13.25 10.25V13.75C13.25 14.3023 13.6977 14.75 14.25 14.75C14.8023 14.75 15.25 14.3023 15.25 13.75V10.25C15.25 9.69772 14.8023 9.25 14.25 9.25ZM11.75 10.25C11.75 8.86929 12.8693 7.75 14.25 7.75C15.6307 7.75 16.75 8.86929 16.75 10.25V13.75C16.75 15.1307 15.6307 16.25 14.25 16.25C12.8693 16.25 11.75 15.1307 11.75 13.75V10.25Z" fill="currentColor"/>''',
  );

  @override
  Widget build(BuildContext context) {
    final SolarIconStyle fallback = isolated
        ? SolarIconStyle.linear
        : SolarProvider.maybeOf(context)?.style ?? SolarIconStyle.linear;
    final SolarIconData data = switch (style ?? fallback) {
      SolarIconStyle.bold => bold,
      SolarIconStyle.boldDuotone => boldDuotone,
      SolarIconStyle.broken => broken,
      SolarIconStyle.linear => linear,
      SolarIconStyle.lineDuotone => lineDuotone,
      SolarIconStyle.outline => outline,
    };
    return SolarIcon(
      data,
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
