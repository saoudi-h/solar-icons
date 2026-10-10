// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cash-out` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNSAxMS40MzUyQzMuMjgwNTggMTEuMDE5NiAyIDkuNDI0NTcgMiA3LjUyMDM2QzIgNS4yOTk5OCAzLjc0MTExIDMuNSA1Ljg4ODg5IDMuNUgxOC4xMTExQzIwLjI1ODkgMy41IDIyIDUuMjk5OTggMjIgNy41MjAzNkMyMiA5LjQyNDU3IDIwLjcxOTQgMTEuMDE5NiAxOSAxMS40MzUyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNSAxNy41SDE5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTEyIDYuNVYxMy41TTEwIDExLjE2NjdMMTIgMTMuNUwxNCAxMS4xNjY3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTUgMTAuNUM1IDguNjE0MzggNSA3LjY3MTU3IDUuNTg1NzkgNy4wODU3OUM2LjE3MTU3IDYuNSA3LjExNDM4IDYuNSA5IDYuNUgxNUMxNi44ODU2IDYuNSAxNy44Mjg0IDYuNSAxOC40MTQyIDcuMDg1NzlDMTkgNy42NzE1NyAxOSA4LjYxNDM4IDE5IDEwLjVWMTYuNUMxOSAxOC4zODU2IDE5IDE5LjMyODQgMTguNDE0MiAxOS45MTQyQzE3LjgyODQgMjAuNSAxNi44ODU2IDIwLjUgMTUgMjAuNUg5QzcuMTE0MzggMjAuNSA2LjE3MTU3IDIwLjUgNS41ODU3OSAxOS45MTQyQzUgMTkuMzI4NCA1IDE4LjM4NTYgNSAxNi41VjEwLjVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class CashOutLineDuotoneIcon extends StatelessWidget {
  /// Creates the `cash-out` icon in the lineDuotone style.
  const CashOutLineDuotoneIcon({
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
    name: 'cash-out',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 6.5V13.5M10 11.1667L12 13.5L14 11.1667" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 10.5C5 8.61438 5 7.67157 5.58579 7.08579C6.17157 6.5 7.11438 6.5 9 6.5H15C16.8856 6.5 17.8284 6.5 18.4142 7.08579C19 7.67157 19 8.61438 19 10.5V16.5C19 18.3856 19 19.3284 18.4142 19.9142C17.8284 20.5 16.8856 20.5 15 20.5H9C7.11438 20.5 6.17157 20.5 5.58579 19.9142C5 19.3284 5 18.3856 5 16.5V10.5Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M5 11.4352C3.28058 11.0196 2 9.42457 2 7.52036C2 5.29998 3.74111 3.5 5.88889 3.5H18.1111C20.2589 3.5 22 5.29998 22 7.52036C22 9.42457 20.7194 11.0196 19 11.4352" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5 17.5H19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
