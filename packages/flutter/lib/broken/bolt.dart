// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bolt` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE1LjI2ODMgMTguMjI4N0MxMy4yODg5IDIwLjkwNjcgMTIuMjk5MiAyMi4yNDU4IDExLjM3NTggMjEuOTYyOEMxMC40NTI1IDIxLjY3OTggMTAuNDUyNSAyMC4wMzc1IDEwLjQ1MjUgMTYuNzUyOEwxMC40NTI2IDE2LjQ0MzNDMTAuNDUyNiAxNS4yNTg1IDEwLjQ1MjYgMTQuNjY2MiAxMC4wNzQgMTQuMjk0NkwxMC4wNTQgMTQuMjc1NEM5LjY2NzMgMTMuOTExNyA5LjA1MDc5IDEzLjkxMTcgNy44MTc3NSAxMy45MTE3QzUuNTk4ODggMTMuOTExNyA0LjQ4OTQ1IDEzLjkxMTcgNC4xMTQ1IDEzLjIzODdDNC4xMDgyOSAxMy4yMjc2IDQuMTAyMjUgMTMuMjE2NCA0LjA5NjM5IDEzLjIwNUMzLjc0MjQ0IDEyLjUyMTcgNC4zODQ4IDExLjY1MjYgNS42Njk1MyA5LjkxNDM2TDguNzMxNjcgNS43NzEzM0MxMC43MTEgMy4wOTMyNyAxMS43MDA3IDEuNzU0MjUgMTIuNjI0MSAyLjAzNzIxQzEzLjU0NzQgMi4zMjAxOCAxMy41NDc0IDMuOTYyNDkgMTMuNTQ3NCA3LjI0NzEyVjcuNTU2ODJDMTMuNTQ3NCA4Ljc0MTUxIDEzLjU0NzQgOS4zMzM4NiAxMy45MjYgOS43MDU0MUwxMy45NDYgOS43MjQ2NkMxNC4zMzI3IDEwLjA4ODQgMTQuOTQ5MiAxMC4wODg0IDE2LjE4MjIgMTAuMDg4NEMxOC40MDExIDEwLjA4ODQgMTkuNTEwNiAxMC4wODg0IDE5Ljg4NTUgMTAuNzYxM0MxOS44OTE3IDEwLjc3MjQgMTkuODk3NyAxMC43ODM3IDE5LjkwMzYgMTAuNzk1QzIwLjI1NzYgMTEuNDc4NCAxOS42MTUyIDEyLjM0NzUgMTguMzMwNCAxNC4wODU3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class BoltBrokenIcon extends StatelessWidget {
  /// Creates the `bolt` icon in the broken style.
  const BoltBrokenIcon({
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
    name: 'bolt',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15.2683 18.2287C13.2889 20.9067 12.2992 22.2458 11.3758 21.9628C10.4525 21.6798 10.4525 20.0375 10.4525 16.7528L10.4526 16.4433C10.4526 15.2585 10.4526 14.6662 10.074 14.2946L10.054 14.2754C9.6673 13.9117 9.05079 13.9117 7.81775 13.9117C5.59888 13.9117 4.48945 13.9117 4.1145 13.2387C4.10829 13.2276 4.10225 13.2164 4.09639 13.205C3.74244 12.5217 4.3848 11.6526 5.66953 9.91436L8.73167 5.77133C10.711 3.09327 11.7007 1.75425 12.6241 2.03721C13.5474 2.32018 13.5474 3.96249 13.5474 7.24712V7.55682C13.5474 8.74151 13.5474 9.33386 13.926 9.70541L13.946 9.72466C14.3327 10.0884 14.9492 10.0884 16.1822 10.0884C18.4011 10.0884 19.5106 10.0884 19.8855 10.7613C19.8917 10.7724 19.8977 10.7837 19.9036 10.795C20.2576 11.4784 19.6152 12.3475 18.3304 14.0857" stroke="currentColor" stroke-linecap="round"/>''',
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
