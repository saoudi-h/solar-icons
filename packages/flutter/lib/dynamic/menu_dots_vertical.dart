// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `menu-dots-vertical` icon in every style.
///
/// Prefer the static widgets (e.g. `MenuDotsVerticalLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class MenuDotsVerticalIcon extends StatelessWidget {
  /// Creates the `menu-dots-vertical` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const MenuDotsVerticalIcon({
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
    name: 'menu-dots-vertical',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 7C10.8954 7 10 6.10457 10 5C10 3.89543 10.8954 3 12 3C13.1046 3 14 3.89543 14 5C14 6.10457 13.1046 7 12 7Z" fill="currentColor"/>
<path d="M12 14C10.8954 14 10 13.1046 10 12C10 10.8954 10.8954 10 12 10C13.1046 10 14 10.8954 14 12C14 13.1046 13.1046 14 12 14Z" fill="currentColor"/>
<path d="M12 21C10.8954 21 10 20.1046 10 19C10 17.8954 10.8954 17 12 17C13.1046 17 14 17.8954 14 19C14 20.1046 13.1046 21 12 21Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'menu-dots-vertical',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 7C10.8954 7 10 6.10457 10 5C10 3.89543 10.8954 3 12 3C13.1046 3 14 3.89543 14 5C14 6.10457 13.1046 7 12 7Z" fill="currentColor"/>
<path d="M12 21C10.8954 21 10 20.1046 10 19C10 17.8954 10.8954 17 12 17C13.1046 17 14 17.8954 14 19C14 20.1046 13.1046 21 12 21Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 14C10.8954 14 10 13.1046 10 12C10 10.8954 10.8954 10 12 10C13.1046 10 14 10.8954 14 12C14 13.1046 13.1046 14 12 14Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'menu-dots-vertical',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="5" r="2" transform="rotate(90 12 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="12" r="2" transform="rotate(90 12 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="19" r="2" transform="rotate(90 12 19)" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'menu-dots-vertical',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="5" r="2" transform="rotate(90 12 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="12" r="2" transform="rotate(90 12 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="19" r="2" transform="rotate(90 12 19)" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'menu-dots-vertical',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="5" r="2" transform="rotate(90 12 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="19" r="2" transform="rotate(90 12 19)" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="2" transform="rotate(90 12 12)" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'menu-dots-vertical',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 16.25C13.5188 16.25 14.75 17.4812 14.75 19C14.75 20.5188 13.5188 21.75 12 21.75C10.4812 21.75 9.25 20.5188 9.25 19C9.25 17.4812 10.4812 16.25 12 16.25ZM12 17.75C11.3096 17.75 10.75 18.3096 10.75 19C10.75 19.6904 11.3096 20.25 12 20.25C12.6904 20.25 13.25 19.6904 13.25 19C13.25 18.3096 12.6904 17.75 12 17.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 9.25C13.5188 9.25 14.75 10.4812 14.75 12C14.75 13.5188 13.5188 14.75 12 14.75C10.4812 14.75 9.25 13.5188 9.25 12C9.25 10.4812 10.4812 9.25 12 9.25ZM12 10.75C11.3096 10.75 10.75 11.3096 10.75 12C10.75 12.6904 11.3096 13.25 12 13.25C12.6904 13.25 13.25 12.6904 13.25 12C13.25 11.3096 12.6904 10.75 12 10.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C13.5188 2.25 14.75 3.48122 14.75 5C14.75 6.51878 13.5188 7.75 12 7.75C10.4812 7.75 9.25 6.51878 9.25 5C9.25 3.48122 10.4812 2.25 12 2.25ZM12 3.75C11.3096 3.75 10.75 4.30964 10.75 5C10.75 5.69036 11.3096 6.25 12 6.25C12.6904 6.25 13.25 5.69036 13.25 5C13.25 4.30964 12.6904 3.75 12 3.75Z" fill="currentColor"/>''',
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
