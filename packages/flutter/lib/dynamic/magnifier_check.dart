// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `magnifier-check` icon in every style.
///
/// Prefer the static widgets (e.g. `MagnifierCheckLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class MagnifierCheckIcon extends StatelessWidget {
  /// Creates the `magnifier-check` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const MagnifierCheckIcon({
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
    name: 'magnifier-check',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5 2C16.7467 2 21 6.25329 21 11.5C21 13.8541 20.1417 16.0064 18.7236 17.666C18.7315 17.6732 18.7404 17.6799 18.748 17.6875L22.5303 21.4697C22.8228 21.7626 22.8228 22.2384 22.5303 22.5312C22.2375 22.8236 21.7625 22.8237 21.4697 22.5312L17.6875 18.748C17.6797 18.7403 17.6724 18.7317 17.665 18.7236C16.0055 20.1414 13.8538 21 11.5 21C6.25329 21 2 16.7467 2 11.5C2 6.25329 6.25329 2 11.5 2ZM14.9609 8.4082C14.6343 8.15382 14.1629 8.21259 13.9082 8.53906L10.5781 12.8096L9.07422 11.0176C8.80779 10.7005 8.33473 10.6594 8.01758 10.9258C7.70045 11.1922 7.65938 11.6653 7.92578 11.9824L10.0254 14.4824L10.083 14.5439C10.2249 14.6788 10.4153 14.7535 10.6133 14.75C10.8396 14.7459 11.0522 14.6394 11.1914 14.4609L15.0918 9.46094C15.3462 9.13435 15.2874 8.66285 14.9609 8.4082Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'magnifier-check',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.6133 14.7499C10.8395 14.7458 11.0522 14.6393 11.1914 14.4608L15.0918 9.46082C15.3462 9.13423 15.2874 8.66273 14.9609 8.40808C14.6343 8.1537 14.1628 8.21247 13.9082 8.53894L10.5781 12.8095L9.07419 11.0175C8.80777 10.7003 8.3347 10.6593 8.01755 10.9257C7.70043 11.1921 7.65935 11.6652 7.92576 11.9823L10.0254 14.4823L10.083 14.5438C10.2249 14.6787 10.4153 14.7534 10.6133 14.7499Z" fill="currentColor"/>
<path d="M17.1001 18.1219L20.7664 21.7882C21.0487 22.0705 21.5064 22.0705 21.7887 21.7882C22.071 21.5059 22.071 21.0482 21.7887 20.7659L18.1224 17.0996C17.809 17.4666 17.4671 17.8085 17.1001 18.1219Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.3133 11.1566C20.3133 16.2137 16.2137 20.3133 11.1566 20.3133C6.09956 20.3133 2 16.2137 2 11.1566C2 6.09956 6.09956 2 11.1566 2C16.2137 2 20.3133 6.09956 20.3133 11.1566Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'magnifier-check',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M18.2173 18.2178L21.9999 22.0004" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.75 3.27093C8.14732 2.46262 9.76964 2 11.5 2C16.7467 2 21 6.25329 21 11.5C21 16.7467 16.7467 21 11.5 21C6.25329 21 2 16.7467 2 11.5C2 9.76964 2.46262 8.14732 3.27093 6.75" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 11.5L10.6 14L14.5 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'magnifier-check',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="11.5" cy="11.5" r="9.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 11.5L10.6 14L14.5 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.2173 18.2178L21.9999 22.0004" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'magnifier-check',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M18.2173 18.2178L21.9999 22.0004" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 11.5L10.6 14L14.5 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11.5" cy="11.5" r="9.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'magnifier-check',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M13.9082 8.53906C14.1629 8.21259 14.6343 8.15382 14.9609 8.4082C15.2874 8.66285 15.3462 9.13435 15.0918 9.46094L11.1914 14.4609C11.0522 14.6394 10.8396 14.7459 10.6133 14.75C10.4153 14.7535 10.2249 14.6788 10.083 14.5439L10.0254 14.4824L7.92578 11.9824C7.65938 11.6653 7.70045 11.1922 8.01758 10.9258C8.33473 10.6594 8.80779 10.7005 9.07422 11.0176L10.5781 12.8096L13.9082 8.53906Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5 1.25C17.1609 1.25 21.75 5.83908 21.75 11.5C21.75 14.0604 20.808 16.3989 19.2559 18.1953L22.5303 21.4697C22.8228 21.7626 22.8228 22.2384 22.5303 22.5312C22.2375 22.8236 21.7625 22.8237 21.4697 22.5312L18.1953 19.2559C16.3989 20.808 14.0604 21.75 11.5 21.75C5.83908 21.75 1.25 17.1609 1.25 11.5C1.25 5.83908 5.83908 1.25 11.5 1.25ZM11.5 2.75C6.66751 2.75 2.75 6.66751 2.75 11.5C2.75 16.3325 6.66751 20.25 11.5 20.25C16.3325 20.25 20.25 16.3325 20.25 11.5C20.25 6.66751 16.3325 2.75 11.5 2.75Z" fill="currentColor"/>''',
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
