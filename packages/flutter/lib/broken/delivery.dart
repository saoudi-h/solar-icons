// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `delivery` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE5LjE2NDcgNi4yMzU4QzE4LjY3OTcgNC40ODAyMyAxOC40MzcyIDMuNjAyNDQgMTcuNzI0MiAzLjIwMzE5QzE3LjAxMTMgMi44MDM5NCAxNi4xMDYyIDMuMDM5MTUgMTQuMjk2MiAzLjUwOTU1TDEyLjM3NjMgNC4wMDg0OUMxMC41NjYyIDQuNDc4ODkgOS42NjExOSA0LjcxNDA5IDkuMjQ5NTQgNS40MDU2MkM4LjgzNzkgNi4wOTcxNCA5LjA4MDQgNi45NzQ5MiA5LjU2NTQxIDguNzMwNDlMMTAuMDc5OCAxMC41OTI2QzEwLjU2NDggMTIuMzQ4MSAxMC44MDczIDEzLjIyNTkgMTEuNTIwMyAxMy42MjUyQzEyLjIzMzMgMTQuMDI0NCAxMy4xMzg0IDEzLjc4OTIgMTQuOTQ4NCAxMy4zMTg4TDE2Ljg2ODMgMTIuODE5OUMxOC42Nzg0IDEyLjM0OTUgMTkuNTgzNCAxMi4xMTQzIDE5Ljk5NSAxMS40MjI3QzIwLjIyMTIgMTEuMDQyOSAyMC4yNDk5IDEwLjYwNjkgMjAuMTQ5NSAxMCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04LjIzIDE1LjA2MDJMNi4wOCA3LjI3MDE0QzUuODk0NTMgNi42MTczMiA1LjM4NTYzIDYuMTIwMzYgNC43IDUuOTJMMyA1LjQ1MDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSI4LjA0OTkiIGN5PSIxOC4xMDAyIiByPSIyLjkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAuOTE5OSAxNy4zNkwxOS45OTk5IDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class DeliveryBrokenIcon extends StatelessWidget {
  /// Creates the `delivery` icon in the broken style.
  const DeliveryBrokenIcon({
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
    name: 'delivery',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M19.1647 6.2358C18.6797 4.48023 18.4372 3.60244 17.7242 3.20319C17.0113 2.80394 16.1062 3.03915 14.2962 3.50955L12.3763 4.00849C10.5662 4.47889 9.66119 4.71409 9.24954 5.40562C8.8379 6.09714 9.0804 6.97492 9.56541 8.73049L10.0798 10.5926C10.5648 12.3481 10.8073 13.2259 11.5203 13.6252C12.2333 14.0244 13.1384 13.7892 14.9484 13.3188L16.8683 12.8199C18.6784 12.3495 19.5834 12.1143 19.995 11.4227C20.2212 11.0429 20.2499 10.6069 20.1495 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.23 15.0602L6.08 7.27014C5.89453 6.61732 5.38563 6.12036 4.7 5.92L3 5.4502" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.0499" cy="18.1002" r="2.9" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.9199 17.36L19.9999 15" stroke="currentColor" stroke-linecap="round"/>''',
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
