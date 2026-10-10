// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-off` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDJMMiAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMi45NTkgMTQuNTA4NUMxMy44MjkzIDE0LjcwMjcgMTQuNjU4NSAxNS4xNjQyIDE1LjMzMzkgMTUuODkzMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik01LjMzMzAxIDEyLjI5NUM3Ljc4MDA2IDkuNjUzNzcgMTEuMjM3NiA4Ljc2Nzk0IDE0LjM2MjUgOS42Mzc1NCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNi43NjIyIDEwLjcwNTNDMTcuNDQyMyAxMS4xMzU1IDE4LjA4MzEgMTEuNjY1NCAxOC42NjY1IDEyLjI5NTEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMiA4LjY5Njk0QzYuMzg4NDMgMy45NjAyNCAxMi45NDM0IDIuOTg3MjkgMTguMjIxOSA1Ljc3ODExIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIwLjMyMTggNy4xNDU3NUMyMC45MDg4IDcuNjA3OTUgMjEuNDcwMyA4LjEyNTAzIDIyLjAwMDIgOC42OTY5OSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMi4wMTc2IDE5LjQ2NDRIMTIuMDE3NyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class WiFiOffLinearIcon extends StatelessWidget {
  /// Creates the `wi-fi-off` icon in the linear style.
  const WiFiOffLinearIcon({
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
    name: 'wi-fi-off',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 2L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.959 14.5085C13.8293 14.7027 14.6585 15.1642 15.3339 15.8931" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.33301 12.295C7.78006 9.65377 11.2376 8.76794 14.3625 9.63754" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.7622 10.7053C17.4423 11.1355 18.0831 11.6654 18.6665 12.2951" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 8.69694C6.38843 3.96024 12.9434 2.98729 18.2219 5.77811" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.3218 7.14575C20.9088 7.60795 21.4703 8.12503 22.0002 8.69699" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
