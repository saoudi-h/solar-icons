// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `health` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik04Ljk2MTczIDE4LjQ2ODdDNi4wMTk0MyAxNi4yMTM3IDIgMTIuNDg4NiAyIDguOTY2NTNDMiAzLjA4MjYyIDcuNTAwMTYgMC44ODU4NTkgMTIgNS40MzExMUMxNi40OTk4IDAuODg1ODU5IDIyIDMuMDgyNjIgMjIgOC45NjY1QzIyIDEyLjQ4ODcgMTcuOTgwNiAxNi4yMTM3IDE1LjAzODMgMTguNDY4N0MxMy43MDYzIDE5LjQ4OTYgMTMuMDQwMyAyMCAxMiAyMEMxMC45NTk3IDIwIDEwLjI5MzcgMTkuNDg5NiA4Ljk2MTczIDE4LjQ2ODdaTTE2LjUgNi4yNUMxNi45MTQyIDYuMjUgMTcuMjUgNi41ODU3OSAxNy4yNSA3VjguMjUwMDJIMTguNUMxOC45MTQyIDguMjUwMDIgMTkuMjUgOC41ODU4IDE5LjI1IDkuMDAwMDJDMTkuMjUgOS40MTQyMyAxOC45MTQyIDkuNzUwMDIgMTguNSA5Ljc1MDAySDE3LjI1VjExQzE3LjI1IDExLjQxNDIgMTYuOTE0MiAxMS43NSAxNi41IDExLjc1QzE2LjA4NTggMTEuNzUgMTUuNzUgMTEuNDE0MiAxNS43NSAxMVY5Ljc1MDAyTDE0LjUgOS43NTAwMkMxNC4wODU4IDkuNzUwMDIgMTMuNzUgOS40MTQyMyAxMy43NSA5LjAwMDAyQzEzLjc1IDguNTg1OCAxNC4wODU4IDguMjUwMDIgMTQuNSA4LjI1MDAySDE1Ljc1VjdDMTUuNzUgNi41ODU3OSAxNi4wODU4IDYuMjUgMTYuNSA2LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class HealthBoldIcon extends StatelessWidget {
  /// Creates the `health` icon in the bold style.
  const HealthBoldIcon({
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
    name: 'health',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8.96173 18.4687C6.01943 16.2137 2 12.4886 2 8.96653C2 3.08262 7.50016 0.885859 12 5.43111C16.4998 0.885859 22 3.08262 22 8.9665C22 12.4887 17.9806 16.2137 15.0383 18.4687C13.7063 19.4896 13.0403 20 12 20C10.9597 20 10.2937 19.4896 8.96173 18.4687ZM16.5 6.25C16.9142 6.25 17.25 6.58579 17.25 7V8.25002H18.5C18.9142 8.25002 19.25 8.5858 19.25 9.00002C19.25 9.41423 18.9142 9.75002 18.5 9.75002H17.25V11C17.25 11.4142 16.9142 11.75 16.5 11.75C16.0858 11.75 15.75 11.4142 15.75 11V9.75002L14.5 9.75002C14.0858 9.75002 13.75 9.41423 13.75 9.00002C13.75 8.5858 14.0858 8.25002 14.5 8.25002H15.75V7C15.75 6.58579 16.0858 6.25 16.5 6.25Z" fill="currentColor"/>''',
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
