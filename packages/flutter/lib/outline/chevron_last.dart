// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNi41IDQuMjVDMTYuOTE0MiA0LjI1MDAyIDE3LjI1IDQuNTg1OCAxNy4yNSA1VjE5QzE3LjI1IDE5LjQxNDIgMTYuOTE0MiAxOS43NSAxNi41IDE5Ljc1QzE2LjA4NTggMTkuNzUgMTUuNzUgMTkuNDE0MiAxNS43NSAxOVY1QzE1Ljc1IDQuNTg1NzkgMTYuMDg1OCA0LjI1MDAxIDE2LjUgNC4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTcuMDExNjggNC40MzA2NkM3LjMyNjEyIDQuMTYxMTYgNy43OTk3MiA0LjE5NzM4IDguMDY5MyA0LjUxMTcyTDE0LjA2OTMgMTEuNTExN0MxNC4zMSAxMS43OTI2IDE0LjMxIDEyLjIwNzQgMTQuMDY5MyAxMi40ODgzTDguMDY5MyAxOS40ODgzQzcuNzk5NzIgMTkuODAyNiA3LjMyNjEyIDE5LjgzODggNy4wMTE2OCAxOS41NjkzQzYuNjk3MzQgMTkuMjk5NyA2LjY2MTExIDE4LjgyNjIgNi45MzA2MyAxOC41MTE3TDEyLjUxMTcgMTJMNi45MzA2MyA1LjQ4ODI4QzYuNjYxMTEgNS4xNzM4NCA2LjY5NzM0IDQuNzAwMjUgNy4wMTE2OCA0LjQzMDY2WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ChevronLastOutlineIcon extends StatelessWidget {
  /// Creates the `chevron-last` icon in the outline style.
  const ChevronLastOutlineIcon({
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
    name: 'chevron-last',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M16.5 4.25C16.9142 4.25002 17.25 4.5858 17.25 5V19C17.25 19.4142 16.9142 19.75 16.5 19.75C16.0858 19.75 15.75 19.4142 15.75 19V5C15.75 4.58579 16.0858 4.25001 16.5 4.25Z" fill="currentColor"/>
<path d="M7.01168 4.43066C7.32612 4.16116 7.79972 4.19738 8.0693 4.51172L14.0693 11.5117C14.31 11.7926 14.31 12.2074 14.0693 12.4883L8.0693 19.4883C7.79972 19.8026 7.32612 19.8388 7.01168 19.5693C6.69734 19.2997 6.66111 18.8262 6.93063 18.5117L12.5117 12L6.93063 5.48828C6.66111 5.17384 6.69734 4.70025 7.01168 4.43066Z" fill="currentColor"/>''',
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
