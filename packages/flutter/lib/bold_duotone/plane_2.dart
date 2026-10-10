// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `plane-2` icon in the boldDuotone style.
class Plane2BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `plane-2` icon in the boldDuotone style.
  const Plane2BoldDuotoneIcon({
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
    name: 'plane-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M5.79624 18.2037L21.5122 2.48782C20.5237 1.49939 18.6511 2.12356 14.906 3.37189L5.57477 6.48218C3.49295 7.1761 2.45203 7.52305 2.13608 8.28637C2.06182 8.46577 2.01692 8.65596 2.00311 8.84963C1.94433 9.67365 2.72018 10.4495 4.27188 12.0011L4.55451 12.2837C4.80921 12.5384 4.93655 12.6658 5.03282 12.8075C5.22269 13.0871 5.33046 13.4143 5.34393 13.7519C5.35076 13.9232 5.32403 14.1013 5.27057 14.4574C5.07488 15.7612 4.97703 16.4131 5.0923 16.9147C5.20622 17.4105 5.45393 17.8534 5.79624 18.2037Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M17.4981 18.4856L20.6287 9.09419C21.8771 5.3492 22.5013 3.47671 21.5128 2.48828L5.79688 18.2042C6.14492 18.5604 6.59077 18.8208 7.0932 18.9438C7.59318 19.0661 8.2464 18.9774 9.55283 18.8001L9.62427 18.7904C9.99254 18.7404 10.1767 18.7155 10.3535 18.7261C10.6745 18.7455 10.9845 18.85 11.2516 19.029C11.3988 19.1276 11.5302 19.259 11.793 19.5217L12.0442 19.773C13.5545 21.2832 14.3096 22.0383 15.1107 21.999C15.3316 21.9882 15.5485 21.9369 15.7509 21.8479C16.485 21.5248 16.8227 20.5117 17.4981 18.4856Z" fill="currentColor"/>''',
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
