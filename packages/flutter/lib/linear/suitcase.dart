// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `suitcase` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTRDMiAxMC4yMjg4IDIgOC4zNDMxNSAzLjE3MTU3IDcuMTcxNTdDNC4zNDMxNSA2IDYuMjI4NzYgNiAxMCA2SDE0QzE3Ljc3MTIgNiAxOS42NTY5IDYgMjAuODI4NCA3LjE3MTU3QzIyIDguMzQzMTUgMjIgMTAuMjI4OCAyMiAxNEMyMiAxNy43NzEyIDIyIDE5LjY1NjkgMjAuODI4NCAyMC44Mjg0QzE5LjY1NjkgMjIgMTcuNzcxMiAyMiAxNCAyMkgxMEM2LjIyODc2IDIyIDQuMzQzMTUgMjIgMy4xNzE1NyAyMC44Mjg0QzIgMTkuNjU2OSAyIDE3Ljc3MTIgMiAxNFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTYgNkMxNiA0LjExNDM4IDE2IDMuMTcxNTcgMTUuNDE0MiAyLjU4NTc5QzE0LjgyODQgMiAxMy44ODU2IDIgMTIgMkMxMC4xMTQ0IDIgOS4xNzE1NyAyIDguNTg1NzkgMi41ODU3OUM4IDMuMTcxNTcgOCA0LjExNDM4IDggNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDlIOC4wMDAxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTE2IDlIMTYuMDAwMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class SuitcaseLinearIcon extends StatelessWidget {
  /// Creates the `suitcase` icon in the linear style.
  const SuitcaseLinearIcon({
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
    name: 'suitcase',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 14C2 10.2288 2 8.34315 3.17157 7.17157C4.34315 6 6.22876 6 10 6H14C17.7712 6 19.6569 6 20.8284 7.17157C22 8.34315 22 10.2288 22 14C22 17.7712 22 19.6569 20.8284 20.8284C19.6569 22 17.7712 22 14 22H10C6.22876 22 4.34315 22 3.17157 20.8284C2 19.6569 2 17.7712 2 14Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 6C16 4.11438 16 3.17157 15.4142 2.58579C14.8284 2 13.8856 2 12 2C10.1144 2 9.17157 2 8.58579 2.58579C8 3.17157 8 4.11438 8 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 9H8.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16 9H16.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
