// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `flag-2` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTUgMjJWMTRWNFYyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNSAxNEw3LjQ3MDY3IDEzLjUwNTlDOS4xMjEyIDEzLjE3NTggMTAuODMyMSAxMy4zMzI5IDEyLjM5NDkgMTMuOTU4QzE0LjA4ODUgMTQuNjM1NCAxNS45NTI0IDE0Ljc2MTkgMTcuNzIyIDE0LjMxOTVMMTcuODIyMSAxNC4yOTQ1QzE4LjQwODIgMTQuMTQ4IDE4LjY4NjEgMTMuNDc2OSAxOC4zNzUzIDEyLjk1ODlMMTYuODE0NyAxMC4zNTc4QzE2LjQ3MzIgOS43ODg2NyAxNi4zMDI0IDkuNTA0MDkgMTYuMjYxOSA5LjE5NDU1QzE2LjI0NTEgOS4wNjU0MyAxNi4yNDUxIDguOTM0NjYgMTYuMjYxOSA4LjgwNTUzQzE2LjMwMjQgOC40OTU5OSAxNi40NzMyIDguMjExNDEgMTYuODE0NyA3LjY0MjI1TDE4LjA5MzIgNS41MTEzNkMxOC40Mjc4IDQuOTUzNjQgMTcuOTIxMSA0LjI2OTc2IDE3LjI5MDEgNC40Mjc1MUMxNS44MDEzIDQuNzk5NzEgMTQuMjMzMSA0LjY5MzI4IDEyLjgwODIgNC4xMjMzM0wxMi4zOTQ5IDMuOTU4MDFDMTAuODMyMSAzLjMzMjg4IDkuMTIxMiAzLjE3NTggNy40NzA2NyAzLjUwNTkxTDUgNC4wMDAwNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class Flag2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `flag-2` icon in the lineDuotone style.
  const Flag2LineDuotoneIcon({
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
    name: 'flag-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5 22V14V4V2" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M5 14L7.47067 13.5059C9.1212 13.1758 10.8321 13.3329 12.3949 13.958C14.0885 14.6354 15.9524 14.7619 17.722 14.3195L17.8221 14.2945C18.4082 14.148 18.6861 13.4769 18.3753 12.9589L16.8147 10.3578C16.4732 9.78867 16.3024 9.50409 16.2619 9.19455C16.2451 9.06543 16.2451 8.93466 16.2619 8.80553C16.3024 8.49599 16.4732 8.21141 16.8147 7.64225L18.0932 5.51136C18.4278 4.95364 17.9211 4.26976 17.2901 4.42751C15.8013 4.79971 14.2331 4.69328 12.8082 4.12333L12.3949 3.95801C10.8321 3.33288 9.1212 3.1758 7.47067 3.50591L5 4.00004" stroke="currentColor" stroke-linecap="round"/>''',
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
