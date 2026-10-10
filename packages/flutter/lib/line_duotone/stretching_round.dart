// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `stretching-round` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTQuNSIgY3k9IjQuNSIgcj0iMi41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNy45NDgwNiAxMy40MzQ4TDcuOTIzMjggMTMuNDEwOUM2Ljg4MTQzIDEyLjQwNCA3LjY4NjQgMTAuNzg1MiA4LjU5MzIgMTAuMTQyN0M5LjUgOS41MDAxNiAxMy4zNDUxIDguNTAwMTYgMTMuMzQ1MSAxMy40MzQ1QzEzLjM0NTEgMTguMTI5IDkuNjk0NDIgMjIuMDAwMyA1IDIyLjAwMDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTkgMjEuOTk2MlYxOC4wNDkyQzE5IDE2LjI3MzMgMTcuMzk1IDE0LjkyMDEgMTUuNjI2NSAxNS4yMDUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class StretchingRoundLineDuotoneIcon extends StatelessWidget {
  /// Creates the `stretching-round` icon in the lineDuotone style.
  const StretchingRoundLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="14.5" cy="4.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 21.9962V18.0492C19 16.2733 17.395 14.9201 15.6265 15.205" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M7.94806 13.4348L7.92328 13.4109C6.88143 12.404 7.6864 10.7852 8.5932 10.1427C9.5 9.50016 13.3451 8.50016 13.3451 13.4345C13.3451 18.129 9.69442 22.0003 5 22.0003" stroke="currentColor" stroke-linecap="round"/>''',
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
