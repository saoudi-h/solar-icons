// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik00IDEwQzQgNi4yMjg3NiA0IDQuMzQzMTUgNS4xNzE1NyAzLjE3MTU3QzYuMzQzMTUgMiA4LjIyODc2IDIgMTIgMkMxNS43NzEyIDIgMTcuNjU2OSAyIDE4LjgyODQgMy4xNzE1N0MyMCA0LjM0MzE1IDIwIDYuMjI4NzYgMjAgMTBWMTRDMjAgMTcuNzcxMiAyMCAxOS42NTY5IDE4LjgyODQgMjAuODI4NEMxNy42NTY5IDIyIDE1Ljc3MTIgMjIgMTIgMjJDOC4yMjg3NiAyMiA2LjM0MzE1IDIyIDUuMTcxNTcgMjAuODI4NEM0IDE5LjY1NjkgNCAxNy43NzEyIDQgMTRWMTBaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1IDE5SDkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTYuNzQ4NCAyLjM3NzkzTDE2LjY2NDMgMi41MDQxQzE1LjkwODIgMy42MzgxOCAxNS41MzAyIDQuMjA1MjUgMTQuOTc4IDQuNTQ4MzZDMTQuODY4MiA0LjYxNjU4IDE0Ljc1NDEgNC42Nzc2NCAxNC42MzY1IDQuNzMxMTVDMTQuMDQ0NyA1LjAwMDI1IDEzLjM2MzIgNS4wMDAyNSAxMi4wMDAyIDUuMDAwMjVDMTAuNjM3MSA1LjAwMDI1IDkuOTU1NjQgNS4wMDAyNSA5LjM2Mzg3IDQuNzMxMTVDOS4yNDYyIDQuNjc3NjQgOS4xMzIxMSA0LjYxNjU4IDkuMDIyMzIgNC41NDgzNkM4LjQ3MDE2IDQuMjA1MjQgOC4wOTIxMyAzLjYzODIgNy4zMzYwNiAyLjUwNDFMNy4yNTE5NSAyLjM3NzkzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class IPhoneLinearIcon extends StatelessWidget {
  /// Creates the `i-phone` icon in the linear style.
  const IPhoneLinearIcon({
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
    name: 'i-phone',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4 10C4 6.22876 4 4.34315 5.17157 3.17157C6.34315 2 8.22876 2 12 2C15.7712 2 17.6569 2 18.8284 3.17157C20 4.34315 20 6.22876 20 10V14C20 17.7712 20 19.6569 18.8284 20.8284C17.6569 22 15.7712 22 12 22C8.22876 22 6.34315 22 5.17157 20.8284C4 19.6569 4 17.7712 4 14V10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 19H9" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.7484 2.37793L16.6643 2.5041C15.9082 3.63818 15.5302 4.20525 14.978 4.54836C14.8682 4.61658 14.7541 4.67764 14.6365 4.73115C14.0447 5.00025 13.3632 5.00025 12.0002 5.00025C10.6371 5.00025 9.95564 5.00025 9.36387 4.73115C9.2462 4.67764 9.13211 4.61658 9.02232 4.54836C8.47016 4.20524 8.09213 3.6382 7.33606 2.5041L7.25195 2.37793" stroke="currentColor" stroke-linecap="round"/>''',
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
