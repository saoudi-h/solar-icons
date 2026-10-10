// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `turntable` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTJDMiA3LjI4NTk1IDIgNC45Mjg5MyAzLjE3MTU3IDMuNDY0NDdDNC4zNDMxNSAyIDYuMjI4NzYgMiAxMCAySDE0QzE3Ljc3MTIgMiAxOS42NTY5IDIgMjAuODI4NCAzLjQ2NDQ3QzIyIDQuOTI4OTMgMjIgNy4yODU5NSAyMiAxMkMyMiAxNi43MTQgMjIgMTkuMDcxMSAyMC44Mjg0IDIwLjUzNTVDMTkuNjU2OSAyMiAxNy43NzEyIDIyIDE0IDIySDEwQzYuMjI4NzYgMjIgNC4zNDMxNSAyMiAzLjE3MTU3IDIwLjUzNTVDMiAxOS4wNzExIDIgMTYuNzE0IDIgMTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHJlY3QgeD0iNiIgeT0iOCIgd2lkdGg9IjgiIGhlaWdodD0iOCIgcng9IjQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xNyAxMC41QzE3LjgyODQgMTAuNSAxOC41IDkuODI4NDMgMTguNSA5QzE4LjUgOC4xNzE1NyAxNy44Mjg0IDcuNSAxNyA3LjVDMTYuMTcxNiA3LjUgMTUuNSA4LjE3MTU3IDE1LjUgOUMxNS41IDkuODI4NDMgMTYuMTcxNiAxMC41IDE3IDEwLjVaTTE3IDEwLjVWMTQuNzYzOUMxNyAxNS41MjE1IDE2LjU3MiAxNi4yMTQgMTUuODk0NCAxNi41NTI4TDE1IDE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class TurntableLineDuotoneIcon extends StatelessWidget {
  /// Creates the `turntable` icon in the lineDuotone style.
  const TurntableLineDuotoneIcon({
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
    name: 'turntable',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.17157 3.46447C4.34315 2 6.22876 2 10 2H14C17.7712 2 19.6569 2 20.8284 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.8284 20.5355C19.6569 22 17.7712 22 14 22H10C6.22876 22 4.34315 22 3.17157 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<rect x="6" y="8" width="8" height="8" rx="4" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M17 10.5C17.8284 10.5 18.5 9.82843 18.5 9C18.5 8.17157 17.8284 7.5 17 7.5C16.1716 7.5 15.5 8.17157 15.5 9C15.5 9.82843 16.1716 10.5 17 10.5ZM17 10.5V14.7639C17 15.5215 16.572 16.214 15.8944 16.5528L15 17" stroke="currentColor" stroke-linecap="round"/>''',
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
