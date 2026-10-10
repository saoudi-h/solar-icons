// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `reel-2` icon in every style.
///
/// Prefer the static widgets (e.g. `Reel2LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Reel2Icon extends StatelessWidget {
  /// Creates the `reel-2` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const Reel2Icon({
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
    name: 'reel-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 14.25C10.7574 14.25 9.75 13.2426 9.75 12C9.75 10.7574 10.7574 9.75 12 9.75C13.2426 9.75 14.25 10.7574 14.25 12C14.25 13.2426 13.2426 14.25 12 14.25Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 15.5887 20.1097 18.7358 17.2704 20.5H21.25C21.6642 20.5 22 20.8358 22 21.25C22 21.6642 21.6642 22 21.25 22H12ZM13 5.5C13 4.94772 12.5523 4.5 12 4.5C11.4477 4.5 11 4.94772 11 5.5C11 6.05228 11.4477 6.5 12 6.5C12.5523 6.5 13 6.05228 13 5.5ZM6.5 12C6.5 12.5523 6.05228 13 5.5 13C4.94772 13 4.5 12.5523 4.5 12C4.5 11.4477 4.94772 11 5.5 11C6.05228 11 6.5 11.4477 6.5 12ZM19.5 12C19.5 12.5523 19.0523 13 18.5 13C17.9477 13 17.5 12.5523 17.5 12C17.5 11.4477 17.9477 11 18.5 11C19.0523 11 19.5 11.4477 19.5 12ZM12 17.5C12.5523 17.5 13 17.9477 13 18.5C13 19.0523 12.5523 19.5 12 19.5C11.4477 19.5 11 19.0523 11 18.5C11 17.9477 11.4477 17.5 12 17.5ZM8.25 12C8.25 14.0711 9.92893 15.75 12 15.75C14.0711 15.75 15.75 14.0711 15.75 12C15.75 9.92893 14.0711 8.25 12 8.25C9.92893 8.25 8.25 9.92893 8.25 12Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'reel-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 15.75C9.92893 15.75 8.25 14.0711 8.25 12C8.25 9.92893 9.92893 8.25 12 8.25C14.0711 8.25 15.75 9.92893 15.75 12C15.75 14.0711 14.0711 15.75 12 15.75Z" fill="currentColor"/>
<path d="M5.5 13C6.05228 13 6.5 12.5523 6.5 12C6.5 11.4477 6.05228 11 5.5 11C4.94772 11 4.5 11.4477 4.5 12C4.5 12.5523 4.94772 13 5.5 13Z" fill="currentColor"/>
<path d="M12 4.5C12.5523 4.5 13 4.94772 13 5.5C13 6.05228 12.5523 6.5 12 6.5C11.4477 6.5 11 6.05228 11 5.5C11 4.94772 11.4477 4.5 12 4.5Z" fill="currentColor"/>
<path d="M13 18.5C13 17.9477 12.5523 17.5 12 17.5C11.4477 17.5 11 17.9477 11 18.5C11 19.0523 11.4477 19.5 12 19.5C12.5523 19.5 13 19.0523 13 18.5Z" fill="currentColor"/>
<path d="M18.5 13C19.0523 13 19.5 12.5523 19.5 12C19.5 11.4477 19.0523 11 18.5 11C17.9477 11 17.5 11.4477 17.5 12C17.5 12.5523 17.9477 13 18.5 13Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 17.5228 6.47715 22 12 22H21.25C21.6642 22 22 21.6642 22 21.25C22 20.8358 21.6642 20.5 21.25 20.5H17.2704C20.1097 18.7358 22 15.5887 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'reel-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 22L22 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 9C13.6569 9 15 10.3431 15 12C15 13.6569 13.6569 15 12 15C10.3431 15 9 13.6569 9 12C9 10.3431 10.3431 9 12 9Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 5.5H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.5 12H18.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 18.5H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.5 12H5.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'reel-2',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22L22 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 9C13.6569 9 15 10.3431 15 12C15 13.6569 13.6569 15 12 15C10.3431 15 9 13.6569 9 12C9 10.3431 10.3431 9 12 9Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 5.5H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.5 12H18.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 18.5H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.5 12H5.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'reel-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 5.5H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.5 12H18.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 18.5H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.5 12H5.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22L22 22" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 9C13.6569 9 15 10.3431 15 12C15 13.6569 13.6569 15 12 15C10.3431 15 9 13.6569 9 12C9 10.3431 10.3431 9 12 9Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'reel-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM17.4805 21.25C20.6354 19.3767 22.75 15.9353 22.75 12C22.75 6.06294 17.9371 1.25 12 1.25C6.06294 1.25 1.25 6.06294 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75H22C22.4142 22.75 22.75 22.4142 22.75 22C22.75 21.5858 22.4142 21.25 22 21.25H17.4805ZM12 9.75C10.7574 9.75 9.75 10.7574 9.75 12C9.75 13.2426 10.7574 14.25 12 14.25C13.2426 14.25 14.25 13.2426 14.25 12C14.25 10.7574 13.2426 9.75 12 9.75ZM8.25 12C8.25 9.92893 9.92893 8.25 12 8.25C14.0711 8.25 15.75 9.92893 15.75 12C15.75 14.0711 14.0711 15.75 12 15.75C9.92893 15.75 8.25 14.0711 8.25 12Z" fill="currentColor"/>
<path d="M19.5 12C19.5 12.5523 19.0523 13 18.5 13C17.9477 13 17.5 12.5523 17.5 12C17.5 11.4477 17.9477 11 18.5 11C19.0523 11 19.5 11.4477 19.5 12Z" fill="currentColor"/>
<path d="M6.5 12C6.5 12.5523 6.05228 13 5.5 13C4.94772 13 4.5 12.5523 4.5 12C4.5 11.4477 4.94772 11 5.5 11C6.05228 11 6.5 11.4477 6.5 12Z" fill="currentColor"/>
<path d="M12 4.5C12.5523 4.5 13 4.94772 13 5.5C13 6.05228 12.5523 6.5 12 6.5C11.4477 6.5 11 6.05228 11 5.5C11 4.94772 11.4477 4.5 12 4.5Z" fill="currentColor"/>
<path d="M12 17.5C12.5523 17.5 13 17.9477 13 18.5C13 19.0523 12.5523 19.5 12 19.5C11.4477 19.5 11 19.0523 11 18.5C11 17.9477 11.4477 17.5 12 17.5Z" fill="currentColor"/>''',
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
