// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `facemask-circle` icon in every style.
///
/// Prefer the static widgets (e.g. `FacemaskCircleLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class FacemaskCircleIcon extends StatelessWidget {
  /// Creates the `facemask-circle` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const FacemaskCircleIcon({
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
    name: 'facemask-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M21.8239 13.8782L17.712 15.5226L17.3321 20.4614C19.6316 19.0093 21.298 16.6457 21.8239 13.8782Z" fill="currentColor"/>
<path d="M15.7657 21.2667L16.21 15.4914L13.5784 14.4387C12.5652 14.0334 11.4348 14.0334 10.4216 14.4387L7.79004 15.4914L8.23427 21.2667C9.39657 21.7395 10.6679 22 12 22C13.3321 22 14.6034 21.7395 15.7657 21.2667Z" fill="currentColor"/>
<path d="M6.66789 20.4614L6.28929 15.5392L2.21174 14.0568C2.77423 16.7473 4.41806 19.0406 6.66789 20.4614Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M21.9982 12.193C21.9994 12.1288 22 12.0645 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 12.1294 2.00246 12.2582 2.00733 12.3864L6.98724 14.1969L9.8645 13.046C11.2354 12.4977 12.7646 12.4977 14.1355 13.046L17 14.1918L21.9982 12.193ZM16 10.5C16 11.3284 15.5523 12 15 12C14.4477 12 14 11.3284 14 10.5C14 9.67157 14.4477 9 15 9C15.5523 9 16 9.67157 16 10.5ZM9 12C9.55228 12 10 11.3284 10 10.5C10 9.67157 9.55228 9 9 9C8.44772 9 8 9.67157 8 10.5C8 11.3284 8.44772 12 9 12Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'facemask-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.4219 14.4385C11.4349 14.0334 12.5651 14.0334 13.5781 14.4385L16.21 15.4912L15.7656 21.2666C14.6033 21.7394 13.3321 22 12 22C10.6679 22 9.39666 21.7394 8.23438 21.2666L7.79004 15.4912L10.4219 14.4385Z" fill="currentColor"/>
<path d="M6.28906 15.5391L6.66797 20.4609C4.41824 19.0402 2.77442 16.7471 2.21191 14.0566L6.28906 15.5391Z" fill="currentColor"/>
<path d="M21.8242 13.8779C21.2983 16.6455 19.6315 19.0088 17.332 20.4609L17.7119 15.5225L21.8242 13.8779Z" fill="currentColor"/>
<path d="M9 9C9.55228 9 10 9.67157 10 10.5C10 11.3284 9.55228 12 9 12C8.44772 12 8 11.3284 8 10.5C8 9.67157 8.44772 9 9 9Z" fill="currentColor"/>
<path d="M15 9C15.5523 9 16 9.67157 16 10.5C16 11.3284 15.5523 12 15 12C14.4477 12 14 11.3284 14 10.5C14 9.67157 14.4477 9 15 9Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M21.9982 12.193C21.9994 12.1288 22 12.0645 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 12.1294 2.00246 12.2582 2.00733 12.3864L6.98724 14.1969L9.8645 13.046C11.2354 12.4977 12.7646 12.4977 14.1355 13.046L17 14.1918L21.9982 12.193Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'facemask-circle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M16.5 20.4996L17 14.9996L13.857 13.7424C12.6649 13.2656 11.3351 13.2656 10.143 13.7424L7 14.9996L7.5 20.4996" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 15L2.5 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 15L21.5 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 10.5C15.5 11.0523 15.2761 11.5 15 11.5C14.7239 11.5 14.5 11.0523 14.5 10.5C14.5 9.94772 14.7239 9.5 15 9.5C15.2761 9.5 15.5 9.94772 15.5 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="10.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'facemask-circle',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 20.4996L17 14.9996L13.857 13.7424C12.6649 13.2656 11.3351 13.2656 10.143 13.7424L7 14.9996L7.5 20.4996" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 15L2.5 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 15L21.5 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 10.5C15.5 11.0523 15.2761 11.5 15 11.5C14.7239 11.5 14.5 11.0523 14.5 10.5C14.5 9.94772 14.7239 9.5 15 9.5C15.2761 9.5 15.5 9.94772 15.5 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="10.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'facemask-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M16.5 20.4996L17 14.9996L13.857 13.7424C12.6649 13.2656 11.3351 13.2656 10.143 13.7424L7 14.9996L7.5 20.4996" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 15L2.5 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 15L21.5 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 10.5C15.5 11.0523 15.2761 11.5 15 11.5C14.7239 11.5 14.5 11.0523 14.5 10.5C14.5 9.94772 14.7239 9.5 15 9.5C15.2761 9.5 15.5 9.94772 15.5 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="10.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'facemask-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 12.0985 2.75154 12.1967 2.7546 12.2945C2.77137 12.3006 2.78805 12.3073 2.8046 12.3146L7.01535 14.1861L9.8645 13.0464C11.2354 12.4981 12.7646 12.4981 14.1355 13.0464L16.9846 14.1861L21.1954 12.3146C21.212 12.3073 21.2286 12.3006 21.2454 12.2945C21.2485 12.1967 21.25 12.0985 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM21.0263 14.0313L17.707 15.5065L17.339 19.5545C19.1761 18.2539 20.5179 16.3 21.0263 14.0313ZM15.7512 20.4578C15.7517 20.4492 15.7523 20.4407 15.7531 20.4321L16.2025 15.4888L13.5784 14.4391C12.5652 14.0338 11.4348 14.0338 10.4216 14.4391L7.79753 15.4888L8.24692 20.4321C8.2477 20.4407 8.24833 20.4492 8.24882 20.4578C9.39532 20.967 10.6646 21.25 12 21.25C13.3354 21.25 14.6047 20.967 15.7512 20.4578ZM6.66096 19.5545L6.29295 15.5065L2.97374 14.0313C3.48209 16.3 4.82393 18.2539 6.66096 19.5545ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12Z" fill="currentColor"/>
<path d="M16 10.5C16 11.3284 15.5523 12 15 12C14.4477 12 14 11.3284 14 10.5C14 9.67157 14.4477 9 15 9C15.5523 9 16 9.67157 16 10.5Z" fill="currentColor"/>
<path d="M10 10.5C10 11.3284 9.55229 12 9 12C8.44772 12 8 11.3284 8 10.5C8 9.67157 8.44772 9 9 9C9.55229 9 10 9.67157 10 10.5Z" fill="currentColor"/>''',
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
