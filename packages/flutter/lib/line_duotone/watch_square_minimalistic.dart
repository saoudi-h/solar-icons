// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `watch-square-minimalistic` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNSAxMkM1IDkuMTkxMDggNSA3Ljc4NjYxIDUuNjc0MTIgNi43Nzc3MkM1Ljk2NTk2IDYuMzQwOTYgNi4zNDA5NiA1Ljk2NTk2IDYuNzc3NzIgNS42NzQxMkM3Ljc4NjYxIDUgOS4xOTEwOCA1IDEyIDVDMTQuODA4OSA1IDE2LjIxMzQgNSAxNy4yMjIzIDUuNjc0MTJDMTcuNjU5IDUuOTY1OTYgMTguMDM0IDYuMzQwOTYgMTguMzI1OSA2Ljc3NzcyQzE5IDcuNzg2NjEgMTkgOS4xOTEwOCAxOSAxMkMxOSAxNC44MDg5IDE5IDE2LjIxMzQgMTguMzI1OSAxNy4yMjIzQzE4LjAzNCAxNy42NTkgMTcuNjU5IDE4LjAzNCAxNy4yMjIzIDE4LjMyNTlDMTYuMjEzNCAxOSAxNC44MDg5IDE5IDEyIDE5QzkuMTkxMDggMTkgNy43ODY2MSAxOSA2Ljc3NzcyIDE4LjMyNTlDNi4zNDA5NiAxOC4wMzQgNS45NjU5NiAxNy42NTkgNS42NzQxMiAxNy4yMjIzQzUgMTYuMjEzNCA1IDE0LjgwODkgNSAxMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgOVYxMi4wNzY5TDE0IDE0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTcgMkgxNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik03IDIySDE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class WatchSquareMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `watch-square-minimalistic` icon in the lineDuotone style.
  const WatchSquareMinimalisticLineDuotoneIcon({
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
    name: 'watch-square-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 9V12.0769L14 14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 2H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 22H17" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M5 12C5 9.19108 5 7.78661 5.67412 6.77772C5.96596 6.34096 6.34096 5.96596 6.77772 5.67412C7.78661 5 9.19108 5 12 5C14.8089 5 16.2134 5 17.2223 5.67412C17.659 5.96596 18.034 6.34096 18.3259 6.77772C19 7.78661 19 9.19108 19 12C19 14.8089 19 16.2134 18.3259 17.2223C18.034 17.659 17.659 18.034 17.2223 18.3259C16.2134 19 14.8089 19 12 19C9.19108 19 7.78661 19 6.77772 18.3259C6.34096 18.034 5.96596 17.659 5.67412 17.2223C5 16.2134 5 14.8089 5 12Z" stroke="currentColor" stroke-linecap="round"/>''',
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
