// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `grid-3x2` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0LjU4MyAyMC45OTlDMTQuMzkzOCAyMC45OTkyIDE0LjE5OTYgMjEgMTQgMjFIMTBDOS44MDA0NCAyMSA5LjYwNjE2IDIwLjk5OTIgOS40MTY5OSAyMC45OTlWMTIuNzVIMTQuNTgzVjIwLjk5OVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTcuOTE2OTkgMjAuOTg2M0M1LjQ4OSAyMC45NDc1IDQuMTA0MzggMjAuNzYwNiAzLjE3MTg4IDE5LjgyODFDMi4wMDAzIDE4LjY1NjYgMiAxNi43NzEyIDIgMTNWMTIuNzVINy45MTY5OVYyMC45ODYzWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMjIgMTNDMjIgMTYuNzcxMiAyMS45OTk3IDE4LjY1NjYgMjAuODI4MSAxOS44MjgxQzE5Ljg5NTYgMjAuNzYwNiAxOC41MTEgMjAuOTQ3NSAxNi4wODMgMjAuOTg2M1YxMi43NUgyMlYxM1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTcuOTE2MDIgMTEuMjVIMlYxMUMyIDcuMjI4NzYgMi4wMDAzIDUuMzQzNDUgMy4xNzE4OCA0LjE3MTg4QzQuMTA0MjUgMy4yMzk1IDUuNDg4NjIgMy4wNTE1NiA3LjkxNjAyIDMuMDEyN1YxMS4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE0LjU4MyAxMS4yNUg5LjQxNjAyVjNIMTQuNTgzVjExLjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTYuMDgzIDMuMDEyN0MxOC41MTEgMy4wNTE1MiAxOS44OTU2IDMuMjM5MzcgMjAuODI4MSA0LjE3MTg4QzIxLjk5OTcgNS4zNDM0NSAyMiA3LjIyODc2IDIyIDExVjExLjI1SDE2LjA4M1YzLjAxMjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class Grid3x2BoldIcon extends StatelessWidget {
  /// Creates the `grid-3x2` icon in the bold style.
  const Grid3x2BoldIcon({
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
    name: 'grid-3x2',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M14.583 20.999C14.3938 20.9992 14.1996 21 14 21H10C9.80044 21 9.60616 20.9992 9.41699 20.999V12.75H14.583V20.999Z" fill="currentColor"/>
<path d="M7.91699 20.9863C5.489 20.9475 4.10438 20.7606 3.17188 19.8281C2.0003 18.6566 2 16.7712 2 13V12.75H7.91699V20.9863Z" fill="currentColor"/>
<path d="M22 13C22 16.7712 21.9997 18.6566 20.8281 19.8281C19.8956 20.7606 18.511 20.9475 16.083 20.9863V12.75H22V13Z" fill="currentColor"/>
<path d="M7.91602 11.25H2V11C2 7.22876 2.0003 5.34345 3.17188 4.17188C4.10425 3.2395 5.48862 3.05156 7.91602 3.0127V11.25Z" fill="currentColor"/>
<path d="M14.583 11.25H9.41602V3H14.583V11.25Z" fill="currentColor"/>
<path d="M16.083 3.0127C18.511 3.05152 19.8956 3.23937 20.8281 4.17188C21.9997 5.34345 22 7.22876 22 11V11.25H16.083V3.0127Z" fill="currentColor"/>''',
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
