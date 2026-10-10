// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `backspace` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDEyQzIyIDE1Ljc3MTIgMjIgMTcuNjU2OSAyMC43OTYxIDE4LjgyODRDMTkuNTkyMSAyMCAxNy42NTQ0IDIwIDEzLjc3OSAyMEgxMS4xNDJDOC45MTQ1OCAyMCA3LjgwMDg1IDIwIDYuODcxMTQgMTkuNDk4NkM1Ljk0MTQ0IDE4Ljk5NzEgNS4zNTExNyAxOC4wNzgxIDQuMTcwNjEgMTYuMjRMMy40ODk4MSAxNS4xOEMyLjQ5NjYgMTMuNjMzNiAyIDEyLjg2MDQgMiAxMkMyIDExLjEzOTYgMi40OTY2IDEwLjM2NjQgMy40ODk4MSA4LjgyMDAxTDQuMTcwNjEgNy43NjAwMUM1LjM1MTE3IDUuOTIxOTEgNS45NDE0NCA1LjAwMjg2IDYuODcxMTQgNC41MDE0M0M3LjgwMDg1IDQgOC45MTQ1OCA0IDExLjE0MiA0TDEzLjc3OSA0QzE3LjY1NDQgNCAxOS41OTIxIDQgMjAuNzk2MSA1LjE3MTU3QzIxLjQ2NzMgNS44MjQ3NSAyMS43NjQzIDYuNjk5ODkgMjEuODk1NyA4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1LjUgOS41MDAwMkwxMC41IDE0LjVNMTAuNSA5LjVMMTUuNSAxNC41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class BackspaceBrokenIcon extends StatelessWidget {
  /// Creates the `backspace` icon in the broken style.
  const BackspaceBrokenIcon({
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
    name: 'backspace',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 12C22 15.7712 22 17.6569 20.7961 18.8284C19.5921 20 17.6544 20 13.779 20H11.142C8.91458 20 7.80085 20 6.87114 19.4986C5.94144 18.9971 5.35117 18.0781 4.17061 16.24L3.48981 15.18C2.4966 13.6336 2 12.8604 2 12C2 11.1396 2.4966 10.3664 3.48981 8.82001L4.17061 7.76001C5.35117 5.92191 5.94144 5.00286 6.87114 4.50143C7.80085 4 8.91458 4 11.142 4L13.779 4C17.6544 4 19.5921 4 20.7961 5.17157C21.4673 5.82475 21.7643 6.69989 21.8957 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 9.50002L10.5 14.5M10.5 9.5L15.5 14.5" stroke="currentColor" stroke-linecap="round"/>''',
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
