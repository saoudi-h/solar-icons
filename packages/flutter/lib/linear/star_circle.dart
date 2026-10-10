// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwLjU3NjYgOC4yMDQxOUMxMS4yMDk5IDcuMDY4MDYgMTEuNTI2NiA2LjUgMTIgNi41QzEyLjQ3MzQgNi41IDEyLjc5MDEgNy4wNjgwNiAxMy40MjM0IDguMjA0MTlMMTMuNTg3MyA4LjQ5ODEyQzEzLjc2NzIgOC44MjA5NyAxMy44NTcyIDguOTgyMzkgMTMuOTk3NSA5LjA4ODlDMTQuMTM3OCA5LjE5NTQxIDE0LjMxMjYgOS4yMzQ5NSAxNC42NjIxIDkuMzE0MDJMMTQuOTgwMiA5LjM4NjAxQzE2LjIxMDEgOS42NjQyOCAxNi44MjUgOS44MDM0MSAxNi45NzEzIDEwLjI3MzlDMTcuMTE3NiAxMC43NDQzIDE2LjY5ODQgMTEuMjM0NSAxNS44NiAxMi4yMTVMMTUuNjQzIDEyLjQ2ODZDMTUuNDA0OCAxMi43NDcyIDE1LjI4NTcgMTIuODg2NSAxNS4yMzIxIDEzLjA1ODlDMTUuMTc4NSAxMy4yMzEyIDE1LjE5NjUgMTMuNDE3MSAxNS4yMzI1IDEzLjc4ODhMMTUuMjY1MyAxNC4xMjcyQzE1LjM5MjEgMTUuNDM1MyAxNS40NTU0IDE2LjA4OTQgMTUuMDcyNCAxNi4zODAxQzE0LjY4OTQgMTYuNjcwOSAxNC4xMTM3IDE2LjQwNTggMTIuOTYyMiAxNS44NzU2TDEyLjY2NDMgMTUuNzM4NEMxMi4zMzcgMTUuNTg3OCAxMi4xNzM0IDE1LjUxMjQgMTIgMTUuNTEyNEMxMS44MjY2IDE1LjUxMjQgMTEuNjYzIDE1LjU4NzggMTEuMzM1NyAxNS43Mzg0TDExLjAzNzggMTUuODc1NkM5Ljg4NjM0IDE2LjQwNTggOS4zMTA1OSAxNi42NzA5IDguOTI3NTcgMTYuMzgwMUM4LjU0NDU2IDE2LjA4OTQgOC42MDc5NCAxNS40MzUzIDguNzM0NyAxNC4xMjcyTDguNzY3NDkgMTMuNzg4OEM4LjgwMzUxIDEzLjQxNzEgOC44MjE1MiAxMy4yMzEyIDguNzY3OTMgMTMuMDU4OUM4LjcxNDM0IDEyLjg4NjUgOC41OTUyMSAxMi43NDcyIDguMzU2OTYgMTIuNDY4Nkw4LjE0MDA1IDEyLjIxNUM3LjMwMTYyIDExLjIzNDUgNi44ODI0MSAxMC43NDQzIDcuMDI4NzEgMTAuMjczOUM3LjE3NTAxIDkuODAzNDEgNy43ODk5MyA5LjY2NDI4IDkuMDE5NzcgOS4zODYwMUw5LjMzNzk0IDkuMzE0MDJDOS42ODc0MyA5LjIzNDk1IDkuODYyMTcgOS4xOTU0MSAxMC4wMDI1IDkuMDg4OUMxMC4xNDI4IDguOTgyMzkgMTAuMjMyOCA4LjgyMDk3IDEwLjQxMjcgOC40OTgxMkwxMC41NzY2IDguMjA0MTlaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class StarCircleLinearIcon extends StatelessWidget {
  /// Creates the `star-circle` icon in the linear style.
  const StarCircleLinearIcon({
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
    name: 'star-circle',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5766 8.20419C11.2099 7.06806 11.5266 6.5 12 6.5C12.4734 6.5 12.7901 7.06806 13.4234 8.20419L13.5873 8.49812C13.7672 8.82097 13.8572 8.98239 13.9975 9.0889C14.1378 9.19541 14.3126 9.23495 14.6621 9.31402L14.9802 9.38601C16.2101 9.66428 16.825 9.80341 16.9713 10.2739C17.1176 10.7443 16.6984 11.2345 15.86 12.215L15.643 12.4686C15.4048 12.7472 15.2857 12.8865 15.2321 13.0589C15.1785 13.2312 15.1965 13.4171 15.2325 13.7888L15.2653 14.1272C15.3921 15.4353 15.4554 16.0894 15.0724 16.3801C14.6894 16.6709 14.1137 16.4058 12.9622 15.8756L12.6643 15.7384C12.337 15.5878 12.1734 15.5124 12 15.5124C11.8266 15.5124 11.663 15.5878 11.3357 15.7384L11.0378 15.8756C9.88634 16.4058 9.31059 16.6709 8.92757 16.3801C8.54456 16.0894 8.60794 15.4353 8.7347 14.1272L8.76749 13.7888C8.80351 13.4171 8.82152 13.2312 8.76793 13.0589C8.71434 12.8865 8.59521 12.7472 8.35696 12.4686L8.14005 12.215C7.30162 11.2345 6.88241 10.7443 7.02871 10.2739C7.17501 9.80341 7.78993 9.66428 9.01977 9.38601L9.33794 9.31402C9.68743 9.23495 9.86217 9.19541 10.0025 9.0889C10.1428 8.98239 10.2328 8.82097 10.4127 8.49812L10.5766 8.20419Z" stroke="currentColor" stroke-linecap="round"/>''',
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
