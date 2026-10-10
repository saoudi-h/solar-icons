// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `file-sliders` icon in the lineDuotone style.
class FileSlidersLineDuotoneIcon extends StatelessWidget {
  /// Creates the `file-sliders` icon in the lineDuotone style.
  const FileSlidersLineDuotoneIcon({
    super.key,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

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

  /// Static payload for composition with [SolarIcon].
  static const data = SolarIconData(
    name: 'file-sliders',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M11.4102 13.2188C11.4102 13.8918 10.8645 14.4375 10.1914 14.4375C9.51831 14.4375 8.97266 13.8918 8.97266 13.2188C8.97266 12.5457 9.51831 12 10.1914 12C10.8645 12 11.4102 12.5457 11.4102 13.2188Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.95313 17.2656C6.95313 16.5925 7.49878 16.0469 8.17188 16.0469C8.84497 16.0469 9.39063 16.5925 9.39063 17.2656C9.39063 17.9387 8.84497 18.4844 8.17188 18.4844C7.49878 18.4844 6.95313 17.9387 6.95313 17.2656Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.17139 3.17157C4.34296 2 6.23851 2 10.0296 2C11.5546 2 12.3173 2.00011 13.0093 2.26562C13.7012 2.53114 14.2651 3.03857 15.3929 4.05365L19.3516 7.61621C20.6558 8.78998 21.3078 9.3774 21.6538 10.1543C21.9998 10.9312 22 11.8079 22 13.5625V14C22 17.7712 22 19.6566 20.8284 20.8281C19.6569 21.9997 17.7712 22 14 22L9.9969 21.9997C6.22761 21.9997 4.34284 21.9997 3.17157 20.8284C2 19.6569 2 17.7712 2 14V9.9982C2 6.22817 2 4.34296 3.17139 3.17157Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M13 2.2627V5.0003C13 7.35732 13 8.53583 13.7322 9.26806C14.4645 10.0003 15.643 10.0003 18 10.0003H21.58" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M8.97266 13.2186L5.1183 13.2187" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M13.2441 13.2187L11.4102 13.2187" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M9.39062 17.2657L13.245 17.2656" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5.11914 17.2656L6.95312 17.2656" stroke="currentColor" stroke-linecap="round"/>''',
  );

  SolarIconData get _data => data;

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
