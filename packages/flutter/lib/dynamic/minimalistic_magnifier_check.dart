// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `minimalistic-magnifier-check` icon in every style.
///
/// Prefer the static widgets (e.g. `MinimalisticMagnifierCheckLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class MinimalisticMagnifierCheckIcon extends StatelessWidget {
  /// Creates the `minimalistic-magnifier-check` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const MinimalisticMagnifierCheckIcon({
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
    name: 'minimalistic-magnifier-check',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M19.4697 19.4697C19.7626 19.1768 20.2374 19.1768 20.5303 19.4697L22.5303 21.4697C22.8231 21.7626 22.8231 22.2374 22.5303 22.5303C22.2374 22.8231 21.7626 22.8231 21.4697 22.5303L19.4697 20.5303C19.1768 20.2374 19.1768 19.7626 19.4697 19.4697Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5 2C16.7467 2 21 6.25329 21 11.5C21 16.7467 16.7467 21 11.5 21C6.25329 21 2 16.7467 2 11.5C2 6.25329 6.25329 2 11.5 2ZM14.9609 8.4082C14.6343 8.15382 14.1629 8.21259 13.9082 8.53906L10.5781 12.8096L9.07422 11.0176C8.80779 10.7005 8.33473 10.6594 8.01758 10.9258C7.70045 11.1922 7.65938 11.6653 7.92578 11.9824L10.0254 14.4824L10.083 14.5439C10.2249 14.6788 10.4153 14.7535 10.6133 14.75C10.8396 14.7459 11.0522 14.6394 11.1914 14.4609L15.0918 9.46094C15.3462 9.13435 15.2874 8.66285 14.9609 8.4082Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'minimalistic-magnifier-check',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M19.4697 19.4697C19.7626 19.1768 20.2374 19.1768 20.5303 19.4697L22.5303 21.4697C22.8231 21.7626 22.8232 22.2374 22.5303 22.5303C22.2374 22.8232 21.7626 22.8231 21.4697 22.5303L19.4697 20.5303C19.1768 20.2374 19.1768 19.7626 19.4697 19.4697ZM13.9082 8.53906C14.1629 8.21259 14.6343 8.15382 14.9609 8.4082C15.2874 8.66286 15.3462 9.13436 15.0918 9.46094L11.1914 14.4609C11.0522 14.6394 10.8395 14.7459 10.6133 14.75C10.4153 14.7535 10.2249 14.6788 10.083 14.5439L10.0254 14.4824L7.92578 11.9824C7.65938 11.6653 7.70046 11.1922 8.01758 10.9258C8.33473 10.6594 8.80779 10.7005 9.07422 11.0176L10.5781 12.8096L13.9082 8.53906Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11.5" cy="11.5" r="9.5" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'minimalistic-magnifier-check',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20 20L22 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.75 3.27093C8.14732 2.46262 9.76964 2 11.5 2C16.7467 2 21 6.25329 21 11.5C21 16.7467 16.7467 21 11.5 21C6.25329 21 2 16.7467 2 11.5C2 9.76964 2.46262 8.14732 3.27093 6.75" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 11.5L10.6 14L14.5 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'minimalistic-magnifier-check',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="11.5" cy="11.5" r="9.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 20L22 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 11.5L10.6 14L14.5 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'minimalistic-magnifier-check',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M20 20L22 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 11.5L10.6 14L14.5 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11.5" cy="11.5" r="9.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'minimalistic-magnifier-check',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M19.4697 19.4697C19.7626 19.1768 20.2374 19.1768 20.5303 19.4697L22.5303 21.4697C22.8232 21.7626 22.8232 22.2374 22.5303 22.5303C22.2374 22.8232 21.7626 22.8232 21.4697 22.5303L19.4697 20.5303C19.1768 20.2374 19.1768 19.7626 19.4697 19.4697Z" fill="currentColor"/>
<path d="M13.9082 8.53906C14.1629 8.21259 14.6343 8.15382 14.9609 8.4082C15.2874 8.66285 15.3462 9.13435 15.0918 9.46094L11.1914 14.4609C11.0522 14.6394 10.8396 14.7459 10.6133 14.75C10.4153 14.7535 10.2249 14.6788 10.083 14.5439L10.0254 14.4824L7.92578 11.9824C7.65938 11.6653 7.70045 11.1922 8.01758 10.9258C8.33473 10.6594 8.80779 10.7005 9.07422 11.0176L10.5781 12.8096L13.9082 8.53906Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5 1.25C17.1609 1.25 21.75 5.83908 21.75 11.5C21.75 17.1609 17.1609 21.75 11.5 21.75C5.83908 21.75 1.25 17.1609 1.25 11.5C1.25 5.83908 5.83908 1.25 11.5 1.25ZM11.5 2.75C6.66751 2.75 2.75 6.66751 2.75 11.5C2.75 16.3325 6.66751 20.25 11.5 20.25C16.3325 20.25 20.25 16.3325 20.25 11.5C20.25 6.66751 16.3325 2.75 11.5 2.75Z" fill="currentColor"/>''',
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
