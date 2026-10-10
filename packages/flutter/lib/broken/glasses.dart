// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `glasses` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDE2QzIyIDE4LjIwOTEgMjAuMjA5MSAyMCAxOCAyMEMxNS43OTA5IDIwIDE0IDE4LjIwOTEgMTQgMTZDMTQgMTMuNzkwOSAxNS43OTA5IDEyIDE4IDEyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBjeD0iNiIgY3k9IjE2IiByPSI0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE0IDE2LjIxMzdMMTMuMzQ0MSAxNS45Nzk3QzEyLjQ3NDkgMTUuNjY5NSAxMS41MjUyIDE1LjY2OTUgMTAuNjU1OSAxNS45Nzk3TDEwIDE2LjIxMzciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMiAxNkwyLjc2MzE1IDcuNjA1MzJDMi44NzgwNyA2LjM0MTIxIDIuOTM1NTMgNS43MDkxNiAzLjMwNTU0IDUuMjQxOTlDMy42NzU1NCA0Ljc3NDgyIDQuMjc3NjMgNC41NzQxMiA1LjQ4MTgxIDQuMTcyNzNMNiA0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIyIDE2TDIxLjIzNjggNy42MDUzMkMyMS4xMjE5IDYuMzQxMjEgMjEuMDY0NSA1LjcwOTE2IDIwLjY5NDUgNS4yNDE5OUMyMC4zMjQ1IDQuNzc0ODIgMTkuNzIyNCA0LjU3NDEyIDE4LjUxODIgNC4xNzI3M0wxOCA0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class GlassesBrokenIcon extends StatelessWidget {
  /// Creates the `glasses` icon in the broken style.
  const GlassesBrokenIcon({
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
    name: 'glasses',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 16C22 18.2091 20.2091 20 18 20C15.7909 20 14 18.2091 14 16C14 13.7909 15.7909 12 18 12" stroke="currentColor" stroke-linecap="round"/>
<circle cx="6" cy="16" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 16.2137L13.3441 15.9797C12.4749 15.6695 11.5252 15.6695 10.6559 15.9797L10 16.2137" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 16L2.76315 7.60532C2.87807 6.34121 2.93553 5.70916 3.30554 5.24199C3.67554 4.77482 4.27763 4.57412 5.48181 4.17273L6 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 16L21.2368 7.60532C21.1219 6.34121 21.0645 5.70916 20.6945 5.24199C20.3245 4.77482 19.7224 4.57412 18.5182 4.17273L18 4" stroke="currentColor" stroke-linecap="round"/>''',
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
