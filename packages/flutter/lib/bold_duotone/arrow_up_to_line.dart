// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-up-to-line` icon in the boldDuotone style.
class ArrowUpToLineBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-up-to-line` icon in the boldDuotone style.
  const ArrowUpToLineBoldDuotoneIcon({
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
    name: 'arrow-up-to-line',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M4 2.25C3.58579 2.25 3.25 2.58579 3.25 3C3.25 3.41421 3.58579 3.75 4 3.75L20 3.75C20.4142 3.75 20.75 3.41421 20.75 3C20.75 2.58579 20.4142 2.25 20 2.25L4 2.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.2499 21L11.2499 9.93164L8.55361 12.8809C8.27418 13.1865 7.79975 13.208 7.49404 12.9287C7.18841 12.6493 7.1669 12.1748 7.44619 11.8691L11.4462 7.49414C11.5883 7.33874 11.7893 7.25 11.9999 7.25C12.2105 7.25 12.4115 7.33874 12.5536 7.49414L16.5536 11.8691C16.8329 12.1749 16.8114 12.6493 16.5058 12.9287C16.2001 13.208 15.7256 13.1865 15.4462 12.8809L12.7499 9.93164L12.7499 21C12.7499 21.4142 12.4141 21.75 11.9999 21.75C11.5857 21.75 11.2499 21.4142 11.2499 21Z" fill="currentColor"/>''',
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
