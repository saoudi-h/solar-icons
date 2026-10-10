// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-arrow-left` icon in the boldDuotone style.
class MapArrowLeftBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `map-arrow-left` icon in the boldDuotone style.
  const MapArrowLeftBoldDuotoneIcon({
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
    name: 'map-arrow-left',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9.85663 15.9621C9.72926 16.2169 9.84009 16.5264 10.1002 16.6424L19.5019 20.835C20.9977 21.5021 22.5493 20.0209 21.8084 18.6331L18.6563 12.7294C18.4112 12.2702 18.4112 11.7298 18.6563 11.2706L21.8084 5.36689C22.5493 3.97914 20.9977 2.49789 19.5019 3.16496L15.9776 4.73662C15.5547 4.9252 15.2104 5.25466 15.0033 5.6688L9.85663 15.9621Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M8.46623 15.3904C8.34658 15.6297 8.05974 15.7324 7.81538 15.6235L2.99281 13.4728C1.66906 12.8825 1.66906 11.1181 2.99281 10.5278L11.8905 6.55983C12.3193 6.36864 12.7513 6.82023 12.5414 7.24008L8.46623 15.3904Z" fill="currentColor"/>''',
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
