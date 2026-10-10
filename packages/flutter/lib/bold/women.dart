// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `women` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjc0OTcgMTUuOTYwM0MxNi4yNjMyIDE1LjU4NjIgMTkgMTIuNjEyNyAxOSA5QzE5IDUuMTM0MDEgMTUuODY2IDIgMTIgMkM4LjEzNDAxIDIgNSA1LjEzNDAxIDUgOUM1IDEyLjYxMjUgNy43MzY1NCAxNS41ODU5IDExLjI0OTcgMTUuOTYwM1YxNy43NUg5LjVDOS4wODU3OSAxNy43NSA4Ljc1IDE4LjA4NTggOC43NSAxOC41QzguNzUgMTguOTE0MiA5LjA4NTc5IDE5LjI1IDkuNSAxOS4yNUgxMS4yNDk4TDExLjI1IDIyLjAwMDFDMTEuMjUgMjIuNDE0MyAxMS41ODU4IDIyLjc1IDEyLjAwMDEgMjIuNzVDMTIuNDE0MyAyMi43NSAxMi43NSAyMi40MTQyIDEyLjc1IDIxLjk5OTlMMTIuNzQ5OCAxOS4yNUgxNC41QzE0LjkxNDIgMTkuMjUgMTUuMjUgMTguOTE0MiAxNS4yNSAxOC41QzE1LjI1IDE4LjA4NTggMTQuOTE0MiAxNy43NSAxNC41IDE3Ljc1SDEyLjc0OTdWMTUuOTYwM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class WomenBoldIcon extends StatelessWidget {
  /// Creates the `women` icon in the bold style.
  const WomenBoldIcon({
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
    name: 'women',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12.7497 15.9603C16.2632 15.5862 19 12.6127 19 9C19 5.13401 15.866 2 12 2C8.13401 2 5 5.13401 5 9C5 12.6125 7.73654 15.5859 11.2497 15.9603V17.75H9.5C9.08579 17.75 8.75 18.0858 8.75 18.5C8.75 18.9142 9.08579 19.25 9.5 19.25H11.2498L11.25 22.0001C11.25 22.4143 11.5858 22.75 12.0001 22.75C12.4143 22.75 12.75 22.4142 12.75 21.9999L12.7498 19.25H14.5C14.9142 19.25 15.25 18.9142 15.25 18.5C15.25 18.0858 14.9142 17.75 14.5 17.75H12.7497V15.9603Z" fill="currentColor"/>''',
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
