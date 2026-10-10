// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `stretching-round` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTQuNSIgY3k9IjQuNSIgcj0iMi41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE5IDIxLjk5NTlWMTguMDQ4OUMxOSAxNi4yNzMgMTcuMzk1IDE0LjkxOTkgMTUuNjI2NSAxNS4yMDQ3TTcuOTQ4MDYgMTMuNDM0OEw3LjkyMzI4IDEzLjQxMDlDNi44ODE0MyAxMi40MDQgNy42ODY0IDEwLjc4NTIgOC41OTMyIDEwLjE0MjdDOS41IDkuNTAwMTYgMTMuMzQ1MSA4LjUwMDE2IDEzLjM0NTEgMTMuNDM0NUMxMy4zNDUxIDE1LjEyNzMgMTIuODcwNCAxNi43MTMxIDEyLjA0MzMgMTguMDQ4OU01IDIyLjAwMDNDNi40NjA1MyAyMi4wMDAzIDcuODIwMDMgMjEuNjI1NiA5IDIwLjk2NzkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class StretchingRoundBrokenIcon extends StatelessWidget {
  /// Creates the `stretching-round` icon in the broken style.
  const StretchingRoundBrokenIcon({
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
    name: 'stretching-round',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="14.5" cy="4.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 21.9959V18.0489C19 16.273 17.395 14.9199 15.6265 15.2047M7.94806 13.4348L7.92328 13.4109C6.88143 12.404 7.6864 10.7852 8.5932 10.1427C9.5 9.50016 13.3451 8.50016 13.3451 13.4345C13.3451 15.1273 12.8704 16.7131 12.0433 18.0489M5 22.0003C6.46053 22.0003 7.82003 21.6256 9 20.9679" stroke="currentColor" stroke-linecap="round"/>''',
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
