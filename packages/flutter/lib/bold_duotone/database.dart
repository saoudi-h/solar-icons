// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `database` icon in the boldDuotone style.
class DatabaseBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `database` icon in the boldDuotone style.
  const DatabaseBoldDuotoneIcon({
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
    name: 'database',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 2C16.4183 2 20 3.79086 20 6C20 8.20914 16.4183 10 12 10C7.58172 10 4 8.20914 4 6C4 3.79086 7.58172 2 12 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 18C20 20.2091 16.4183 22 12 22C7.58172 22 4 20.2091 4 18V6C4 8.20914 7.58172 10 12 10C16.4183 10 20 8.20914 20 6V18Z" fill="currentColor"/>

<path opacity="0.5" d="M20 12C20 14.2091 16.4183 16 12 16C7.58172 16 4 14.2091 4 12V6C4 8.20914 7.58172 10 12 10C16.4183 10 20 8.20914 20 6V12Z" fill="currentColor"/>''',
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
