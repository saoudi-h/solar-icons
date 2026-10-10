// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik00LjUgMTJDNC41IDEzLjM4MDcgNS42MTkyOSAxNC41IDcgMTQuNUM4LjM4MDcxIDE0LjUgOS41IDEzLjM4MDcgOS41IDEyQzkuNSAxMC42MTkzIDguMzgwNzEgOS41IDcgOS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE3IDIxQzE4LjM4MDcgMjEgMTkuNSAxOS44ODA3IDE5LjUgMTguNUMxOS41IDE3LjExOTMgMTguMzgwNyAxNiAxNyAxNkMxNS42MTkzIDE2IDE0LjUgMTcuMTE5MyAxNC41IDE4LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTkuMTY1NSA2Ljc1MDQyQzE4LjQ3NTEgNy45NDYxNSAxNi45NDYxIDguMzU1ODQgMTUuNzUwNCA3LjY2NTQ4QzE0LjU1NDcgNi45NzUxMyAxNC4xNDUgNS40NDYxNSAxNC44MzU0IDQuMjUwNDJDMTUuNTI1NyAzLjA1NDY5IDE3LjA1NDcgMi42NDUgMTguMjUwNCAzLjMzNTM1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkuMDk2NDQgMTMuMzYyOEMxMS4wMzIyIDE0LjYyMSAxMi45Njc5IDE1Ljg3OTIgMTQuOTAzNiAxNy4xMzc0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkuMDk2NDQgMTAuNjM3MkMxMS4wMzIyIDkuMzc5IDEyLjk2NzkgOC4xMjA3OSAxNC45MDM2IDYuODYyNTgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class ShareBrokenIcon extends StatelessWidget {
  /// Creates the `share` icon in the broken style.
  const ShareBrokenIcon({
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
    name: 'share',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M4.5 12C4.5 13.3807 5.61929 14.5 7 14.5C8.38071 14.5 9.5 13.3807 9.5 12C9.5 10.6193 8.38071 9.5 7 9.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 21C18.3807 21 19.5 19.8807 19.5 18.5C19.5 17.1193 18.3807 16 17 16C15.6193 16 14.5 17.1193 14.5 18.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.1655 6.75042C18.4751 7.94615 16.9461 8.35584 15.7504 7.66548C14.5547 6.97513 14.145 5.44615 14.8354 4.25042C15.5257 3.05469 17.0547 2.645 18.2504 3.33535" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.09644 13.3628C11.0322 14.621 12.9679 15.8792 14.9036 17.1374" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.09644 10.6372C11.0322 9.379 12.9679 8.12079 14.9036 6.86258" stroke="currentColor" stroke-linecap="round"/>''',
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
