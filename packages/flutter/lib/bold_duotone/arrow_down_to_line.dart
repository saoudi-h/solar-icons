// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-down-to-line` icon in the boldDuotone style.
class ArrowDownToLineBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-down-to-line` icon in the boldDuotone style.
  const ArrowDownToLineBoldDuotoneIcon({
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
    name: 'arrow-down-to-line',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20 21.75C20.4142 21.75 20.75 21.4142 20.75 21C20.75 20.5858 20.4142 20.25 20 20.25L4 20.25C3.58579 20.25 3.25 20.5858 3.25 21C3.25 21.4142 3.58579 21.75 4 21.75L20 21.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.7501 3L12.7501 14.0684L15.4464 11.1191C15.7258 10.8135 16.2002 10.792 16.506 11.0713C16.8116 11.3507 16.8331 11.8252 16.5538 12.1309L12.5538 16.5059C12.4117 16.6613 12.2107 16.75 12.0001 16.75C11.7895 16.75 11.5885 16.6613 11.4464 16.5059L7.44639 12.1309C7.16709 11.8251 7.18861 11.3507 7.49424 11.0713C7.79995 10.792 8.27437 10.8135 8.55381 11.1191L11.2501 14.0684L11.2501 3C11.2501 2.58579 11.5859 2.25 12.0001 2.25C12.4143 2.25 12.7501 2.58579 12.7501 3Z" fill="currentColor"/>''',
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
