// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bicycling` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTUiIGN5PSI0IiByPSIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBjeD0iNiIgY3k9IjE4IiByPSIzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBjeD0iMTgiIGN5PSIxOCIgcj0iMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOC41IDkuOTk5NTFIMTYuNDc0NEMxNS4yNTM0IDkuOTk5NTEgMTQuNjQyOSA5Ljk5OTUxIDE0LjA5MzQgOS43NzI5MkMxMy41NDQgOS41NDYzMyAxMy4xMTEgOS4xMTU5NyAxMi4yNDQ5IDguMjU1MjRMMTEuNjY3NiA3LjY4MTQ1QzEwLjg4MjggNi45MDE1MiAxMC40OTA0IDYuNTExNTUgMTAuMDI1NyA2LjU1MzlDOS41NjEwMiA2LjU5NjI0IDkuMjQ1NTkgNy4wNTA3MSA4LjYxNDcxIDcuOTU5NjRMNy4zODgwOSA5LjcyNjg5QzYuNzQ1NzMgMTAuNjUyNCA2LjQyNDU0IDExLjExNTEgNi41NTM0OCAxMS41Njk4QzYuNjgyNDIgMTIuMDI0NiA3LjE5ODcgMTIuMjQ5OCA4LjIzMTI1IDEyLjcwMDRMOS43MDY5NSAxMy4zNDQzQzExLjA3MDkgMTMuOTM5NCAxMS43NTI5IDE0LjIzNyAxMi4wODEgMTQuODM2OUMxMi40MDkxIDE1LjQzNjggMTIuMjkxOCAxNi4xNzE1IDEyLjA1NzIgMTcuNjQxMUwxMiAxNy45OTk1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class BicyclingLinearIcon extends StatelessWidget {
  /// Creates the `bicycling` icon in the linear style.
  const BicyclingLinearIcon({
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
    name: 'bicycling',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="15" cy="4" r="2" stroke="currentColor" stroke-linecap="round"/>
<circle cx="6" cy="18" r="3" stroke="currentColor" stroke-linecap="round"/>
<circle cx="18" cy="18" r="3" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.5 9.99951H16.4744C15.2534 9.99951 14.6429 9.99951 14.0934 9.77292C13.544 9.54633 13.111 9.11597 12.2449 8.25524L11.6676 7.68145C10.8828 6.90152 10.4904 6.51155 10.0257 6.5539C9.56102 6.59624 9.24559 7.05071 8.61471 7.95964L7.38809 9.72689C6.74573 10.6524 6.42454 11.1151 6.55348 11.5698C6.68242 12.0246 7.1987 12.2498 8.23125 12.7004L9.70695 13.3443C11.0709 13.9394 11.7529 14.237 12.081 14.8369C12.4091 15.4368 12.2918 16.1715 12.0572 17.6411L12 17.9995" stroke="currentColor" stroke-linecap="round"/>''',
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
