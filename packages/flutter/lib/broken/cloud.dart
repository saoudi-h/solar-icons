// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cloud` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDE0LjM1MjlDMjIgMTcuNDcxNyAxOS40NDE2IDIwIDE2LjI4NTcgMjBIMTFNMTQuMzgxIDkuMDI3MjFDMTQuOTc2NyA4LjgxOTExIDE1LjYxNzggOC43MDU4OCAxNi4yODU3IDguNzA1ODhDMTYuOTQwNCA4LjcwNTg4IDE3LjU2OTMgOC44MTQ2OCAxOC4xNTUxIDkuMDE0OThNOC42NjY2NyAxMi4yNDI2QzguMjA1MjggMTEuOTM3NCA3LjY4MDU5IDExLjcxODQgNy4xMTYxNiAxMS42MDg5QzYuODQ3NSAxMS41NTY3IDYuNTY5ODMgMTEuNTI5NCA2LjI4NTcxIDExLjUyOTRDMy45MTg3OCAxMS41Mjk0IDIgMTMuNDI1NiAyIDE1Ljc2NDdDMiAxOC4xMDM4IDMuOTE4NzggMjAgNi4yODU3MSAyMEg3TTcuMTE2MTYgMTEuNjA4OUM2Ljg4NzA2IDEwLjk5NzggNi43NjE5IDEwLjMzNjkgNi43NjE5IDkuNjQ3MDZDNi43NjE5IDYuNTI4MjcgOS4zMjAyOCA0IDEyLjQ3NjIgNEMxNS40MTU5IDQgMTcuODM3MSA2LjE5MzcxIDE4LjE1NTEgOS4wMTQ5OE0xOC4xNTUxIDkuMDE0OThDMTguODM4MSA5LjI0ODUzIDE5LjQ2MjMgOS42MDY0OCAyMCAxMC4wNjE0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class CloudBrokenIcon extends StatelessWidget {
  /// Creates the `cloud` icon in the broken style.
  const CloudBrokenIcon({
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
    name: 'cloud',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 14.3529C22 17.4717 19.4416 20 16.2857 20H11M14.381 9.02721C14.9767 8.81911 15.6178 8.70588 16.2857 8.70588C16.9404 8.70588 17.5693 8.81468 18.1551 9.01498M8.66667 12.2426C8.20528 11.9374 7.68059 11.7184 7.11616 11.6089C6.8475 11.5567 6.56983 11.5294 6.28571 11.5294C3.91878 11.5294 2 13.4256 2 15.7647C2 18.1038 3.91878 20 6.28571 20H7M7.11616 11.6089C6.88706 10.9978 6.7619 10.3369 6.7619 9.64706C6.7619 6.52827 9.32028 4 12.4762 4C15.4159 4 17.8371 6.19371 18.1551 9.01498M18.1551 9.01498C18.8381 9.24853 19.4623 9.60648 20 10.0614" stroke="currentColor" stroke-linecap="round"/>''',
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
