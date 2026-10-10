// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE1LjkzMDYgNC41MTE2N0MxNi4yMDAyIDQuMTk3MzUgMTYuNjczNyA0LjE2MTEgMTYuOTg4MiA0LjQzMDYxQzE3LjMwMjQgNC43MDAyMSAxNy4zMzg3IDUuMTczODIgMTcuMDY5MiA1LjQ4ODIzTDExLjQ4ODIgMTJMMTcuMDY5MiAxOC41MTE3QzE3LjMzODcgMTguODI2MSAxNy4zMDI1IDE5LjI5OTcgMTYuOTg4MiAxOS41NjkzQzE2LjY3MzggMTkuODM4OCAxNi4yMDAyIDE5LjgwMjUgMTUuOTMwNiAxOS40ODgyTDkuOTMwNTYgMTIuNDg4MkM5LjY4OTgxIDEyLjIwNzQgOS42ODk4MSAxMS43OTI1IDkuOTMwNTYgMTEuNTExN0wxNS45MzA2IDQuNTExNjdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik04LjI1IDE5QzguMjUgMTkuNDE0MiA3LjkxNDIgMTkuNzUgNy41IDE5Ljc1QzcuMDg1NzkgMTkuNzUgNi43NSAxOS40MTQyIDYuNzUgMTlMNi43NSA1QzYuNzUgNC41ODU3OSA3LjA4NTc5IDQuMjUgNy41IDQuMjVDNy45MTQyMSA0LjI1IDguMjUgNC41ODU3OSA4LjI1IDVMOC4yNSAxOVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ChevronFirstBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chevron-first` icon in the boldDuotone style.
  const ChevronFirstBoldDuotoneIcon({
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
    name: 'chevron-first',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.25 19C8.25 19.4142 7.9142 19.75 7.5 19.75C7.08579 19.75 6.75 19.4142 6.75 19L6.75 5C6.75 4.58579 7.08579 4.25 7.5 4.25C7.91421 4.25 8.25 4.58579 8.25 5L8.25 19Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.9306 4.51167C16.2002 4.19735 16.6737 4.1611 16.9882 4.43061C17.3024 4.70021 17.3387 5.17382 17.0692 5.48823L11.4882 12L17.0692 18.5117C17.3387 18.8261 17.3025 19.2997 16.9882 19.5693C16.6738 19.8388 16.2002 19.8025 15.9306 19.4882L9.93056 12.4882C9.68981 12.2074 9.68981 11.7925 9.93056 11.5117L15.9306 4.51167Z" fill="currentColor"/>''',
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
