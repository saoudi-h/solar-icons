// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `smartphone-rotate-angle` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTUgNUg5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwLjUgMjAuNjQzNVYyMkwxMiAyMC42ODc1TDEwLjUgMTkuMzc1VjIwLjY0MzVaTTEwLjUgMjAuNjQzNUM1LjY4ODc0IDIwLjM1ODUgMiAxOC43MjM5IDIgMTYuNzVDMiAxNi4xMjE0IDIuMzc0MTIgMTUuNTI3MiAzLjAzOTQ3IDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjAuOTYwNSAxNUMyMS42MjU5IDE1LjUyNzIgMjIgMTYuMTIxNCAyMiAxNi43NUMyMiAxOC41ODQ3IDE4LjgxMzEgMjAuMTI2MyAxNC41IDIwLjU2MzUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNS41MDE3NCAxN0M1LjUgMTYuNjg3OCA1LjUgMTYuMzU1IDUuNSAxNlY4QzUuNSA1LjE3MTU3IDUuNSAzLjc1NzM2IDYuMzc4NjggMi44Nzg2OEM3LjI1NzM2IDIgOC42NzE1NyAyIDExLjUgMkgxMi41QzE1LjMyODQgMiAxNi43NDI2IDIgMTcuNjIxMyAyLjg3ODY4QzE4LjUgMy43NTczNiAxOC41IDUuMTcxNTcgMTguNSA4VjE2QzE4LjUgMTYuMzU1IDE4LjUgMTYuNjg3OCAxOC40OTgzIDE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SmartphoneRotateAngleLineDuotoneIcon extends StatelessWidget {
  /// Creates the `smartphone-rotate-angle` icon in the lineDuotone style.
  const SmartphoneRotateAngleLineDuotoneIcon({
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
    name: 'smartphone-rotate-angle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M10.5 20.6435V22L12 20.6875L10.5 19.375V20.6435ZM10.5 20.6435C5.68874 20.3585 2 18.7239 2 16.75C2 16.1214 2.37412 15.5272 3.03947 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.50174 17C5.5 16.6878 5.5 16.355 5.5 16V8C5.5 5.17157 5.5 3.75736 6.37868 2.87868C7.25736 2 8.67157 2 11.5 2H12.5C15.3284 2 16.7426 2 17.6213 2.87868C18.5 3.75736 18.5 5.17157 18.5 8V16C18.5 16.355 18.5 16.6878 18.4983 17" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M15 5H9" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M20.9605 15C21.6259 15.5272 22 16.1214 22 16.75C22 18.5847 18.8131 20.1263 14.5 20.5635" stroke="currentColor" stroke-linecap="round"/>''',
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
