// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `ghost` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjIgMTkuMjA1OFYxMkMyMiA2LjQ3NzE1IDE3LjUyMjggMiAxMiAyQzYuNDc3MTUgMiAyIDYuNDc3MTUgMiAxMlYxOS4yMDU4QzIgMjAuNDg5NiAzLjM1MDk4IDIxLjMyNDUgNC40OTkyIDIwLjc1MDRDNS40MjcyNiAyMC4yODY0IDYuNTMyOCAyMC4zNTUyIDcuMzk2MTQgMjAuOTMwOEM4LjM2NzM2IDIxLjU3ODIgOS42MzI2NCAyMS41NzgyIDEwLjYwMzkgMjAuOTMwOEwxMC45NTY1IDIwLjY5NTdDMTEuNTg4NCAyMC4yNzQ0IDEyLjQxMTYgMjAuMjc0NCAxMy4wNDM1IDIwLjY5NTdMMTMuMzk2MSAyMC45MzA4QzE0LjM2NzQgMjEuNTc4MiAxNS42MzI2IDIxLjU3ODIgMTYuNjAzOSAyMC45MzA4QzE3LjQ2NzIgMjAuMzU1MiAxOC41NzI3IDIwLjI4NjQgMTkuNTAwOCAyMC43NTA0QzIwLjY0OSAyMS4zMjQ1IDIyIDIwLjQ4OTYgMjIgMTkuMjA1OFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE1IDEyQzE1LjU1MjMgMTIgMTYgMTEuMzI4NCAxNiAxMC41QzE2IDkuNjcxNTcgMTUuNTUyMyA5IDE1IDlDMTQuNDQ3NyA5IDE0IDkuNjcxNTcgMTQgMTAuNUMxNCAxMS4zMjg0IDE0LjQ0NzcgMTIgMTUgMTJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMCAxMC41QzEwIDExLjMyODQgOS41NTIyOCAxMiA5IDEyQzguNDQ3NzIgMTIgOCAxMS4zMjg0IDggMTAuNUM4IDkuNjcxNTcgOC40NDc3MiA5IDkgOUM5LjU1MjI4IDkgMTAgOS42NzE1NyAxMCAxMC41WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class GhostBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `ghost` icon in the boldDuotone style.
  const GhostBoldDuotoneIcon({
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
    name: 'ghost',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15 12C15.5523 12 16 11.3284 16 10.5C16 9.67157 15.5523 9 15 9C14.4477 9 14 9.67157 14 10.5C14 11.3284 14.4477 12 15 12Z" fill="currentColor"/>
<path d="M10 10.5C10 11.3284 9.55228 12 9 12C8.44772 12 8 11.3284 8 10.5C8 9.67157 8.44772 9 9 9C9.55228 9 10 9.67157 10 10.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 19.2058V12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12V19.2058C2 20.4896 3.35098 21.3245 4.4992 20.7504C5.42726 20.2864 6.5328 20.3552 7.39614 20.9308C8.36736 21.5782 9.63264 21.5782 10.6039 20.9308L10.9565 20.6957C11.5884 20.2744 12.4116 20.2744 13.0435 20.6957L13.3961 20.9308C14.3674 21.5782 15.6326 21.5782 16.6039 20.9308C17.4672 20.3552 18.5727 20.2864 19.5008 20.7504C20.649 21.3245 22 20.4896 22 19.2058Z" fill="currentColor"/>''',
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
