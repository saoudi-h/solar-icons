// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `clipboard-copy` icon in every style.
///
/// Prefer the static widgets (e.g. `ClipboardCopyLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ClipboardCopyIcon extends StatelessWidget {
  /// Creates the `clipboard-copy` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const ClipboardCopyIcon({
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
    name: 'clipboard-copy',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.5 4.03613C18.7578 4.1067 19.5518 4.30773 20.1211 4.87695C20.9998 5.75561 21 7.16976 21 9.99805V15.998C21 18.8264 20.9997 20.2405 20.1211 21.1191C19.2424 21.9978 17.8284 21.998 15 21.998H9C6.17157 21.998 4.75759 21.9978 3.87891 21.1191C3.00033 20.2405 3 18.8264 3 15.998V9.99805C3 7.16976 3.00025 5.75561 3.87891 4.87695C4.4482 4.30773 5.24217 4.1067 6.5 4.03613V4.5C6.5 6.15685 7.84315 7.5 9.5 7.5H14.5C16.1569 7.5 17.5 6.15685 17.5 4.5V4.03613ZM12.0303 10.9697C11.7374 10.6768 11.2626 10.6768 10.9697 10.9697L8.46973 13.4697L8.37598 13.584C8.29446 13.7063 8.25 13.8509 8.25 14C8.25002 14.1989 8.32909 14.3896 8.46973 14.5303L10.9697 17.0303C11.2626 17.3231 11.7374 17.3231 12.0303 17.0303C12.3232 16.7374 12.3231 16.2626 12.0303 15.9697L10.8105 14.75H15C15.4142 14.75 15.75 14.4142 15.75 14C15.75 13.5858 15.4142 13.25 15 13.25H10.8105L12.0303 12.0303C12.3232 11.7374 12.3231 11.2626 12.0303 10.9697Z" fill="currentColor"/>
<path d="M14.5 2C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5C8 2.67157 8.67157 2 9.5 2H14.5Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'clipboard-copy',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.9697 10.9697C11.2626 10.6768 11.7374 10.6768 12.0303 10.9697C12.3231 11.2626 12.3232 11.7374 12.0303 12.0303L10.8105 13.25H15C15.4142 13.25 15.75 13.5858 15.75 14C15.75 14.4142 15.4142 14.75 15 14.75H10.8105L12.0303 15.9697C12.3231 16.2626 12.3232 16.7374 12.0303 17.0303C11.7374 17.3231 11.2626 17.3231 10.9697 17.0303L8.46973 14.5303C8.32909 14.3896 8.25002 14.1989 8.25 14C8.25 13.8509 8.29446 13.7063 8.37598 13.584L8.46973 13.4697L10.9697 10.9697Z" fill="currentColor"/>
<path d="M14.5 2C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5C8 2.67157 8.67157 2 9.5 2H14.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M21 15.9983V9.99826C21 7.16983 21 5.75562 20.1213 4.87694C19.3529 4.10856 18.175 4.01211 16 4H8C5.82497 4.01211 4.64706 4.10856 3.87868 4.87694C3 5.75562 3 7.16983 3 9.99826V15.9983C3 18.8267 3 20.2409 3.87868 21.1196C4.75736 21.9983 6.17157 21.9983 9 21.9983H15C17.8284 21.9983 19.2426 21.9983 20.1213 21.1196C21 20.2409 21 18.8267 21 15.9983Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'clipboard-copy',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8 3.5C8 2.67157 8.67157 2 9.5 2H14.5C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 14L9 14M11.5 11.5L9 14L11.5 16.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M21 16.0002C21 18.8286 21 20.2429 20.1213 21.1215C19.2426 22.0002 17.8284 22.0002 15 22.0002H9C6.17157 22.0002 4.75736 22.0002 3.87868 21.1215C3 20.2429 3 18.8286 3 16.0002V13.0002M16 4.00195C18.175 4.01406 19.3529 4.11051 20.1213 4.87889C21 5.75757 21 7.17179 21 10.0002V12.0002M8 4.00195C5.82497 4.01406 4.64706 4.11051 3.87868 4.87889C3.11032 5.64725 3.01385 6.82511 3.00174 9" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'clipboard-copy',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M16 4.00195C18.175 4.01406 19.3529 4.11051 20.1213 4.87889C21 5.75757 21 7.17179 21 10.0002V16.0002C21 18.8286 21 20.2429 20.1213 21.1215C19.2426 22.0002 17.8284 22.0002 15 22.0002H9C6.17157 22.0002 4.75736 22.0002 3.87868 21.1215C3 20.2429 3 18.8286 3 16.0002V10.0002C3 7.17179 3 5.75757 3.87868 4.87889C4.64706 4.11051 5.82497 4.01406 8 4.00195" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 3.5C8 2.67157 8.67157 2 9.5 2H14.5C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 14L9 14M11.5 11.5L9 14L11.5 16.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'clipboard-copy',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 3.5C8 2.67157 8.67157 2 9.5 2H14.5C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 14L9 14M11.5 11.5L9 14L11.5 16.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16 4.00195C18.175 4.01406 19.3529 4.11051 20.1213 4.87889C21 5.75757 21 7.17179 21 10.0002V16.0002C21 18.8286 21 20.2429 20.1213 21.1215C19.2426 22.0002 17.8284 22.0002 15 22.0002H9C6.17157 22.0002 4.75736 22.0002 3.87868 21.1215C3 20.2429 3 18.8286 3 16.0002V10.0002C3 7.17179 3 5.75757 3.87868 4.87889C4.64706 4.11051 5.82497 4.01406 8 4.00195" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'clipboard-copy',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M2.25 16V10C2.25 8.60709 2.2481 7.48689 2.36621 6.6084C2.48723 5.7083 2.74672 4.95054 3.34863 4.34863C3.87355 3.82377 4.51842 3.55817 5.27637 3.41895C6.01292 3.28366 6.91459 3.25797 7.9961 3.25195L8.00391 4.75195C6.91055 4.75804 6.13508 4.78649 5.54688 4.89453C4.98044 4.99864 4.65256 5.16585 4.40918 5.40918C4.13242 5.68594 3.95217 6.07482 3.85352 6.80859C3.752 7.56388 3.75 8.56483 3.75 10V16C3.75 17.4354 3.75196 18.437 3.85352 19.1924C3.95217 19.9258 4.13252 20.3141 4.40918 20.5908C4.68594 20.8676 5.07482 21.0488 5.8086 21.1475C6.56389 21.2489 7.56491 21.25 9 21.25H15C16.4351 21.25 17.4361 21.2489 18.1914 21.1475C18.9252 21.0488 19.3141 20.8676 19.5908 20.5908C19.8675 20.3141 20.0478 19.9258 20.1465 19.1924C20.248 18.437 20.25 17.4354 20.25 16V10C20.25 8.56483 20.248 7.56388 20.1465 6.80859C20.0478 6.07482 19.8676 5.68594 19.5908 5.40918C19.3474 5.16585 19.0196 4.99864 18.4531 4.89453C17.8649 4.78649 17.0895 4.75804 15.9961 4.75195L16.0039 3.25195C17.0854 3.25797 17.9871 3.28366 18.7236 3.41895C19.4816 3.55817 20.1265 3.82377 20.6514 4.34863C21.2533 4.95054 21.5128 5.7083 21.6338 6.6084C21.7519 7.48689 21.75 8.60709 21.75 10V16C21.75 17.3928 21.7519 18.5131 21.6338 19.3916C21.5128 20.2917 21.2533 21.0504 20.6514 21.6523C20.0495 22.254 19.2915 22.5128 18.3916 22.6338C17.5131 22.7519 16.3929 22.75 15 22.75H9C7.60708 22.75 6.48691 22.7519 5.6084 22.6338C4.70848 22.5128 3.95049 22.254 3.34863 21.6523C2.74672 21.0504 2.48723 20.2917 2.36621 19.3916C2.24815 18.5131 2.25 17.3928 2.25 16Z" fill="currentColor"/>
<path d="M15.25 3.5C15.25 3.08579 14.9142 2.75 14.5 2.75H9.5C9.08579 2.75 8.75 3.08579 8.75 3.5V4.5C8.75 4.91421 9.08579 5.25 9.5 5.25H14.5C14.9142 5.25 15.25 4.91421 15.25 4.5V3.5ZM16.75 4.5C16.75 5.74264 15.7426 6.75 14.5 6.75H9.5C8.25736 6.75 7.25 5.74264 7.25 4.5V3.5C7.25 2.25736 8.25736 1.25 9.5 1.25H14.5C15.7426 1.25 16.75 2.25736 16.75 3.5V4.5Z" fill="currentColor"/>
<path d="M15 13.25H10.8105L12.0303 12.0303C12.3232 11.7374 12.3232 11.2626 12.0303 10.9697C11.7374 10.6768 11.2626 10.6768 10.9697 10.9697L8.46973 13.4697L8.37598 13.584C8.29445 13.7063 8.25 13.8508 8.25 14C8.25 14.1989 8.32908 14.3896 8.46973 14.5303L10.9697 17.0303C11.2626 17.3232 11.7374 17.3232 12.0303 17.0303C12.3232 16.7374 12.3232 16.2626 12.0303 15.9697L10.8105 14.75H15C15.4142 14.75 15.75 14.4142 15.75 14C15.75 13.5858 15.4142 13.25 15 13.25Z" fill="currentColor"/>''',
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
