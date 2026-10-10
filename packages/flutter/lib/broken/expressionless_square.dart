// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `expressionless-square` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTkgMTZDMTAgMTYgMTAuODg0NiAxNiAxMiAxNkMxMy4xMTU0IDE2IDE0IDE2IDE1IDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIyIDEyQzIyIDE2LjcxNCAyMiAxOS4wNzExIDIwLjUzNTUgMjAuNTM1NUMxOS4wNzExIDIyIDE2LjcxNCAyMiAxMiAyMkM3LjI4NTk1IDIyIDQuOTI4OTMgMjIgMy40NjQ0NyAyMC41MzU1QzIgMTkuMDcxMSAyIDE2LjcxNCAyIDEyQzIgNy4yODU5NSAyIDQuOTI4OTMgMy40NjQ0NyAzLjQ2NDQ3QzQuOTI4OTMgMiA3LjI4NTk1IDIgMTIgMkMxNi43MTQgMiAxOS4wNzExIDIgMjAuNTM1NSAzLjQ2NDQ3QzIxLjUwOTMgNC40MzgyMSAyMS44MzU2IDUuODA2NTUgMjEuOTQ0OSA4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1LjUgMTAuNUMxNS41IDExLjA1MjMgMTUuMjc2MSAxMS41IDE1IDExLjVDMTQuNzIzOSAxMS41IDE0LjUgMTEuMDUyMyAxNC41IDEwLjVDMTQuNSA5Ljk0NzcyIDE0LjcyMzkgOS41IDE1IDkuNUMxNS4yNzYxIDkuNSAxNS41IDkuOTQ3NzIgMTUuNSAxMC41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGVsbGlwc2UgY3g9IjkiIGN5PSIxMC41IiByeD0iMC41IiByeT0iMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class ExpressionlessSquareBrokenIcon extends StatelessWidget {
  /// Creates the `expressionless-square` icon in the broken style.
  const ExpressionlessSquareBrokenIcon({
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
    name: 'expressionless-square',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9 16C10 16 10.8846 16 12 16C13.1154 16 14 16 15 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C21.5093 4.43821 21.8356 5.80655 21.9449 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 10.5C15.5 11.0523 15.2761 11.5 15 11.5C14.7239 11.5 14.5 11.0523 14.5 10.5C14.5 9.94772 14.7239 9.5 15 9.5C15.2761 9.5 15.5 9.94772 15.5 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="10.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>''',
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
