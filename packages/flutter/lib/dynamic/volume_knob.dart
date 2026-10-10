// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `volume-knob` icon in every style.
///
/// Prefer the static widgets (e.g. `VolumeKnobLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class VolumeKnobIcon extends StatelessWidget {
  /// Creates the `volume-knob` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const VolumeKnobIcon({
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
    name: 'volume-knob',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.28223 17.3037C5.67275 16.9132 6.30674 16.9132 6.69727 17.3037C7.08738 17.6942 7.08755 18.3274 6.69727 18.7178C6.30674 19.1083 5.67275 19.1083 5.28223 18.7178C4.89195 18.3274 4.89211 17.6942 5.28223 17.3037Z" fill="currentColor"/>
<path d="M17.3027 17.3037C17.6933 16.9132 18.3272 16.9132 18.7178 17.3037C19.1079 17.6942 19.1081 18.3274 18.7178 18.7178C18.3272 19.1083 17.6933 19.1083 17.3027 18.7178C16.9125 18.3274 16.9126 17.6942 17.3027 17.3037Z" fill="currentColor"/>
<path d="M12.75 7.05566C15.1556 7.41753 17 9.4935 17 12C17 14.7614 14.7614 17 12 17C9.23858 17 7 14.7614 7 12C7.00002 9.4935 8.84438 7.41753 11.25 7.05566V11C11.25 11.4142 11.5858 11.75 12 11.75C12.4142 11.75 12.75 11.4142 12.75 11V7.05566Z" fill="currentColor"/>
<path d="M3.5 11C4.05228 11 4.5 11.4477 4.5 12C4.5 12.5523 4.05228 13 3.5 13C2.94772 13 2.5 12.5523 2.5 12C2.5 11.4477 2.94772 11 3.5 11Z" fill="currentColor"/>
<path d="M20.5 11C21.0523 11 21.5 11.4477 21.5 12C21.5 12.5523 21.0523 13 20.5 13C19.9477 13 19.5 12.5523 19.5 12C19.5 11.4477 19.9477 11 20.5 11Z" fill="currentColor"/>
<path d="M5.28223 5.28223C5.67275 4.8917 6.30674 4.8917 6.69727 5.28223C7.08755 5.67264 7.08738 6.30578 6.69727 6.69629C6.30674 7.08681 5.67275 7.08681 5.28223 6.69629C4.89211 6.30578 4.89195 5.67264 5.28223 5.28223Z" fill="currentColor"/>
<path d="M17.3027 5.28223C17.6933 4.8917 18.3272 4.8917 18.7178 5.28223C19.1081 5.67264 19.1079 6.30578 18.7178 6.69629C18.3272 7.08681 17.6933 7.08681 17.3027 6.69629C16.9126 6.30578 16.9125 5.67264 17.3027 5.28223Z" fill="currentColor"/>
<path d="M12 2.5C12.5523 2.5 13 2.94772 13 3.5C13 4.05228 12.5523 4.5 12 4.5C11.4477 4.5 11 4.05228 11 3.5C11 2.94772 11.4477 2.5 12 2.5Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'volume-knob',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 7.05566C15.1556 7.41753 17 9.4935 17 12C17 14.7614 14.7614 17 12 17C9.23858 17 7 14.7614 7 12C7.00002 9.4935 8.84438 7.41753 11.25 7.05566V11C11.25 11.4142 11.5858 11.75 12 11.75C12.4142 11.75 12.75 11.4142 12.75 11V7.05566Z" fill="currentColor"/>
<path d="M12 2.5C12.5523 2.5 13 2.94772 13 3.5C13 4.05228 12.5523 4.5 12 4.5C11.4477 4.5 11 4.05228 11 3.5C11 2.94772 11.4477 2.5 12 2.5Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M5.28223 17.3029C5.67269 16.9127 6.30583 16.9127 6.69629 17.3029C7.08681 17.6934 7.08681 18.3274 6.69629 18.7179C6.30583 19.1081 5.67269 19.1081 5.28223 18.7179C4.8917 18.3274 4.8917 17.6934 5.28223 17.3029Z" fill="currentColor"/>
<path d="M17.3037 17.3029C17.6942 16.9127 18.3273 16.9127 18.7178 17.3029C19.1083 17.6934 19.1083 18.3274 18.7178 18.7179C18.3273 19.1081 17.6942 19.1081 17.3037 18.7179C16.9132 18.3274 16.9132 17.6934 17.3037 17.3029Z" fill="currentColor"/>
<path d="M3.5 11.0002C4.05228 11.0002 4.5 11.4479 4.5 12.0002C4.49987 12.5523 4.0522 13.0002 3.5 13.0002C2.9478 13.0002 2.50013 12.5523 2.5 12.0002C2.5 11.4479 2.94772 11.0002 3.5 11.0002Z" fill="currentColor"/>
<path d="M20.5 11.0002C21.0523 11.0002 21.5 11.4479 21.5 12.0002C21.4999 12.5523 21.0522 13.0002 20.5 13.0002C19.9478 13.0002 19.5001 12.5523 19.5 12.0002C19.5 11.4479 19.9477 11.0002 20.5 11.0002Z" fill="currentColor"/>
<path d="M5.28223 5.2824C5.67275 4.89187 6.30576 4.89187 6.69629 5.2824C7.08681 5.67292 7.08681 6.30593 6.69629 6.69646C6.30576 7.08698 5.67275 7.08698 5.28223 6.69646C4.8917 6.30593 4.8917 5.67292 5.28223 5.2824Z" fill="currentColor"/>
<path d="M17.3037 5.2824C17.6942 4.89187 18.3272 4.89187 18.7178 5.2824C19.1083 5.67292 19.1083 6.30593 18.7178 6.69646C18.3272 7.08698 17.6942 7.08698 17.3037 6.69646C16.9132 6.30593 16.9132 5.67292 17.3037 5.2824Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'volume-knob',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M17 12C17 9.23858 14.7614 7 12 7C9.23858 7 7 9.23858 7 12C7 14.7614 9.23858 17 12 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 7V11" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 6H6.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6 18H6.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3.5 12H3.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.5 12H20.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 18H18.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 6H18.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 3.5H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'volume-knob',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 7V11" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 6H6.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6 18H6.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3.5 12H3.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.5 12H20.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 18H18.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 6H18.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 3.5H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'volume-knob',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="12" r="5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 3.5H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 7V11" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M6 6H6.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M6 18H6.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M3.5 12H3.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M20.5 12H20.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M18 18H18.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M18 6H18.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'volume-knob',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.25 7.81597C9.26049 8.1702 7.75 9.9087 7.75 12C7.75 14.3472 9.65279 16.25 12 16.25C14.3472 16.25 16.25 14.3472 16.25 12C16.25 9.9087 14.7395 8.1702 12.75 7.81597V11C12.75 11.4142 12.4142 11.75 12 11.75C11.5858 11.75 11.25 11.4142 11.25 11V7.81597ZM6.25 12C6.25 8.82436 8.82436 6.25 12 6.25C15.1756 6.25 17.75 8.82436 17.75 12C17.75 15.1756 15.1756 17.75 12 17.75C8.82436 17.75 6.25 15.1756 6.25 12Z" fill="currentColor"/>
<path d="M13 3.5C13 4.05228 12.5523 4.5 12 4.5C11.4477 4.5 11 4.05228 11 3.5C11 2.94772 11.4477 2.5 12 2.5C12.5523 2.5 13 2.94772 13 3.5Z" fill="currentColor"/>
<path d="M20.5 13C19.9477 13 19.5 12.5523 19.5 12C19.5 11.4477 19.9477 11 20.5 11C21.0523 11 21.5 11.4477 21.5 12C21.5 12.5523 21.0523 13 20.5 13Z" fill="currentColor"/>
<path d="M3.5 13C2.94772 13 2.5 12.5523 2.5 12C2.5 11.4477 2.94772 11 3.5 11C4.05228 11 4.5 11.4477 4.5 12C4.5 12.5523 4.05228 13 3.5 13Z" fill="currentColor"/>
<path d="M6.6967 5.28249C7.08722 5.67301 7.08722 6.30617 6.6967 6.6967C6.30617 7.08722 5.67301 7.08722 5.28249 6.6967C4.89196 6.30617 4.89196 5.67301 5.28249 5.28249C5.67301 4.89196 6.30617 4.89196 6.6967 5.28249Z" fill="currentColor"/>
<path d="M18.7175 17.3034C19.108 17.6939 19.108 18.3271 18.7175 18.7176C18.327 19.1081 17.6938 19.1081 17.3033 18.7176C16.9128 18.3271 16.9128 17.6939 17.3033 17.3034C17.6938 16.9129 18.327 16.9129 18.7175 17.3034Z" fill="currentColor"/>
<path d="M18.7175 6.6967C18.327 7.08722 17.6938 7.08722 17.3033 6.6967C16.9128 6.30617 16.9128 5.67301 17.3033 5.28249C17.6938 4.89196 18.327 4.89196 18.7175 5.28249C19.108 5.67301 19.108 6.30617 18.7175 6.6967Z" fill="currentColor"/>
<path d="M6.6967 18.7175C6.30617 19.108 5.67301 19.108 5.28249 18.7175C4.89196 18.327 4.89196 17.6938 5.28249 17.3033C5.67301 16.9128 6.30617 16.9128 6.6967 17.3033C7.08722 17.6938 7.08722 18.327 6.6967 18.7175Z" fill="currentColor"/>''',
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
