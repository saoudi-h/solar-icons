// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `text-field` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTJDMiA4LjIyODc2IDIgNi4zNDMxNSAzLjE3MTU3IDUuMTcxNTdDNC4zNDMxNSA0IDYuMjI4NzYgNCAxMCA0SDE0QzE3Ljc3MTIgNCAxOS42NTY5IDQgMjAuODI4NCA1LjE3MTU3QzIyIDYuMzQzMTUgMjIgOC4yMjg3NiAyMiAxMkMyMiAxNS43NzEyIDIyIDE3LjY1NjkgMjAuODI4NCAxOC44Mjg0QzE5LjY1NjkgMjAgMTcuNzcxMiAyMCAxNCAyMEgxMEM2LjIyODc2IDIwIDQuMzQzMTUgMjAgMy4xNzE1NyAxOC44Mjg0QzIgMTcuNjU2OSAyIDE1Ljc3MTIgMiAxMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSA4LjVINy45MjVDNy4wNTQ5MiA4LjUgNi42MTk4OSA4LjUgNi4zMzU3NSA4Ljc1MjQ5QzYuMzA2MzggOC43Nzg1OCA2LjI3ODU4IDguODA2MzggNi4yNTI0OSA4LjgzNTc1QzYgOS4xMTk4OSA2IDkuNTU0OTIgNiAxMC40MjVNOSA4LjVIMTAuMDc1QzEwLjk0NTEgOC41IDExLjM4MDEgOC41IDExLjY2NDMgOC43NTI0OUMxMS42OTM2IDguNzc4NTggMTEuNzIxNCA4LjgwNjM4IDExLjc0NzUgOC44MzU3NUMxMiA5LjExOTg5IDEyIDkuNTU0OTIgMTIgMTAuNDI1TTkgOC41VjE1LjVNNyAxNS41SDExIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class TextFieldLinearIcon extends StatelessWidget {
  /// Creates the `text-field` icon in the linear style.
  const TextFieldLinearIcon({
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
    name: 'text-field',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 8.22876 2 6.34315 3.17157 5.17157C4.34315 4 6.22876 4 10 4H14C17.7712 4 19.6569 4 20.8284 5.17157C22 6.34315 22 8.22876 22 12C22 15.7712 22 17.6569 20.8284 18.8284C19.6569 20 17.7712 20 14 20H10C6.22876 20 4.34315 20 3.17157 18.8284C2 17.6569 2 15.7712 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 8.5H7.925C7.05492 8.5 6.61989 8.5 6.33575 8.75249C6.30638 8.77858 6.27858 8.80638 6.25249 8.83575C6 9.11989 6 9.55492 6 10.425M9 8.5H10.075C10.9451 8.5 11.3801 8.5 11.6643 8.75249C11.6936 8.77858 11.7214 8.80638 11.7475 8.83575C12 9.11989 12 9.55492 12 10.425M9 8.5V15.5M7 15.5H11" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
