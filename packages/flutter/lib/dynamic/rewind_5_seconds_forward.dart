// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-5-seconds-forward` icon in every style.
///
/// Prefer the static widgets (e.g. `Rewind5SecondsForwardLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Rewind5SecondsForwardIcon extends StatelessWidget {
  /// Creates the `rewind-5-seconds-forward` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const Rewind5SecondsForwardIcon({
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
    name: 'rewind-5-seconds-forward',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 1.25C12.2882 1.25 12.5508 1.41514 12.6758 1.6748C12.8007 1.93465 12.766 2.24362 12.5859 2.46875L10.5859 4.96875C10.387 5.21739 10.0524 5.31328 9.75195 5.20801C9.45139 5.10258 9.25 4.81852 9.25 4.5V3.16504C5.48421 4.33582 2.75 7.84953 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 8.20825 18.9684 4.9477 15.7002 3.51953C15.3208 3.35376 15.147 2.91169 15.3125 2.53223C15.4783 2.15283 15.9204 1.97907 16.2998 2.14453C20.0949 3.80269 22.75 7.59065 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12C1.25 6.79843 4.94354 2.461 9.85059 1.46484C10.5456 1.32376 11.2647 1.25 12 1.25Z" fill="currentColor"/>
<path d="M14 7.75C14.4142 7.75 14.75 8.08579 14.75 8.5C14.75 8.91421 14.4142 9.25 14 9.25H11.541L11.041 10.75H12C13.5188 10.75 14.75 11.9812 14.75 13.5C14.75 15.0188 13.5188 16.25 12 16.25H10C9.58579 16.25 9.25 15.9142 9.25 15.5C9.25 15.0858 9.58579 14.75 10 14.75H12C12.6904 14.75 13.25 14.1904 13.25 13.5C13.25 12.8096 12.6904 12.25 12 12.25H10.6934C9.84035 12.2498 9.23805 11.4138 9.50781 10.6045L10.1748 8.60449C10.345 8.09423 10.8224 7.75001 11.3604 7.75H14Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'rewind-5-seconds-forward',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.1745 8.60472C10.3447 8.09429 10.8223 7.75 11.3604 7.75H14C14.4142 7.75 14.75 8.08579 14.75 8.5C14.75 8.91421 14.4142 9.25 14 9.25H11.5406L11.0406 10.75H12C13.5188 10.75 14.75 11.9812 14.75 13.5C14.75 15.0188 13.5188 16.25 12 16.25H10C9.58579 16.25 9.25 15.9142 9.25 15.5C9.25 15.0858 9.58579 14.75 10 14.75H12C12.6904 14.75 13.25 14.1904 13.25 13.5C13.25 12.8096 12.6904 12.25 12 12.25H10.6937C9.84052 12.25 9.23805 11.4141 9.50786 10.6047L10.1745 8.60472Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M12.676 1.67511C12.5511 1.41526 12.2883 1.25 12 1.25C11.2647 1.25 10.5459 1.32394 9.8508 1.46503C4.94367 2.46112 1.25 6.79837 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 7.59065 20.0954 3.80298 16.3003 2.14482C15.9207 1.97898 15.4786 2.15224 15.3127 2.53181C15.1469 2.91137 15.3202 3.35351 15.6997 3.51935C18.9682 4.94742 21.25 8.20808 21.25 12C21.25 17.1086 17.1086 21.25 12 21.25C6.89137 21.25 2.75 17.1086 2.75 12C2.75 7.84953 5.48421 4.33622 9.25 3.16544V4.5C9.25 4.81852 9.45118 5.10229 9.75175 5.20772C10.0523 5.31315 10.3867 5.21724 10.5857 4.96852L12.5857 2.46852C12.7658 2.24339 12.8009 1.93496 12.676 1.67511Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'rewind-5-seconds-forward',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10 4.5L12 2C6.47715 2 2 6.47715 2 12C2 12.6849 2.06886 13.3538 2.20004 14M16 2.83209C19.5318 4.3752 22 7.89936 22 12C22 17.5228 17.5228 22 12 22C8.72852 22 5.82443 20.4287 4 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14 8.5H11.3604C11.1452 8.5 10.9541 8.63772 10.886 8.84189L10.2194 10.8419C10.1114 11.1657 10.3524 11.5 10.6937 11.5H12C13.1046 11.5 14 12.3954 14 13.5C14 14.6046 13.1046 15.5 12 15.5H10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'rewind-5-seconds-forward',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M10 4.5L12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 7.89936 19.5318 4.3752 16 2.83209" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14 8.5H11.3604C11.1452 8.5 10.9541 8.63772 10.886 8.84189L10.2194 10.8419C10.1114 11.1657 10.3524 11.5 10.6937 11.5H12C13.1046 11.5 14 12.3954 14 13.5C14 14.6046 13.1046 15.5 12 15.5H10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'rewind-5-seconds-forward',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14 8.5H11.3604C11.1452 8.5 10.9541 8.63772 10.886 8.84189L10.2194 10.8419C10.1114 11.1657 10.3524 11.5 10.6937 11.5H12C13.1046 11.5 14 12.3954 14 13.5C14 14.6046 13.1046 15.5 12 15.5H10" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M10 4.5L12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 7.89936 19.5318 4.3752 16 2.83209" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'rewind-5-seconds-forward',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C12.2883 1.25 12.5511 1.41526 12.676 1.67511C12.8009 1.93496 12.7658 2.24339 12.5857 2.46852L10.5857 4.96852C10.3269 5.29197 9.85493 5.34441 9.53148 5.08565C9.20803 4.82689 9.15559 4.35493 9.41435 4.03148L10.3174 2.90266C6.01213 3.69386 2.75 7.46598 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 8.20808 18.9682 4.94742 15.6997 3.51935C15.3202 3.35351 15.1469 2.91137 15.3127 2.53181C15.4786 2.15224 15.9207 1.97898 16.3003 2.14482C20.0954 3.80298 22.75 7.59065 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM10.1745 8.60472C10.3447 8.09429 10.8223 7.75 11.3604 7.75H14C14.4142 7.75 14.75 8.08579 14.75 8.5C14.75 8.91421 14.4142 9.25 14 9.25H11.5406L11.0406 10.75H12C13.5188 10.75 14.75 11.9812 14.75 13.5C14.75 15.0188 13.5188 16.25 12 16.25H10C9.58579 16.25 9.25 15.9142 9.25 15.5C9.25 15.0858 9.58579 14.75 10 14.75H12C12.6904 14.75 13.25 14.1904 13.25 13.5C13.25 12.8096 12.6904 12.25 12 12.25H10.6937C9.84052 12.25 9.23805 11.4141 9.50786 10.6047L10.1745 8.60472ZM10.9309 11.0791L10.931 11.0787L10.9309 11.0791Z" fill="currentColor"/>''',
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
