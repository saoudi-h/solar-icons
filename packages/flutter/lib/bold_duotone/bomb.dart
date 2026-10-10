// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bomb` icon in the boldDuotone style.
class BombBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `bomb` icon in the boldDuotone style.
  const BombBoldDuotoneIcon({
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
    name: 'bomb',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.4772 6.46191L14.2466 8.69257C14.6344 9.00995 14.9899 9.36541 15.3072 9.75325L17.5378 7.5226L17.3267 6.98727C17.27 6.84351 17.1562 6.72971 17.0124 6.67301L16.4772 6.46191Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M9.5 7.00014C13.6421 7.00014 17 10.358 17 14.5001C17 18.6423 13.6421 22.0001 9.5 22.0001C5.35786 22.0001 2 18.6423 2 14.5001C2 10.358 5.35786 7.00014 9.5 7.00014Z" fill="currentColor"/>
<path d="M17.9814 2.35365C18.1672 1.88277 18.8328 1.88277 19.0186 2.35365L19.6729 4.01283C19.7296 4.15653 19.8436 4.27058 19.9873 4.32728L21.6465 4.98158C22.1174 5.16729 22.1174 5.83298 21.6465 6.01869L19.9873 6.67299C19.8436 6.72969 19.7296 6.84374 19.6729 6.98744L19.0186 8.64662C18.8328 9.1175 18.1672 9.1175 17.9814 8.64662L17.3271 6.98744C17.2704 6.84374 17.1564 6.72969 17.0127 6.67299L15.3535 6.01869C14.8826 5.83298 14.8826 5.16729 15.3535 4.98158L17.0127 4.32728C17.1564 4.27058 17.2704 4.15653 17.3271 4.01283L17.9814 2.35365Z" fill="currentColor"/>
</g>''',
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
