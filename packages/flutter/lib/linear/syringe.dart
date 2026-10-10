// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `syringe` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYuMTgxODIgMTcuODE4MkM0LjE3MzUxIDE1LjgwOTkgNC4xNzM1MSAxMi41NTM4IDYuMTgxODIgMTAuNTQ1NUwxMC40NjQ2IDYuMjYyNjNDMTEuMjE4MyA1LjUwODkzIDExLjU5NTIgNS4xMzIwOCAxMi4wMjM3IDQuOTc2MTFDMTIuNDc4MiA0LjgxMDcgMTIuOTc2NCA0LjgxMDcgMTMuNDMwOCA0Ljk3NjExQzEzLjg1OTQgNS4xMzIwOCAxNC4yMzYyIDUuNTA4OTMgMTQuOTg5OSA2LjI2MjYzTDE3LjczNzQgOS4wMTAxQzE4LjQ5MTEgOS43NjM4IDE4Ljg2NzkgMTAuMTQwNiAxOS4wMjM5IDEwLjU2OTJDMTkuMTg5MyAxMS4wMjM2IDE5LjE4OTMgMTEuNTIxOCAxOS4wMjM5IDExLjk3NjNDMTguODY3OSAxMi40MDQ4IDE4LjQ5MTEgMTIuNzgxNyAxNy43Mzc0IDEzLjUzNTRMMTMuNDU0NSAxNy44MTgyQzExLjQ0NjIgMTkuODI2NSA4LjE5MDEzIDE5LjgyNjUgNi4xODE4MiAxNy44MTgyWk02LjE4MTgyIDE3LjgxODJMNCAyME0xNi4zNjM2IDcuNjM2MzZMMTguNTQ1NSA1LjQ1NDU1TTE4LjU0NTUgNS40NTQ1NUwyMCA2LjkwOTA5TTE4LjU0NTUgNS40NTQ1NUwxNy4wOTA5IDRNMTcuMDkwOSAxNC4xODE4TDkuODE4MTggNi45MDkwOU0xNC45MDkxIDE2LjM2MzZMMTIuMDIzNyAxMy40NzgzTTEzLjI3MjcgMThMMTEuNjI2OCAxNi4zNTQxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SyringeLinearIcon extends StatelessWidget {
  /// Creates the `syringe` icon in the linear style.
  const SyringeLinearIcon({
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
    name: 'syringe',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M6.18182 17.8182C4.17351 15.8099 4.17351 12.5538 6.18182 10.5455L10.4646 6.26263C11.2183 5.50893 11.5952 5.13208 12.0237 4.97611C12.4782 4.8107 12.9764 4.8107 13.4308 4.97611C13.8594 5.13208 14.2362 5.50893 14.9899 6.26263L17.7374 9.0101C18.4911 9.7638 18.8679 10.1406 19.0239 10.5692C19.1893 11.0236 19.1893 11.5218 19.0239 11.9763C18.8679 12.4048 18.4911 12.7817 17.7374 13.5354L13.4545 17.8182C11.4462 19.8265 8.19013 19.8265 6.18182 17.8182ZM6.18182 17.8182L4 20M16.3636 7.63636L18.5455 5.45455M18.5455 5.45455L20 6.90909M18.5455 5.45455L17.0909 4M17.0909 14.1818L9.81818 6.90909M14.9091 16.3636L12.0237 13.4783M13.2727 18L11.6268 16.3541" stroke="currentColor" stroke-linecap="round"/>''',
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
