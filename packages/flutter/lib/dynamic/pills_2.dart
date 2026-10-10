// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `pills-2` icon in every style.
///
/// Prefer the static widgets (e.g. `Pills2LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Pills2Icon extends StatelessWidget {
  /// Creates the `pills-2` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const Pills2Icon({
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
    name: 'pills-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M21.9434 17.75C21.7895 18.7694 21.3201 19.7502 20.5352 20.5352C18.5825 22.4878 15.4175 22.4877 13.4648 20.5352C12.6799 19.7502 12.2105 18.7695 12.0566 17.75H21.9434Z" fill="currentColor"/>
<path d="M13.4648 13.4648C15.4175 11.5123 18.5825 11.5122 20.5352 13.4648C21.3201 14.2498 21.7895 15.2305 21.9434 16.25H12.0566C12.2105 15.2305 12.6799 14.2498 13.4648 13.4648Z" fill="currentColor"/>
<path d="M10.9658 11.0264C10.1362 11.6385 9.11014 12 8 12C5.23858 12 3 9.76142 3 7C3 5.88986 3.36152 4.86384 3.97363 4.03418L10.9658 11.0264Z" fill="currentColor"/>
<path d="M8 2C10.7614 2 13 4.23858 13 7C13 8.11014 12.6385 9.13616 12.0264 9.96582L5.03418 2.97363C5.86384 2.36152 6.88986 2 8 2Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'pills-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.9434 16.2505C21.9808 16.4988 22 16.7499 22 17.0005C22 17.2511 21.9808 17.5022 21.9434 17.7505H12.0566C12.0192 17.5022 12 17.2511 12 17.0005C12 16.7499 12.0192 16.4988 12.0566 16.2505H21.9434Z" fill="currentColor"/>
<path d="M12.0254 9.96533C11.8762 10.1675 11.7125 10.3583 11.5352 10.5356C11.3578 10.713 11.1671 10.8767 10.9648 11.0259L3.97363 4.03467C4.12281 3.83248 4.28657 3.64165 4.46387 3.46436C4.64116 3.28706 4.83199 3.1233 5.03418 2.97412L12.0254 9.96533Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M13.4648 13.4648C15.4175 11.5122 18.5825 11.5122 20.5352 13.4648C21.5115 14.4412 22 15.7204 22 17C22 18.2796 21.5115 19.5588 20.5352 20.5352C18.5825 22.4878 15.4175 22.4878 13.4648 20.5352C12.4885 19.5588 12 18.2796 12 17C12 15.7204 12.4885 14.4412 13.4648 13.4648Z" fill="currentColor"/>
<path d="M8 2C10.7614 2 13 4.23858 13 7C13 8.38071 12.44 9.63033 11.5352 10.5352C10.6303 11.44 9.38071 12 8 12C5.23858 12 3 9.76142 3 7C3 5.61929 3.56002 4.36967 4.46484 3.46484C5.36967 2.56002 6.61929 2 8 2Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'pills-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M11.5355 10.5355C12.4404 9.63071 13 8.38071 13 7C13 4.23858 10.7614 2 8 2C6.61929 2 5.36929 2.55964 4.46447 3.46447M11.5355 10.5355C10.6307 11.4404 9.38071 12 8 12C5.23858 12 3 9.76142 3 7C3 5.61929 3.55964 4.36929 4.46447 3.46447M11.5355 10.5355L4.46447 3.46447" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 17C12 18.2796 12.4882 19.5592 13.4645 20.5355C14.4408 21.5118 15.7204 22 17 22M12 17C12 15.7204 12.4882 14.4408 13.4645 13.4645C15.4171 11.5118 18.5829 11.5118 20.5355 13.4645C21.5118 14.4408 22 15.7204 22 17M12 17H22M22 17C22 18.2796 21.5118 19.5592 20.5355 20.5355" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'pills-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M11.5355 10.5355C12.4404 9.63071 13 8.38071 13 7C13 4.23858 10.7614 2 8 2C6.61929 2 5.36929 2.55964 4.46447 3.46447M11.5355 10.5355C10.6307 11.4404 9.38071 12 8 12C5.23858 12 3 9.76142 3 7C3 5.61929 3.55964 4.36929 4.46447 3.46447M11.5355 10.5355L4.46447 3.46447" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 17C22 15.7204 21.5118 14.4408 20.5355 13.4645C18.5829 11.5118 15.4171 11.5118 13.4645 13.4645C12.4882 14.4408 12 15.7204 12 17M22 17C22 18.2796 21.5118 19.5592 20.5355 20.5355C18.5829 22.4882 15.4171 22.4882 13.4645 20.5355C12.4882 19.5592 12 18.2796 12 17M22 17H12" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'pills-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M11.5355 10.5355C12.4404 9.63071 13 8.38071 13 7C13 4.23858 10.7614 2 8 2C6.61929 2 5.36929 2.55964 4.46447 3.46447M11.5355 10.5355C10.6307 11.4404 9.38071 12 8 12C5.23858 12 3 9.76142 3 7C3 5.61929 3.55964 4.36929 4.46447 3.46447M11.5355 10.5355L4.46447 3.46447" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 17C22 15.7204 21.5118 14.4408 20.5355 13.4645C18.5829 11.5118 15.4171 11.5118 13.4645 13.4645C12.4882 14.4408 12 15.7204 12 17M22 17C22 18.2796 21.5118 19.5592 20.5355 20.5355C18.5829 22.4882 15.4171 22.4882 13.4645 20.5355C12.4882 19.5592 12 18.2796 12 17M22 17H12" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'pills-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8 1.25C6.41239 1.25 4.97386 1.89441 3.93414 2.93414C2.89441 3.97386 2.25 5.41239 2.25 7C2.25 10.1756 4.82436 12.75 8 12.75C9.58761 12.75 11.0261 12.1056 12.0659 11.0659C13.1056 10.0261 13.75 8.58761 13.75 7C13.75 3.82436 11.1756 1.25 8 1.25ZM11.4887 9.42805L5.57195 3.51129C6.26041 3.03106 7.09696 2.75 8 2.75C10.3472 2.75 12.25 4.65279 12.25 7C12.25 7.90304 11.9689 8.73959 11.4887 9.42805ZM4.51129 4.57195L10.428 10.4887C9.73959 10.9689 8.90304 11.25 8 11.25C5.65279 11.25 3.75 9.34721 3.75 7C3.75 6.09696 4.03106 5.26041 4.51129 4.57195Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M21.0659 12.9341C18.8203 10.6886 15.1797 10.6886 12.9341 12.9341C11.8115 14.0567 11.25 15.5296 11.25 17C11.25 18.4704 11.8115 19.9433 12.9341 21.0659C15.1797 23.3114 18.8203 23.3114 21.0659 21.0659C22.1885 19.9433 22.75 18.4704 22.75 17C22.75 15.5296 22.1885 14.0567 21.0659 12.9341ZM13.9948 13.9948C15.6545 12.3351 18.3455 12.3351 20.0052 13.9948C20.6437 14.6333 21.0365 15.4236 21.1838 16.25H12.8162C12.9635 15.4236 13.3563 14.6333 13.9948 13.9948ZM12.8162 17.75H21.1838C21.0365 18.5764 20.6437 19.3667 20.0052 20.0052C18.3455 21.6649 15.6545 21.6649 13.9948 20.0052C13.3563 19.3667 12.9635 18.5764 12.8162 17.75Z" fill="currentColor"/>''',
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
