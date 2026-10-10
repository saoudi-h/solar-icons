// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `restart` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE5LjcyODUgMTAuOTI3N0MyMC40NDEzIDEzLjU5NjcgMTkuNzUwNyAxNi41NjI0IDE3LjY1NjkgMTguNjU2MkMxNS4xNzk4IDIxLjEzMzMgMTEuNDgyNiAyMS42NDY0IDguNSAyMC4xOTU1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTE4LjM2NCA4LjA0OTI4TDE3LjY1NjkgNy4zNDIxN00xNC4xMjE0IDguMDQ5MjhIMTguMzY0VjMuODA2NjQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNNS43NTM3NCAxNy45OTk1QzMuMjMzMTYgMTQuODU4MyAzLjQyOTYzIDEwLjI1NjcgNi4zNDMxNSA3LjM0MzE1QzkuNDY3MzQgNC4yMTg5NSAxNC41MzI3IDQuMjE4OTUgMTcuNjU2OSA3LjM0MzE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class RestartBrokenIcon extends StatelessWidget {
  /// Creates the `restart` icon in the broken style.
  const RestartBrokenIcon({
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
    name: 'restart',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M19.7285 10.9277C20.4413 13.5967 19.7507 16.5624 17.6569 18.6562C15.1798 21.1333 11.4826 21.6464 8.5 20.1955" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.364 8.04928L17.6569 7.34217M14.1214 8.04928H18.364V3.80664" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.75374 17.9995C3.23316 14.8583 3.42963 10.2567 6.34315 7.34315C9.46734 4.21895 14.5327 4.21895 17.6569 7.34315" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
