// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `plug-circle` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDJDNi40NzcxNSAyIDIgNi40ODMzNiAyIDEyLjAxMzlDMiAxNy4yOTE4IDYuMDc3NTkgMjEuNjE2MSAxMS4yNTAzIDIyTDExLjI0OTkgMTUuOTM4N0M5LjY3NzM3IDE1LjU5NDkgOC41IDE0LjE5MjQgOC41IDEyLjUxNDZWMTIuMDEzOUM4LjUgMTEuNDYwOCA4Ljk0NzcyIDExLjAxMjUgOS41IDExLjAxMjVIOS43NVY5LjAwOTdDOS43NSA4LjU5NDkxIDEwLjA4NTggOC4yNTg2NiAxMC41IDguMjU4NjZDMTAuOTE0MiA4LjI1ODY2IDExLjI1IDguNTk0OTEgMTEuMjUgOS4wMDk3VjExLjAxMjVIMTIuNzVWOS4wMDk3QzEyLjc1IDguNTk0OTEgMTMuMDg1OCA4LjI1ODY2IDEzLjUgOC4yNTg2NkMxMy45MTQyIDguMjU4NjYgMTQuMjUgOC41OTQ5MSAxNC4yNSA5LjAwOTdWMTEuMDEyNUgxNC41QzE1LjA1MjMgMTEuMDEyNSAxNS41IDExLjQ2MDggMTUuNSAxMi4wMTM5VjEyLjUxNDZDMTUuNSAxNC4xOTI1IDE0LjMyMjYgMTUuNTk1IDEyLjc0OTkgMTUuOTM4OEwxMi43NDk3IDIyQzE3LjkyMjQgMjEuNjE2MSAyMiAxNy4yOTE4IDIyIDEyLjAxMzlDMjIgNi40ODMzNiAxNy41MjI4IDIgMTIgMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class PlugCircleBoldIcon extends StatelessWidget {
  /// Creates the `plug-circle` icon in the bold style.
  const PlugCircleBoldIcon({
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
    name: 'plug-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 2C6.47715 2 2 6.48336 2 12.0139C2 17.2918 6.07759 21.6161 11.2503 22L11.2499 15.9387C9.67737 15.5949 8.5 14.1924 8.5 12.5146V12.0139C8.5 11.4608 8.94772 11.0125 9.5 11.0125H9.75V9.0097C9.75 8.59491 10.0858 8.25866 10.5 8.25866C10.9142 8.25866 11.25 8.59491 11.25 9.0097V11.0125H12.75V9.0097C12.75 8.59491 13.0858 8.25866 13.5 8.25866C13.9142 8.25866 14.25 8.59491 14.25 9.0097V11.0125H14.5C15.0523 11.0125 15.5 11.4608 15.5 12.0139V12.5146C15.5 14.1925 14.3226 15.595 12.7499 15.9388L12.7497 22C17.9224 21.6161 22 17.2918 22 12.0139C22 6.48336 17.5228 2 12 2Z" fill="currentColor"/>''',
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
