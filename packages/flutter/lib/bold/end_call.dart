// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik04IDEzLjQ3ODJMOCAxMi44NjE3QzggMTIuODYxNyA4IDExLjM5NjMgMTIgMTEuMzk2M0MxNiAxMS4zOTYzIDE2IDEyLjg2MTcgMTYgMTIuODYxN1YxMy4yNUMxNiAxNC4yMDY0IDE2LjcyMjcgMTUuMDE5MiAxNy43MDA0IDE1LjE2MjVMMTkuNzAwNCAxNS40NTU2QzIwLjkxMDUgMTUuNjMyOSAyMiAxNC43MjY3IDIyIDEzLjU0MjlWMTEuNDE4M0MyMiAxMC44MzEzIDIxLjgxNjIgMTAuMjU0MiAyMS4zNzAzIDkuODU2MDFDMjAuMjI5NiA4LjgzNzMyIDE3LjQyMDggNyAxMiA3QzYuMjUxNDEgNyAzLjQ0MDI3IDkuNTgyNjkgMi40NDA4MyAxMC43ODg5QzIuMTI0NyAxMS4xNzA0IDIgMTEuNjUyNSAyIDEyLjE0MTRMMiAxNC4wNjQzQzIgMTUuMzYyMyAzLjI5NTYxIDE2LjI5MiA0LjU3OTk3IDE1LjkxNTZMNi41Nzk5NyAxNS4zMjk1QzcuNDIzMjkgMTUuMDgyMyA4IDE0LjMzMDUgOCAxMy40NzgyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class EndCallBoldIcon extends StatelessWidget {
  /// Creates the `end-call` icon in the bold style.
  const EndCallBoldIcon({
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
    name: 'end-call',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M8 13.4782L8 12.8617C8 12.8617 8 11.3963 12 11.3963C16 11.3963 16 12.8617 16 12.8617V13.25C16 14.2064 16.7227 15.0192 17.7004 15.1625L19.7004 15.4556C20.9105 15.6329 22 14.7267 22 13.5429V11.4183C22 10.8313 21.8162 10.2542 21.3703 9.85601C20.2296 8.83732 17.4208 7 12 7C6.25141 7 3.44027 9.58269 2.44083 10.7889C2.1247 11.1704 2 11.6525 2 12.1414L2 14.0643C2 15.3623 3.29561 16.292 4.57997 15.9156L6.57997 15.3295C7.42329 15.0823 8 14.3305 8 13.4782Z" fill="currentColor"/>''',
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
