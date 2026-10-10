// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-left-to-line` icon in the boldDuotone style.
class ArrowLeftToLineBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-left-to-line` icon in the boldDuotone style.
  const ArrowLeftToLineBoldDuotoneIcon({
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
    name: 'arrow-left-to-line',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.75 4C21.75 3.58579 21.4142 3.25 21 3.25C20.5858 3.25 20.25 3.58579 20.25 4L20.25 20C20.25 20.4142 20.5858 20.75 21 20.75C21.4142 20.75 21.75 20.4142 21.75 20L21.75 4Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3 11.2499L14.0684 11.2499L11.1191 8.55361C10.8135 8.27418 10.792 7.79975 11.0713 7.49404C11.3507 7.18841 11.8252 7.1669 12.1309 7.44619L16.5059 11.4462C16.6613 11.5883 16.75 11.7893 16.75 11.9999C16.75 12.2105 16.6613 12.4115 16.5059 12.5536L12.1309 16.5536C11.8251 16.8329 11.3507 16.8114 11.0713 16.5058C10.792 16.2001 10.8135 15.7256 11.1191 15.4462L14.0684 12.7499L3 12.7499C2.58579 12.7499 2.25 12.4141 2.25 11.9999C2.25 11.5857 2.58579 11.2499 3 11.2499Z" fill="currentColor"/>''',
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
