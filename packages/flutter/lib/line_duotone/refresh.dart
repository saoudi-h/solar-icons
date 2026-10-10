// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `refresh` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuNjc5ODEgMTNMMy42Nzk4MSAxMS4zMzMzQzMuNjc5ODEgNi43MzA5NiA3LjQ0MDIgMyAxMi4wNzg5IDNDMTUuMTE3OCAzIDE3Ljc3OTkgNC42MDEzNiAxOS4yNTQ1IDdNMiAxMS4zMzMzTDMuNjc5ODEgMTNMNS4zNTk2MiAxMS4zMzMzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjAuMzEzNyAxMVYxMi42NjY3QzIwLjMxMzcgMTcuMjY5IDE2LjUzODkgMjEgMTEuODgyNSAyMUM4LjgzMTg5IDIxIDYuMTU5NyAxOS4zOTg2IDQuNjc5NDQgMTdNMjEuOTk5OSAxMi42NjY3TDIwLjMxMzcgMTFMMTguNjI3NCAxMi42NjY3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class RefreshLineDuotoneIcon extends StatelessWidget {
  /// Creates the `refresh` icon in the lineDuotone style.
  const RefreshLineDuotoneIcon({
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
    name: 'refresh',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3.67981 13L3.67981 11.3333C3.67981 6.73096 7.4402 3 12.0789 3C15.1178 3 17.7799 4.60136 19.2545 7M2 11.3333L3.67981 13L5.35962 11.3333" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.3137 11V12.6667C20.3137 17.269 16.5389 21 11.8825 21C8.83189 21 6.1597 19.3986 4.67944 17M21.9999 12.6667L20.3137 11L18.6274 12.6667" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
