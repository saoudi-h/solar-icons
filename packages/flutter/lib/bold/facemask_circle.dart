// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `facemask-circle` icon in the bold style.
class FacemaskCircleBoldIcon extends StatelessWidget {
  /// Creates the `facemask-circle` icon in the bold style.
  const FacemaskCircleBoldIcon({
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
    name: 'facemask-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M21.8239 13.8782L17.712 15.5226L17.3321 20.4614C19.6316 19.0093 21.298 16.6457 21.8239 13.8782Z" fill="currentColor"/>
<path d="M15.7657 21.2667L16.21 15.4914L13.5784 14.4387C12.5652 14.0334 11.4348 14.0334 10.4216 14.4387L7.79004 15.4914L8.23427 21.2667C9.39657 21.7395 10.6679 22 12 22C13.3321 22 14.6034 21.7395 15.7657 21.2667Z" fill="currentColor"/>
<path d="M6.66789 20.4614L6.28929 15.5392L2.21174 14.0568C2.77423 16.7473 4.41806 19.0406 6.66789 20.4614Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M21.9982 12.193C21.9994 12.1288 22 12.0645 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 12.1294 2.00246 12.2582 2.00733 12.3864L6.98724 14.1969L9.8645 13.046C11.2354 12.4977 12.7646 12.4977 14.1355 13.046L17 14.1918L21.9982 12.193ZM16 10.5C16 11.3284 15.5523 12 15 12C14.4477 12 14 11.3284 14 10.5C14 9.67157 14.4477 9 15 9C15.5523 9 16 9.67157 16 10.5ZM9 12C9.55228 12 10 11.3284 10 10.5C10 9.67157 9.55228 9 9 9C8.44772 9 8 9.67157 8 10.5C8 11.3284 8.44772 12 9 12Z" fill="currentColor"/>''',
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
