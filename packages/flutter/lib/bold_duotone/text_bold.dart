// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `text-bold` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00IDQuNjA4N0M0IDIuNjE1NjcgNS42MTU2NyAxIDcuNjA4NyAxSDEyQzE1LjMxMzcgMSAxOCAzLjY4NjI5IDE4IDdDMTggMTAuMzEzNyAxNS4zMTM3IDEzIDEyIDEzSDRWNC42MDg3Wk03LjYwODcgM0M2LjcyMDI0IDMgNiAzLjcyMDI0IDYgNC42MDg3VjExSDEyQzE0LjIwOTEgMTEgMTYgOS4yMDkxNCAxNiA3QzE2IDQuNzkwODYgMTQuMjA5MSAzIDEyIDNINy42MDg3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik00IDEyLjk5OTlWMTkuOTQxMUM0IDIxLjYzMDUgNS4zNjk0OCAyMi45OTk5IDcuMDU4ODIgMjIuOTk5OUgxNEMxNy4zMTM3IDIyLjk5OTkgMjAgMjAuMzEzNyAyMCAxNi45OTk5QzIwIDE0LjQyNTkgMTguMzc5MSAxMi4yMzA0IDE2LjEwMjIgMTEuMzc4NUMxNS4wMjkzIDEyLjM4NDIgMTMuNTg2NiAxMi45OTk5IDEyIDEyLjk5OTlIMTRDMTYuMjA5MSAxMi45OTk5IDE4IDE0Ljc5MDggMTggMTYuOTk5OUMxOCAxOS4yMDkxIDE2LjIwOTEgMjAuOTk5OSAxNCAyMC45OTk5SDcuMDU4ODJDNi40NzQwNSAyMC45OTk5IDYgMjAuNTI1OSA2IDE5Ljk0MTFWMTIuOTk5OUg0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class TextBoldBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `text-bold` icon in the boldDuotone style.
  const TextBoldBoldDuotoneIcon({
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
    name: 'text-bold',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4 4.6087C4 2.61567 5.61567 1 7.6087 1H12C15.3137 1 18 3.68629 18 7C18 10.3137 15.3137 13 12 13H4V4.6087ZM7.6087 3C6.72024 3 6 3.72024 6 4.6087V11H12C14.2091 11 16 9.20914 16 7C16 4.79086 14.2091 3 12 3H7.6087Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 12.9999V19.9411C4 21.6305 5.36948 22.9999 7.05882 22.9999H14C17.3137 22.9999 20 20.3137 20 16.9999C20 14.4259 18.3791 12.2304 16.1022 11.3785C15.0293 12.3842 13.5866 12.9999 12 12.9999H14C16.2091 12.9999 18 14.7908 18 16.9999C18 19.2091 16.2091 20.9999 14 20.9999H7.05882C6.47405 20.9999 6 20.5259 6 19.9411V12.9999H4Z" fill="currentColor"/>''',
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
