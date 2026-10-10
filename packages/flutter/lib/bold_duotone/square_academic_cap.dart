// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-academic-cap` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0LjIxNzIgMy40OTk2NUMxMi43OTYyIDIuODMzNDUgMTEuMjAzNyAyLjgzMzQ1IDkuNzgyNzIgMy40OTk2NUwzLjA5MTYgNi42MzY1OUMyLjAxNTYgNy4xNDEwNSAxLjczNTA3IDguNTYzNTIgMi4yNSA5LjU0NjY2TDIuMjUgMTQuNUMyLjI1IDE0LjkxNDIgMi41ODU3OSAxNS4yNSAzIDE1LjI1QzMuNDE0MjEgMTUuMjUgMy43NSAxNC45MTQyIDMuNzUgMTQuNVYxMC42NzJMOS43ODI4MSAxMy41MDAzQzExLjIwMzggMTQuMTY2NSAxMi43OTYzIDE0LjE2NjUgMTQuMjE3MyAxMy41MDAzTDIwLjkwODQgMTAuMzYzNEMyMi4zNjM5IDkuNjgxMDUgMjIuMzYzOSA3LjMxODk5IDIwLjkwODQgNi42MzY2NEwxNC4yMTcyIDMuNDk5NjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTUgMTEuMjU4MUw5Ljc4MjgxIDEzLjUwMDNDMTEuMjAzOCAxNC4xNjY1IDEyLjc5NjMgMTQuMTY2NSAxNC4yMTczIDEzLjUwMDNMMTkgMTEuMjU4MVYxNi42MjUyQzE5IDE3LjYzMzMgMTguNDk2NSAxOC41NzcgMTcuNjE0NyAxOS4wNjU0QzE2LjE0NjMgMTkuODc4NiAxMy43OTYgMjAuOTk5OCAxMiAyMC45OTk4QzEwLjIwNCAyMC45OTk4IDcuODUzNyAxOS44Nzg2IDYuMzg1MzMgMTkuMDY1NEM1LjUwMzUgMTguNTc3IDUgMTcuNjMzMyA1IDE2LjYyNTJWMTEuMjU4MVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class SquareAcademicCapBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `square-academic-cap` icon in the boldDuotone style.
  const SquareAcademicCapBoldDuotoneIcon({
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
    name: 'square-academic-cap',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.2172 3.49965C12.7962 2.83345 11.2037 2.83345 9.78272 3.49965L3.0916 6.63659C2.0156 7.14105 1.73507 8.56352 2.25 9.54666L2.25 14.5C2.25 14.9142 2.58579 15.25 3 15.25C3.41421 15.25 3.75 14.9142 3.75 14.5V10.672L9.78281 13.5003C11.2038 14.1665 12.7963 14.1665 14.2173 13.5003L20.9084 10.3634C22.3639 9.68105 22.3639 7.31899 20.9084 6.63664L14.2172 3.49965Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M5 11.2581L9.78281 13.5003C11.2038 14.1665 12.7963 14.1665 14.2173 13.5003L19 11.2581V16.6252C19 17.6333 18.4965 18.577 17.6147 19.0654C16.1463 19.8786 13.796 20.9998 12 20.9998C10.204 20.9998 7.8537 19.8786 6.38533 19.0654C5.5035 18.577 5 17.6333 5 16.6252V11.2581Z" fill="currentColor"/>''',
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
