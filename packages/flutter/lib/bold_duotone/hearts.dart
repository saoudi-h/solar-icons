// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hearts` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiA5LjEzNzFDMiAxNCA2LjAxOTQzIDE2LjU5MTQgOC45NjE3MyAxOC45MTA5QzEwIDE5LjcyOTQgMTEgMjAuNSAxMiAyMC41QzEzIDIwLjUgMTQgMTkuNzI5NCAxNS4wMzgzIDE4LjkxMDlDMTcuOTgwNiAxNi41OTE0IDIyIDE0IDIyIDkuMTM3MUMyMiA0LjI3NDE2IDE2LjQ5OTggMC44MjU0NjQgMTIgNS41MDA2M0M3LjUwMDE2IDAuODI1NDY0IDIgNC4yNzQxNiAyIDkuMTM3MVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE2LjUgMTMuMjg3MUMxNC4wMjUxIDEwLjU3MTMgMTEgMTIuNTc0NiAxMSAxNS4zOTk1QzExIDE3Ljk1ODMgMTIuODE0IDE5LjQzNDQgMTQuMzU4NCAyMC42OTEyTDE0LjQwMTggMjAuNzI2NUMxNC41NDc0IDIwLjg0NDkgMTQuNjkwMyAyMC45NjE1IDE0LjgyOSAyMS4wNzY5QzE1LjQgMjEuNTUyMyAxNS45NSAyMiAxNi41IDIyQzE3LjA1IDIyIDE3LjYgMjEuNTUyMyAxOC4xNzEgMjEuMDc2OUMxOS43ODkzIDE5LjcyOTYgMjIgMTguMjI0MyAyMiAxNS4zOTk1QzIyIDE0LjQ3MTUgMjEuNjczNSAxMy42MzIxIDIxLjE0NzQgMTMuMDE5N0MyMC4wNzE4IDExLjc2NzcgMTguMTYxOSAxMS40NjM1IDE2LjUgMTMuMjg3MVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class HeartsBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `hearts` icon in the boldDuotone style.
  const HeartsBoldDuotoneIcon({
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
    name: 'hearts',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.5 13.2871C14.0251 10.5713 11 12.5746 11 15.3995C11 17.9583 12.814 19.4344 14.3584 20.6912L14.4018 20.7265C14.5474 20.8449 14.6903 20.9615 14.829 21.0769C15.4 21.5523 15.95 22 16.5 22C17.05 22 17.6 21.5523 18.171 21.0769C19.7893 19.7296 22 18.2243 22 15.3995C22 14.4715 21.6735 13.6321 21.1474 13.0197C20.0718 11.7677 18.1619 11.4635 16.5 13.2871Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 9.1371C2 14 6.01943 16.5914 8.96173 18.9109C10 19.7294 11 20.5 12 20.5C13 20.5 14 19.7294 15.0383 18.9109C17.9806 16.5914 22 14 22 9.1371C22 4.27416 16.4998 0.825464 12 5.50063C7.50016 0.825464 2 4.27416 2 9.1371Z" fill="currentColor"/>''',
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
