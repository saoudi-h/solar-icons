// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `restart` icon in every style.
///
/// Prefer the static widgets (e.g. `RestartLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class RestartIcon extends StatelessWidget {
  /// Creates the `restart` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const RestartIcon({
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
    name: 'restart',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M18.2577 3.50828C18.538 3.62437 18.7207 3.89785 18.7207 4.20119V8.44383C18.7207 8.85805 18.3849 9.19383 17.9707 9.19383H13.728C13.4247 9.19383 13.1512 9.0111 13.0351 8.73085C12.9191 8.45059 12.9832 8.128 13.1977 7.9135L14.8007 6.3105C12.1674 5.20912 9.01606 5.7309 6.87348 7.87348C4.04217 10.7048 4.04217 15.2952 6.87348 18.1265C9.70478 20.9578 14.2952 20.9578 17.1265 18.1265C18.7727 16.4803 19.4622 14.2401 19.1935 12.0937C19.142 11.6827 19.4335 11.3078 19.8445 11.2563C20.2555 11.2049 20.6304 11.4963 20.6819 11.9073C21.0057 14.4934 20.1746 17.1997 18.1872 19.1872C14.7701 22.6043 9.2299 22.6043 5.81282 19.1872C2.39573 15.7701 2.39573 10.2299 5.81282 6.81282C8.55119 4.07444 12.6515 3.5312 15.9309 5.18028L17.4404 3.67086C17.6549 3.45637 17.9774 3.3922 18.2577 3.50828Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'restart',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M18.7212 4.20119C18.7212 3.89785 18.5384 3.62437 18.2582 3.50828C17.9779 3.3922 17.6553 3.45637 17.4408 3.67086L15.9314 5.18028L14.8012 6.3105L13.1982 7.9135C12.9837 8.128 12.9195 8.45059 13.0356 8.73085C13.1517 9.0111 13.4252 9.19383 13.7285 9.19383H17.9712C18.3854 9.19383 18.7212 8.85805 18.7212 8.44383V4.20119Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M6.87348 7.87338C9.01606 5.7308 12.1674 5.20902 14.8007 6.31041L15.9309 5.18019C12.6515 3.53111 8.55119 4.07435 5.81282 6.81272C2.39573 10.2298 2.39573 15.77 5.81282 19.1871C9.2299 22.6042 14.7701 22.6042 18.1872 19.1871C20.1746 17.1997 21.0057 14.4933 20.6819 11.9072C20.6304 11.4962 20.2555 11.2048 19.8445 11.2562C19.4335 11.3077 19.142 11.6826 19.1935 12.0936C19.4622 14.24 18.7727 16.4802 17.1265 18.1264C14.2952 20.9577 9.70478 20.9577 6.87348 18.1264C4.04217 15.2951 4.04217 10.7047 6.87348 7.87338Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'restart',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M19.7285 10.9277C20.4413 13.5967 19.7507 16.5624 17.6569 18.6562C15.1798 21.1333 11.4826 21.6464 8.5 20.1955" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.364 8.04928L17.6569 7.34217M14.1214 8.04928H18.364V3.80664" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.75374 17.9995C3.23316 14.8583 3.42963 10.2567 6.34315 7.34315C9.46734 4.21895 14.5327 4.21895 17.6569 7.34315" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'restart',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M18.364 8.04928L17.6569 7.34217C14.5327 4.21798 9.46734 4.21798 6.34315 7.34217C3.21895 10.4664 3.21895 15.5317 6.34315 18.6559C9.46734 21.7801 14.5327 21.7801 17.6569 18.6559C19.4737 16.8391 20.234 14.3658 19.9377 11.9995M18.364 3.80664V8.04928H14.1213" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'restart',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14.1211 8.04928H18.3637L18.3637 3.80664" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.3637 8.05025L17.6566 7.34315C14.5324 4.21895 9.4671 4.21895 6.3429 7.34315C3.21871 10.4673 3.21871 15.5327 6.3429 18.6569C9.4671 21.781 14.5324 21.781 17.6566 18.6569C19.4734 16.84 20.2337 14.3668 19.9374 12.0005" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'restart',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M18.364 3.05664C18.7782 3.05664 19.114 3.39243 19.114 3.80664V8.04928C19.114 8.46349 18.7782 8.79928 18.364 8.79928H14.1213C13.7071 8.79928 13.3713 8.46349 13.3713 8.04928C13.3713 7.63507 13.7071 7.29928 14.1213 7.29928H16.4817C13.6363 5.0562 9.4987 5.24728 6.87348 7.8725C4.04217 10.7038 4.04217 15.2943 6.87348 18.1256C9.70478 20.9569 14.2952 20.9569 17.1265 18.1256C19.0234 16.2287 19.6504 13.5418 19.0039 11.1209C18.897 10.7207 19.1348 10.3097 19.535 10.2028C19.9352 10.0959 20.3462 10.3337 20.4531 10.7339C21.2321 13.6508 20.478 16.8954 18.1872 19.1862C14.7701 22.6033 9.2299 22.6033 5.81282 19.1862C2.39573 15.7691 2.39573 10.2289 5.81282 6.81184C9.04483 3.57983 14.1762 3.40478 17.614 6.2867V3.80664C17.614 3.39243 17.9497 3.05664 18.364 3.05664Z" fill="currentColor"/>''',
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
