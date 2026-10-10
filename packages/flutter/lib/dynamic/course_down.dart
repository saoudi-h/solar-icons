// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `course-down` icon in every style.
///
/// Prefer the static widgets (e.g. `CourseDownLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class CourseDownIcon extends StatelessWidget {
  /// Creates the `course-down` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const CourseDownIcon({
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
    name: 'course-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M1.46856 6.47078C1.76084 6.17728 2.23571 6.17628 2.52922 6.46856L6.44789 10.3708C6.96167 10.8825 7.29478 11.2119 7.57219 11.4228C7.83228 11.6205 7.95393 11.6426 8.03449 11.6426C8.11506 11.6427 8.23672 11.6206 8.49695 11.4231C8.77452 11.2125 9.10787 10.8833 9.62203 10.372L9.89627 10.0993C10.3651 9.63304 10.7692 9.23116 11.1362 8.9526C11.5297 8.654 11.9668 8.42808 12.505 8.42802C13.0432 8.42796 13.4804 8.65377 13.8739 8.95229C14.241 9.23077 14.6452 9.63256 15.1142 10.0987L21.25 16.1971V12.4542C21.25 12.04 21.5858 11.7042 22 11.7042C22.4142 11.7042 22.75 12.04 22.75 12.4542V18C22.75 18.4142 22.4142 18.75 22 18.75H16.4179C16.0036 18.75 15.6679 18.4142 15.6679 18C15.6679 17.5858 16.0036 17.25 16.4179 17.25H20.1815L14.0916 11.1973C13.5778 10.6866 13.2447 10.3577 12.9673 10.1473C12.7073 9.95006 12.5857 9.92801 12.5052 9.92802C12.4247 9.92803 12.3031 9.95011 12.0431 10.1474C11.7658 10.3579 11.4327 10.6868 10.919 11.1976L10.6448 11.4704C10.1755 11.937 9.77105 12.3393 9.40375 12.618C9.01003 12.9168 8.57254 13.1428 8.03395 13.1426C7.49535 13.1424 7.05802 12.9161 6.66452 12.617C6.29742 12.338 5.89326 11.9355 5.42433 11.4685C5.41275 11.4569 5.40112 11.4453 5.38945 11.4337L1.47078 7.53144C1.17728 7.23916 1.17628 6.76429 1.46856 6.47078Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'course-down',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M15.668 18C15.668 18.4142 16.0038 18.75 16.418 18.75H22.0001C22.4143 18.75 22.7501 18.4142 22.7501 18V12.4542C22.7501 12.0399 22.4143 11.7042 22.0001 11.7042C21.5859 11.7042 21.2501 12.0399 21.2501 12.4542V17.25H16.418C16.0038 17.25 15.668 17.5858 15.668 18Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.1873 17.25L14.0916 11.1973C13.5778 10.6866 13.2447 10.3577 12.9673 10.1473C12.7073 9.95006 12.5857 9.92801 12.5052 9.92802C12.4247 9.92803 12.3031 9.95011 12.0431 10.1474C11.7658 10.3579 11.4327 10.6868 10.919 11.1976L10.6448 11.4704C10.1755 11.937 9.77105 12.3393 9.40375 12.618C9.01003 12.9168 8.57254 13.1428 8.03395 13.1426C7.49535 13.1424 7.05802 12.9161 6.66452 12.617C6.29742 12.338 5.89326 11.9355 5.42433 11.4685L1.47078 7.53144C1.17728 7.23916 1.17628 6.76429 1.46856 6.47078C1.76084 6.17728 2.23571 6.17628 2.52922 6.46856L6.44789 10.3708C6.96167 10.8825 7.29478 11.2119 7.57219 11.4228C7.83228 11.6205 7.95393 11.6426 8.03449 11.6426C8.11506 11.6427 8.23672 11.6206 8.49695 11.4231C8.77452 11.2125 9.10787 10.8833 9.62203 10.372L9.89627 10.0993C10.3651 9.63304 10.7692 9.23116 11.1362 8.9526C11.5297 8.654 11.9668 8.42808 12.505 8.42802C13.0432 8.42796 13.4804 8.65377 13.8739 8.95229C14.241 9.23077 14.6452 9.63256 15.1142 10.0987L21.2501 16.1914V17.25H20.1873Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'course-down',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M14.6203 10.6653C13.6227 9.67375 13.1238 9.17795 12.5051 9.17802C11.8864 9.17809 11.3876 9.674 10.3902 10.6658L10.1509 10.9038C9.15254 11.8965 8.65338 12.3929 8.03422 12.3926C7.41506 12.3924 6.91626 11.8957 5.91867 10.9023L2 7M16.4179 18H22V12.4542M22 18L17.5 13.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'course-down',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 18L14.6203 10.6653C13.6227 9.67375 13.1238 9.17795 12.5051 9.17802C11.8864 9.17809 11.3876 9.674 10.3902 10.6658L10.1509 10.9038C9.15254 11.8965 8.65338 12.3929 8.03422 12.3926C7.41506 12.3924 6.91626 11.8957 5.91867 10.9023L2 7M16.4179 18H22V12.4542" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'course-down',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22.0001 12.4542V18H16.418" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 18L14.6203 10.6653C13.6227 9.67375 13.1238 9.17795 12.5051 9.17802C11.8864 9.17809 11.3876 9.674 10.3902 10.6658L10.1509 10.9038C9.15254 11.8965 8.65338 12.3929 8.03422 12.3926C7.41506 12.3924 6.91626 11.8957 5.91867 10.9023L2 7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'course-down',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M1.46856 6.47078C1.76084 6.17728 2.23571 6.17628 2.52922 6.46856L6.44789 10.3708C6.96167 10.8825 7.29478 11.2119 7.57219 11.4228C7.83228 11.6205 7.95393 11.6426 8.03449 11.6426C8.11506 11.6427 8.23672 11.6206 8.49695 11.4231C8.77452 11.2125 9.10787 10.8833 9.62203 10.372L9.89627 10.0993C10.3651 9.63304 10.7692 9.23116 11.1362 8.9526C11.5297 8.654 11.9668 8.42808 12.505 8.42802C13.0432 8.42796 13.4804 8.65377 13.8739 8.95229C14.241 9.23077 14.6452 9.63256 15.1142 10.0987L21.25 16.1971V12.4542C21.25 12.04 21.5858 11.7042 22 11.7042C22.4142 11.7042 22.75 12.04 22.75 12.4542V18C22.75 18.4142 22.4142 18.75 22 18.75H16.4179C16.0036 18.75 15.6679 18.4142 15.6679 18C15.6679 17.5858 16.0036 17.25 16.4179 17.25H20.1815L14.0916 11.1973C13.5778 10.6866 13.2447 10.3577 12.9673 10.1473C12.7073 9.95006 12.5857 9.92801 12.5052 9.92802C12.4247 9.92803 12.3031 9.95011 12.0431 10.1474C11.7658 10.3579 11.4327 10.6868 10.919 11.1976L10.6448 11.4704C10.1755 11.937 9.77105 12.3393 9.40375 12.618C9.01003 12.9168 8.57254 13.1428 8.03395 13.1426C7.49535 13.1424 7.05802 12.9161 6.66452 12.617C6.29742 12.338 5.89326 11.9355 5.42433 11.4685C5.41275 11.4569 5.40112 11.4453 5.38945 11.4337L1.47078 7.53144C1.17728 7.23916 1.17628 6.76429 1.46856 6.47078Z" fill="currentColor"/>''',
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
