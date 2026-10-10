// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bug-minimalistic` icon in the lineDuotone style.
class BugMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `bug-minimalistic` icon in the lineDuotone style.
  const BugMinimalisticLineDuotoneIcon({
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
    name: 'bug-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5 10C5 6.13401 8.13401 3 12 3C15.866 3 19 6.13401 19 10V15C19 18.866 15.866 22 12 22C8.13401 22 5 18.866 5 15V10Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M19 13H22" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5 13H2" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M20.4999 7L18.7021 7.71909" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M3.50012 7L5.29785 7.71909" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M14.5 3.5L17 2" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M9.5 3.5L7 2" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M20.5 19.0002L18.5 18.2002" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M3.5 19.0002L5.5 18.2002" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10.5 10.5H13.5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10.5 15.5H13.5" stroke="currentColor" stroke-linecap="round"/>''',
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
