// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-dot-dashed` icon in the lineDuotone style.
class SquareDotDashedLineDuotoneIcon extends StatelessWidget {
  /// Creates the `square-dot-dashed` icon in the lineDuotone style.
  const SquareDotDashedLineDuotoneIcon({
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
    name: 'square-dot-dashed',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 12H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.6169 2.40487C19.4062 2.62149 20.0251 2.95402 20.5355 3.46447C21.0457 3.97463 21.3781 4.59312 21.5948 5.38184M14.2227 2.00736C13.5461 2 12.8076 2 12 2C11.1924 2 10.4539 2 9.7773 2.00736M21.5952 18.6167C21.3786 19.406 21.0461 20.0249 20.5356 20.5354C20.0254 21.0455 19.407 21.378 18.6182 21.5946M21.9926 14.2228C22 13.5461 22 12.8077 22 12C22 11.1924 22 10.454 21.9926 9.77734M5.3833 21.5952C4.59397 21.3786 3.97509 21.0461 3.46464 20.5356C2.95447 20.0254 2.62203 19.407 2.4054 18.6182M9.77725 21.9926C10.4539 22 11.1923 22 12 22C12.8076 22 13.546 22 14.2227 21.9926M2.40478 5.3833C2.62141 4.59397 2.95394 3.97509 3.46438 3.46464C3.97455 2.95447 4.59304 2.62203 5.38176 2.4054M2.00736 9.77725C2 10.4539 2 11.1923 2 12C2 12.8076 2 13.546 2.00736 14.2227" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
