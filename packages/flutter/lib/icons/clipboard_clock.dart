// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `clipboard-clock` icon.
class ClipboardClockIcon extends StatelessWidget {
  /// Creates the `clipboard-clock` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const ClipboardClockIcon({
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

  /// When true, ignores [SolarTheme] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'clipboard-clock',
    style: SolarIconStyle.bold,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 9.75293C14.3472 9.75293 16.25 11.6557 16.25 14.0029C16.25 16.3501 14.3472 18.2529 12 18.2529C9.65279 18.2529 7.75 16.3501 7.75 14.0029C7.75 11.6557 9.65279 9.75293 12 9.75293ZM12 11.2529C11.5858 11.2529 11.25 11.5887 11.25 12.0029V13.8486C11.25 14.029 11.3155 14.2035 11.4336 14.3398L12.4336 15.4941C12.7049 15.807 13.1783 15.8406 13.4912 15.5693C13.8041 15.298 13.8376 14.8247 13.5664 14.5117L12.75 13.5693V12.0029C12.75 11.5887 12.4142 11.2529 12 11.2529Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M17.5 4.03613C18.7578 4.1067 19.5518 4.30773 20.1211 4.87695C20.9998 5.75561 21 7.16976 21 9.99805V15.998C21 18.8264 20.9997 20.2405 20.1211 21.1191C19.2424 21.9978 17.8284 21.998 15 21.998H9C6.17157 21.998 4.75759 21.9978 3.87891 21.1191C3.00033 20.2405 3 18.8264 3 15.998V9.99805C3 7.16976 3.00025 5.75561 3.87891 4.87695C4.4482 4.30773 5.24217 4.1067 6.5 4.03613V4.5C6.5 6.15685 7.84315 7.5 9.5 7.5H14.5C16.1569 7.5 17.5 6.15685 17.5 4.5V4.03613ZM12 8.25293C8.82436 8.25293 6.25 10.8273 6.25 14.0029C6.25 17.1786 8.82436 19.7529 12 19.7529C15.1756 19.7529 17.75 17.1786 17.75 14.0029C17.75 10.8273 15.1756 8.25293 12 8.25293Z" fill="currentColor"/>
<path d="M14.5 2C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5C8 2.67157 8.67157 2 9.5 2H14.5Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'clipboard-clock',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path d="M12 11.2529C12.4142 11.2529 12.75 11.5887 12.75 12.0029V13.5693L13.5664 14.5117C13.8376 14.8247 13.8041 15.298 13.4912 15.5693C13.1783 15.8406 12.7049 15.807 12.4336 15.4941L11.4336 14.3398C11.3155 14.2035 11.25 14.029 11.25 13.8486V12.0029C11.25 11.5887 11.5858 11.2529 12 11.2529Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 8.25293C15.1756 8.25293 17.75 10.8273 17.75 14.0029C17.75 17.1786 15.1756 19.7529 12 19.7529C8.82436 19.7529 6.25 17.1786 6.25 14.0029C6.25 10.8273 8.82436 8.25293 12 8.25293ZM12 9.75293C9.65279 9.75293 7.75 11.6557 7.75 14.0029C7.75 16.3501 9.65279 18.2529 12 18.2529C14.3472 18.2529 16.25 16.3501 16.25 14.0029C16.25 11.6557 14.3472 9.75293 12 9.75293Z" fill="currentColor"/>
<path d="M14.5 2C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5C8 2.67157 8.67157 2 9.5 2H14.5Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" d="M21 15.9983V9.99826C21 7.16983 21 5.75562 20.1213 4.87694C19.3529 4.10856 18.175 4.01211 16 4H8C5.82497 4.01211 4.64706 4.10856 3.87868 4.87694C3 5.75562 3 7.16983 3 9.99826V15.9983C3 18.8267 3 20.2409 3.87868 21.1196C4.75736 21.9983 6.17157 21.9983 9 21.9983H15C17.8284 21.9983 19.2426 21.9983 20.1213 21.1196C21 20.2409 21 18.8267 21 15.9983Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'clipboard-clock',
    style: SolarIconStyle.broken,
    body: r'''<path d="M8 3.5C8 2.67157 8.67157 2 9.5 2H14.5C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5Z" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="14.0029" r="5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 12.0029V13.8491L13 15.0029" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M21 16.0002C21 18.8286 21 20.2429 20.1213 21.1215C19.2426 22.0002 17.8284 22.0002 15 22.0002H9C6.17157 22.0002 4.75736 22.0002 3.87868 21.1215C3 20.2429 3 18.8286 3 16.0002V13.0002M16 4.00195C18.175 4.01406 19.3529 4.11051 20.1213 4.87889C21 5.75757 21 7.17179 21 10.0002V12.0002M8 4.00195C5.82497 4.01406 4.64706 4.11051 3.87868 4.87889C3.11032 5.64725 3.01385 6.82511 3.00174 9" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'clipboard-clock',
    style: SolarIconStyle.linear,
    body: r'''<path d="M16 4.00195C18.175 4.01406 19.3529 4.11051 20.1213 4.87889C21 5.75757 21 7.17179 21 10.0002V16.0002C21 18.8286 21 20.2429 20.1213 21.1215C19.2426 22.0002 17.8284 22.0002 15 22.0002H9C6.17157 22.0002 4.75736 22.0002 3.87868 21.1215C3 20.2429 3 18.8286 3 16.0002V10.0002C3 7.17179 3 5.75757 3.87868 4.87889C4.64706 4.11051 5.82497 4.01406 8 4.00195" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 3.5C8 2.67157 8.67157 2 9.5 2H14.5C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5Z" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="14.0029" r="5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 12.0029V13.8491L13 15.0029" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'clipboard-clock',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M8 3.5C8 2.67157 8.67157 2 9.5 2H14.5C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5Z" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="14.0029" r="5" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<path opacity="0.5" d="M16 4.00195C18.175 4.01406 19.3529 4.11051 20.1213 4.87889C21 5.75757 21 7.17179 21 10.0002V16.0002C21 18.8286 21 20.2429 20.1213 21.1215C19.2426 22.0002 17.8284 22.0002 15 22.0002H9C6.17157 22.0002 4.75736 22.0002 3.87868 21.1215C3 20.2429 3 18.8286 3 16.0002V10.0002C3 7.17179 3 5.75757 3.87868 4.87889C4.64706 4.11051 5.82497 4.01406 8 4.00195" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 12.0029V13.8491L13 15.0029" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'clipboard-clock',
    style: SolarIconStyle.outline,
    body: r'''<path d="M2.25 16V10C2.25 8.60709 2.2481 7.48689 2.36621 6.6084C2.48723 5.7083 2.74672 4.95054 3.34863 4.34863C3.87355 3.82377 4.51842 3.55817 5.27637 3.41895C6.01292 3.28366 6.91459 3.25797 7.9961 3.25195L8.00391 4.75195C6.91055 4.75804 6.13508 4.78649 5.54688 4.89453C4.98044 4.99864 4.65256 5.16585 4.40918 5.40918C4.13242 5.68594 3.95217 6.07482 3.85352 6.80859C3.752 7.56388 3.75 8.56483 3.75 10V16C3.75 17.4354 3.75196 18.437 3.85352 19.1924C3.95217 19.9258 4.13252 20.3141 4.40918 20.5908C4.68594 20.8676 5.07482 21.0488 5.8086 21.1475C6.56389 21.2489 7.56491 21.25 9 21.25H15C16.4351 21.25 17.4361 21.2489 18.1914 21.1475C18.9252 21.0488 19.3141 20.8676 19.5908 20.5908C19.8675 20.3141 20.0478 19.9258 20.1465 19.1924C20.248 18.437 20.25 17.4354 20.25 16V10C20.25 8.56483 20.248 7.56388 20.1465 6.80859C20.0478 6.07482 19.8676 5.68594 19.5908 5.40918C19.3474 5.16585 19.0196 4.99864 18.4531 4.89453C17.8649 4.78649 17.0895 4.75804 15.9961 4.75195L16.0039 3.25195C17.0854 3.25797 17.9871 3.28366 18.7236 3.41895C19.4816 3.55817 20.1265 3.82377 20.6514 4.34863C21.2533 4.95054 21.5128 5.7083 21.6338 6.6084C21.7519 7.48689 21.75 8.60709 21.75 10V16C21.75 17.3928 21.7519 18.5131 21.6338 19.3916C21.5128 20.2917 21.2533 21.0504 20.6514 21.6523C20.0495 22.254 19.2915 22.5128 18.3916 22.6338C17.5131 22.7519 16.3929 22.75 15 22.75H9C7.60708 22.75 6.48691 22.7519 5.6084 22.6338C4.70848 22.5128 3.95049 22.254 3.34863 21.6523C2.74672 21.0504 2.48723 20.2917 2.36621 19.3916C2.24815 18.5131 2.25 17.3928 2.25 16Z" fill="currentColor"/>
<path d="M15.25 3.5C15.25 3.08579 14.9142 2.75 14.5 2.75H9.5C9.08579 2.75 8.75 3.08579 8.75 3.5V4.5C8.75 4.91421 9.08579 5.25 9.5 5.25H14.5C14.9142 5.25 15.25 4.91421 15.25 4.5V3.5ZM16.75 4.5C16.75 5.74264 15.7426 6.75 14.5 6.75H9.5C8.25736 6.75 7.25 5.74264 7.25 4.5V3.5C7.25 2.25736 8.25736 1.25 9.5 1.25H14.5C15.7426 1.25 16.75 2.25736 16.75 3.5V4.5Z" fill="currentColor"/>
<path d="M16.25 14.0029C16.25 11.6557 14.3472 9.75293 12 9.75293C9.65279 9.75293 7.75 11.6557 7.75 14.0029C7.75 16.3501 9.65279 18.2529 12 18.2529C14.3472 18.2529 16.25 16.3501 16.25 14.0029ZM17.75 14.0029C17.75 17.1786 15.1756 19.7529 12 19.7529C8.82436 19.7529 6.25 17.1786 6.25 14.0029C6.25 10.8273 8.82436 8.25293 12 8.25293C15.1756 8.25293 17.75 10.8273 17.75 14.0029Z" fill="currentColor"/>
<path d="M11.25 12.0029C11.25 11.5887 11.5858 11.2529 12 11.2529C12.4142 11.2529 12.75 11.5887 12.75 12.0029V13.5693L13.5664 14.5117C13.8376 14.8247 13.8041 15.298 13.4912 15.5693C13.1783 15.8406 12.7049 15.807 12.4336 15.4941L11.4336 14.3398C11.3155 14.2035 11.25 14.029 11.25 13.8486V12.0029Z" fill="currentColor"/>''',
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
