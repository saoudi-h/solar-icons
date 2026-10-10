// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bonfire` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwIDE1TDQgMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNCAxNUw5IDE3LjE4NzVNMjAgMjJMMTQuNSAxOS41OTM4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1IDEwQzE0LjggMTAuNjY2NyAxMy45MiAxMiAxMiAxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik02IDguODYwMzhDNiAxMy43NzIxIDkuNzMzMzMgMTUgMTEuNiAxNUMxMi41NTU4IDE1IDEzLjkzOTggMTQuNzUzNSAxNS4xNzY1IDE0LjAzOTdNMTcuMDk2OSAxMi4yMzcyQzE3LjY0ODUgMTEuMzc2MyAxOCAxMC4yNzAxIDE4IDguODYwMzhDMTggNS43MzM2NiAxNS45OTkgMy41MDA2IDE0LjE4OTggMi4yMjAzMUMxMy4zNzIxIDEuNjQxNjIgMTIuMzUyOSAyLjI3NzE3IDEyLjM1MjkgMy4yNjQ2OFYzLjQ4ODIyQzEyLjM1MjkgNC40ODQxMiAxMS45MjUgNi4zMDE5NiAxMC43MzYgNy4wNTgwN0MxMC4xMjg5IDcuNDQ0MSA5LjQ3MzMxIDYuODY2MzIgOS4zOTk1MyA2LjE2MTU4TDkuMzM4OTUgNS41ODI4OUM5LjI2ODUyIDQuOTEwMTMgOC41NjgyOSA0LjUwMTczIDguMDE4NzkgNC45MTE5QzcuNTQ0NDMgNS4yNjU5OSA3LjA1OTgxIDUuNzQ3ODggNi42ODQzMSA2LjM2NjE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class BonfireBrokenIcon extends StatelessWidget {
  /// Creates the `bonfire` icon in the broken style.
  const BonfireBrokenIcon({
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
    name: 'bonfire',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20 15L4 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 15L9 17.1875M20 22L14.5 19.5938" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 10C14.8 10.6667 13.92 12 12 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 8.86038C6 13.7721 9.73333 15 11.6 15C12.5558 15 13.9398 14.7535 15.1765 14.0397M17.0969 12.2372C17.6485 11.3763 18 10.2701 18 8.86038C18 5.73366 15.999 3.5006 14.1898 2.22031C13.3721 1.64162 12.3529 2.27717 12.3529 3.26468V3.48822C12.3529 4.48412 11.925 6.30196 10.736 7.05807C10.1289 7.4441 9.47331 6.86632 9.39953 6.16158L9.33895 5.58289C9.26852 4.91013 8.56829 4.50173 8.01879 4.9119C7.54443 5.26599 7.05981 5.74788 6.68431 6.36616" stroke="currentColor" stroke-linecap="round"/>''',
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
