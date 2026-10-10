// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNC4yNSAxNS4wODg5QzE4LjY4OTMgMTUuNDQ2MSAyMiAxNi44Mzc4IDIyIDE4LjVDMjIgMjAuNDMzIDE3LjUyMjggMjIgMTIgMjJDNi40NzcxNSAyMiAyIDIwLjQzMyAyIDE4LjVDMiAxNi44Mzc4IDUuMzEwNjUgMTUuNDQ2MSA5Ljc1IDE1LjA4ODlWMThDOS43NSAxOS4yNDI2IDEwLjc1NzQgMjAuMjQ5OSAxMiAyMC4yNUMxMy4yNDI2IDIwLjI1IDE0LjI1IDE5LjI0MjYgMTQuMjUgMThWMTUuMDg4OVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyIDEuMjVDMTIuNDE0MiAxLjI1IDEyLjc1IDEuNTg1NzkgMTIuNzUgMlYzLjAzNjEzTDE3LjgxMTUgNS41NjczOEMxOC41NDU5IDUuOTM0NTQgMTkuMTcyNyA2LjI0NzcgMTkuNjA4NCA2LjU1MTc2QzIwLjA1MDEgNi44NjAwNyAyMC41MTQ2IDcuMzA3NjkgMjAuNTE0NiA4QzIwLjUxNDYgOC42OTIzMSAyMC4wNTAxIDkuMTM5OTMgMTkuNjA4NCA5LjQ0ODI0QzE5LjE3MjcgOS43NTIzIDE4LjU0NTkgMTAuMDY1NSAxNy44MTE1IDEwLjQzMjZMMTIuNzUgMTIuOTYzOVYxOEMxMi43NSAxOC40MTQyIDEyLjQxNDIgMTguNzUgMTIgMTguNzVDMTEuNTg1OSAxOC43NDk5IDExLjI1IDE4LjQxNDIgMTEuMjUgMThWMkMxMS4yNSAxLjU4NTg0IDExLjU4NTkgMS4yNTAwOSAxMiAxLjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class GolfBoldIcon extends StatelessWidget {
  /// Creates the `golf` icon in the bold style.
  const GolfBoldIcon({
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
    name: 'golf',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M14.25 15.0889C18.6893 15.4461 22 16.8378 22 18.5C22 20.433 17.5228 22 12 22C6.47715 22 2 20.433 2 18.5C2 16.8378 5.31065 15.4461 9.75 15.0889V18C9.75 19.2426 10.7574 20.2499 12 20.25C13.2426 20.25 14.25 19.2426 14.25 18V15.0889Z" fill="currentColor"/>
<path d="M12 1.25C12.4142 1.25 12.75 1.58579 12.75 2V3.03613L17.8115 5.56738C18.5459 5.93454 19.1727 6.2477 19.6084 6.55176C20.0501 6.86007 20.5146 7.30769 20.5146 8C20.5146 8.69231 20.0501 9.13993 19.6084 9.44824C19.1727 9.7523 18.5459 10.0655 17.8115 10.4326L12.75 12.9639V18C12.75 18.4142 12.4142 18.75 12 18.75C11.5859 18.7499 11.25 18.4142 11.25 18V2C11.25 1.58584 11.5859 1.25009 12 1.25Z" fill="currentColor"/>''',
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
