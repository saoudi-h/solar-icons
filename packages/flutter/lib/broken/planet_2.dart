// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `planet-2` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjY3MTMgNi4yMjQ3QzE5Ljc3MzQgNS44MTA0NCAyMS4zMjQ4IDUuOTU3MTggMjEuODI5MSA2Ljc2MzI3QzIyLjg0MDMgOC4zNzk0NyAxOS4yNTk0IDEyLjAzNDIgMTMuODMwOSAxNC45MjY0QzguNDAyNDIgMTcuODE4NSAzLjE4MjAzIDE4Ljg1MjkgMi4xNzA4NSAxNy4yMzY3QzEuNjU1MTkgMTYuNDEyNSAyLjMzMzc2IDE1LjA1ODIgMy44NDI1OSAxMy41NDUyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1kYXNoYXJyYXk9IjMuNSAyLjUiLz4KPHBhdGggZD0iTTggNS4wNzAyNkM5LjE3NjY5IDQuMzg5NTggMTAuNTQyOSA0IDEyIDRDMTYuNDE4MyA0IDIwIDcuNTgxNzIgMjAgMTJDMjAgMTYuNDE4MyAxNi40MTgzIDIwIDEyIDIwQzcuNTgxNzIgMjAgNCAxNi40MTgzIDQgMTJDNCAxMC41NDI5IDQuMzg5NTggOS4xNzY2OSA1LjA3MDI2IDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class Planet2BrokenIcon extends StatelessWidget {
  /// Creates the `planet-2` icon in the broken style.
  const Planet2BrokenIcon({
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
    name: 'planet-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M17.6713 6.2247C19.7734 5.81044 21.3248 5.95718 21.8291 6.76327C22.8403 8.37947 19.2594 12.0342 13.8309 14.9264C8.40242 17.8185 3.18203 18.8529 2.17085 17.2367C1.65519 16.4125 2.33376 15.0582 3.84259 13.5452" stroke="currentColor" stroke-linecap="round" stroke-dasharray="3.5 2.5"/>
<path d="M8 5.07026C9.17669 4.38958 10.5429 4 12 4C16.4183 4 20 7.58172 20 12C20 16.4183 16.4183 20 12 20C7.58172 20 4 16.4183 4 12C4 10.5429 4.38958 9.17669 5.07026 8" stroke="currentColor" stroke-linecap="round"/>''',
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
