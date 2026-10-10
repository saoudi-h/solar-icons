// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-arrow-down` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2LjU5NzQgMTRMMTMuNDcyNSAyMS4wMDcyQzEyLjg4MjIgMjIuMzMwOSAxMS4xMTc4IDIyLjMzMDkgMTAuNTI3NSAyMS4wMDcyTDMuMTY0OTYgNC40OTc0NkMyLjQ5Nzg5IDMuMDAxNjMgMy45NzkxNCAxLjQ1MDA3IDUuMzY2ODkgMi4xOTA5OUwxMS4yNzA2IDUuMzQzMDJDMTEuNzI5OCA1LjU4ODE4IDEyLjI3MDIgNS41ODgxNyAxMi43Mjk0IDUuMzQzMDJMMTguNjMzMSAyLjE5MDk5QzIwLjAyMDkgMS40NTAwNiAyMS41MDIxIDMuMDAxNjMgMjAuODM1IDQuNDk3NDZMMTguNzE2MiA5LjI0ODczIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class MapArrowDownBrokenIcon extends StatelessWidget {
  /// Creates the `map-arrow-down` icon in the broken style.
  const MapArrowDownBrokenIcon({
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
    name: 'map-arrow-down',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M16.5974 14L13.4725 21.0072C12.8822 22.3309 11.1178 22.3309 10.5275 21.0072L3.16496 4.49746C2.49789 3.00163 3.97914 1.45007 5.36689 2.19099L11.2706 5.34302C11.7298 5.58818 12.2702 5.58817 12.7294 5.34302L18.6331 2.19099C20.0209 1.45006 21.5021 3.00163 20.835 4.49746L18.7162 9.24873" stroke="currentColor" stroke-linecap="round"/>''',
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
