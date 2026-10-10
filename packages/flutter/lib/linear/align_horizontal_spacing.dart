// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zIDJMMyAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMSAyTDIxIDIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDRDMTAuMTE0NCA0IDkuMTcxNTcgNCA4LjU4NTc5IDQuNTg1NzlDOCA1LjE3MTU3IDggNi4xMTQzOCA4IDhMOCAxNkM4IDE3Ljg4NTYgOCAxOC44Mjg0IDguNTg1NzkgMTkuNDE0MkM5LjE3MTU3IDIwIDEwLjExNDQgMjAgMTIgMjBDMTMuODg1NiAyMCAxNC44Mjg0IDIwIDE1LjQxNDIgMTkuNDE0MkMxNiAxOC44Mjg0IDE2IDE3Ljg4NTYgMTYgMTZWOEMxNiA2LjExNDM4IDE2IDUuMTcxNTcgMTUuNDE0MiA0LjU4NTc5QzE0LjgyODQgNCAxMy44ODU2IDQgMTIgNFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class AlignHorizontalSpacingLinearIcon extends StatelessWidget {
  /// Creates the `align-horizontal-spacing` icon in the linear style.
  const AlignHorizontalSpacingLinearIcon({
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
    name: 'align-horizontal-spacing',
    style: SolarIconStyle.linear,
    body: r'''<path d="M3 2L3 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 2L21 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 4C10.1144 4 9.17157 4 8.58579 4.58579C8 5.17157 8 6.11438 8 8L8 16C8 17.8856 8 18.8284 8.58579 19.4142C9.17157 20 10.1144 20 12 20C13.8856 20 14.8284 20 15.4142 19.4142C16 18.8284 16 17.8856 16 16V8C16 6.11438 16 5.17157 15.4142 4.58579C14.8284 4 13.8856 4 12 4Z" stroke="currentColor" stroke-linecap="round"/>''',
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
