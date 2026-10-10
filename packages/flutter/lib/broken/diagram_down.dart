// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `diagram-down` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE5LjAwMDIgMTVMMTUuODgyMSAxMS4wNzM2QzE1LjQwNDUgMTAuNDcyMiAxNS4xNjU3IDEwLjE3MTQgMTQuODkxNiAxMC4wMjQ5QzE0LjQ3IDkuNzk5NTMgMTMuOTY2MyA5Ljc4ODU3IDEzLjUzNTQgOS45OTUzN0MxMy4yNTUxIDEwLjEyOTkgMTMuMDAzNSAxMC40MTk5IDEyLjUwMDIgMTFDMTEuOTk2OCAxMS41ODAxIDExLjc0NTIgMTEuODcwMSAxMS40NjQ5IDEyLjAwNDZDMTEuMDM0IDEyLjIxMTUgMTAuNTMwMyAxMi4yMDA1IDEwLjEwODggMTEuOTc1MkM5LjgzNDYxIDExLjgyODYgOS41OTU4IDExLjUyNzkgOS4xMTgxOSAxMC45MjY1TDYgNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAyMkgxMkM3LjI4NTk1IDIyIDQuOTI4OTMgMjIgMy40NjQ0NyAyMC41MzU1QzIgMTkuMDcxMSAyIDE2LjcxNCAyIDEyVjlNMiAyVjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class DiagramDownBrokenIcon extends StatelessWidget {
  /// Creates the `diagram-down` icon in the broken style.
  const DiagramDownBrokenIcon({
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
    name: 'diagram-down',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M19.0002 15L15.8821 11.0736C15.4045 10.4722 15.1657 10.1714 14.8916 10.0249C14.47 9.79953 13.9663 9.78857 13.5354 9.99537C13.2551 10.1299 13.0035 10.4199 12.5002 11C11.9968 11.5801 11.7452 11.8701 11.4649 12.0046C11.034 12.2115 10.5303 12.2005 10.1088 11.9752C9.83461 11.8286 9.5958 11.5279 9.11819 10.9265L6 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 22H12C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12V9M2 2V5" stroke="currentColor" stroke-linecap="round"/>''',
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
