// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE2LjUgMjAuNDk5NkwxNyAxNC45OTk2TDEzLjg1NyAxMy43NDI0QzEyLjY2NDkgMTMuMjY1NiAxMS4zMzUxIDEzLjI2NTYgMTAuMTQzIDEzLjc0MjRMNyAxNC45OTk2TDcuNSAyMC40OTk2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcgMTVMMi41IDEzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE3IDE1TDIxLjUgMTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUuNSAxMC41QzE1LjUgMTEuMDUyMyAxNS4yNzYxIDExLjUgMTUgMTEuNUMxNC43MjM5IDExLjUgMTQuNSAxMS4wNTIzIDE0LjUgMTAuNUMxNC41IDkuOTQ3NzIgMTQuNzIzOSA5LjUgMTUgOS41QzE1LjI3NjEgOS41IDE1LjUgOS45NDc3MiAxNS41IDEwLjVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8ZWxsaXBzZSBjeD0iOSIgY3k9IjEwLjUiIHJ4PSIwLjUiIHJ5PSIxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class FacemaskCircleLinearIcon extends StatelessWidget {
  /// Creates the `facemask-circle` icon in the linear style.
  const FacemaskCircleLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 20.4996L17 14.9996L13.857 13.7424C12.6649 13.2656 11.3351 13.2656 10.143 13.7424L7 14.9996L7.5 20.4996" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 15L2.5 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 15L21.5 13" stroke="currentColor" stroke-linecap="round"/>
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
