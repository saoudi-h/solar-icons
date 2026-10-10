// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `flag-2` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTUgMjJWMTRNNSAxNEw3LjQ3MDY3IDEzLjUwNTlDOS4xMjEyIDEzLjE3NTggMTAuODMyMSAxMy4zMzI4IDEyLjM5NDkgMTMuOTU4QzE0LjA4ODUgMTQuNjM1NCAxNS45NTI0IDE0Ljc2MTkgMTcuNzIyIDE0LjMxOTVMMTcuODIyMSAxNC4yOTQ1QzE4LjQwODIgMTQuMTQ4IDE4LjY4NjEgMTMuNDc2OSAxOC4zNzUzIDEyLjk1ODlMMTYuODE0NyAxMC4zNTc4QzE2LjQ3MzIgOS43ODg2MyAxNi4zMDI0IDkuNTA0MDUgMTYuMjYxOSA5LjE5NDUxQzE2LjI0NTEgOS4wNjUzOSAxNi4yNDUxIDguOTM0NjEgMTYuMjYxOSA4LjgwNTQ5QzE2LjMwMjQgOC40OTU5NSAxNi40NzMyIDguMjExMzcgMTYuODE0NyA3LjY0MjIxTDE4LjA5MzIgNS41MTEzMkMxOC40Mjc4IDQuOTUzNiAxNy45MjExIDQuMjY5NzIgMTcuMjkwMSA0LjQyNzQ2QzE1LjgwMTMgNC43OTk2NyAxNC4yMzMxIDQuNjkzMjMgMTIuODA4MiA0LjEyMzI5TDEyLjM5NDkgMy45NTc5N0MxMC44MzIxIDMuMzMyODQgOS4xMjEyIDMuMTc1NzYgNy40NzA2NyAzLjUwNTg3TDUgNE01IDE0VjExTTUgNFYyTTUgNFY3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Flag2BrokenIcon extends StatelessWidget {
  /// Creates the `flag-2` icon in the broken style.
  const Flag2BrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M5 22V14M5 14L7.47067 13.5059C9.1212 13.1758 10.8321 13.3328 12.3949 13.958C14.0885 14.6354 15.9524 14.7619 17.722 14.3195L17.8221 14.2945C18.4082 14.148 18.6861 13.4769 18.3753 12.9589L16.8147 10.3578C16.4732 9.78863 16.3024 9.50405 16.2619 9.19451C16.2451 9.06539 16.2451 8.93461 16.2619 8.80549C16.3024 8.49595 16.4732 8.21137 16.8147 7.64221L18.0932 5.51132C18.4278 4.9536 17.9211 4.26972 17.2901 4.42746C15.8013 4.79967 14.2331 4.69323 12.8082 4.12329L12.3949 3.95797C10.8321 3.33284 9.1212 3.17576 7.47067 3.50587L5 4M5 14V11M5 4V2M5 4V7" stroke="currentColor" stroke-linecap="round"/>''',
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
