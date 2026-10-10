// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-arrow-down` icon in the outline style.
class MapArrowDownOutlineIcon extends StatelessWidget {
  /// Creates the `map-arrow-down` icon in the outline style.
  const MapArrowDownOutlineIcon({
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
    name: 'map-arrow-down',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21.047 1.98744C21.7005 2.67201 21.9871 3.75513 21.5199 4.80282L14.1574 21.3125C13.3027 23.229 10.697 23.229 9.84236 21.3125L2.47986 4.80282C2.01265 3.75513 2.29922 2.67201 2.95277 1.98744C3.61181 1.2971 4.68804 0.978305 5.72001 1.52928L5.36677 2.19088L5.72001 1.52928L11.6237 4.68131L11.2705 5.34291L11.6237 4.68131C11.8621 4.8086 12.1376 4.8086 12.376 4.68131L18.2797 1.52928L18.633 2.19088L18.2797 1.52928C19.3117 0.978304 20.3879 1.2971 21.047 1.98744ZM18.9862 2.85249L18.6356 2.19572L18.9862 2.85249L13.0825 6.00452C12.4026 6.36753 11.5972 6.36753 10.9172 6.00452L5.01353 2.85249C4.65774 2.66253 4.29947 2.74905 4.03773 3.02323C3.77047 3.30317 3.64996 3.74374 3.84981 4.19189L11.2123 20.7016C11.5383 21.4327 12.4614 21.4327 12.7874 20.7016L20.1499 4.19189C20.3498 3.74374 20.2293 3.30317 19.962 3.02323C19.7003 2.74905 19.342 2.66253 18.9862 2.85249Z" fill="currentColor"/>''',
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
