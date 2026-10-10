// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNC4zODEgOS4wMjcyMUMxNC45NzY3IDguODE5MTEgMTUuNjE3OCA4LjcwNTg4IDE2LjI4NTcgOC43MDU4OEMxNi45NDA0IDguNzA1ODggMTcuNTY5MyA4LjgxNDY4IDE4LjE1NTEgOS4wMTQ5OE04LjY2NjY3IDEyLjI0MjZDOC4yMDUyOCAxMS45Mzc0IDcuNjgwNTkgMTEuNzE4NCA3LjExNjE2IDExLjYwODlDNi44NDc1IDExLjU1NjcgNi41Njk4MyAxMS41Mjk0IDYuMjg1NzEgMTEuNTI5NEMzLjkxODc4IDExLjUyOTQgMiAxMy40MjU2IDIgMTUuNzY0N0MyIDE4LjEwMzggMy45MTg3OCAyMCA2LjI4NTcxIDIwSDE2LjI4NTdDMTkuNDQxNiAyMCAyMiAxNy40NzE3IDIyIDE0LjM1MjlDMjIgMTEuODgxMSAyMC4zOTMgOS43ODAyNCAxOC4xNTUxIDkuMDE0OThNNy4xMTYxNiAxMS42MDg5QzYuODg3MDYgMTAuOTk3OCA2Ljc2MTkgMTAuMzM2OSA2Ljc2MTkgOS42NDcwNkM2Ljc2MTkgNi41MjgyNyA5LjMyMDI4IDQgMTIuNDc2MiA0QzE1LjQxNTkgNCAxNy44MzcxIDYuMTkzNzEgMTguMTU1MSA5LjAxNDk4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class CloudLinearIcon extends StatelessWidget {
  /// Creates the `cloud` icon in the linear style.
  const CloudLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M14.381 9.02721C14.9767 8.81911 15.6178 8.70588 16.2857 8.70588C16.9404 8.70588 17.5693 8.81468 18.1551 9.01498M8.66667 12.2426C8.20528 11.9374 7.68059 11.7184 7.11616 11.6089C6.8475 11.5567 6.56983 11.5294 6.28571 11.5294C3.91878 11.5294 2 13.4256 2 15.7647C2 18.1038 3.91878 20 6.28571 20H16.2857C19.4416 20 22 17.4717 22 14.3529C22 11.8811 20.393 9.78024 18.1551 9.01498M7.11616 11.6089C6.88706 10.9978 6.7619 10.3369 6.7619 9.64706C6.7619 6.52827 9.32028 4 12.4762 4C15.4159 4 17.8371 6.19371 18.1551 9.01498" stroke="currentColor" stroke-linecap="round"/>''',
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
