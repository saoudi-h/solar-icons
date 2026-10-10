// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `women` icon in the boldDuotone style.
class WomenBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `women` icon in the boldDuotone style.
  const WomenBoldDuotoneIcon({
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
    name: 'women',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11.25 15.96V17.7497H9.5C9.08579 17.7497 8.75 18.0855 8.75 18.4997C8.75 18.9139 9.08579 19.2497 9.5 19.2497H11.25V21.9997C11.25 22.4139 11.5858 22.7497 12 22.7497C12.4142 22.7497 12.75 22.4139 12.75 21.9997V19.2497H14.5C14.9142 19.2497 15.25 18.9139 15.25 18.4997C15.25 18.0855 14.9142 17.7497 14.5 17.7497L12.75 17.7497V15.96C12.5036 15.9862 12.2534 15.9997 12 15.9997C11.7466 15.9997 11.4964 15.9862 11.25 15.96Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="9" r="7" fill="currentColor"/>''',
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
