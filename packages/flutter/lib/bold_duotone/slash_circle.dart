// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIyIDEyQzIyIDE3LjUyMjggMTcuNTIyOCAyMiAxMiAyMkM2LjQ3NzE1IDIyIDIgMTcuNTIyOCAyIDEyQzIgNi40NzcxNSA2LjQ3NzE1IDIgMTIgMkMxNy41MjI4IDIgMjIgNi40NzcxNSAyMiAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE0LjAxODkgNy4zNjQ0N0MxNC4xMjYxIDYuOTY0MzcgMTMuODg4NiA2LjU1MzExIDEzLjQ4ODUgNi40NDU5MUMxMy4wODg0IDYuMzM4NyAxMi42NzcyIDYuNTc2MTQgMTIuNTcgNi45NzYyNEw5Ljk4MTggMTYuNjM1NUM5Ljg3NDU5IDE3LjAzNTYgMTAuMTEyIDE3LjQ0NjggMTAuNTEyMSAxNy41NTQxQzEwLjkxMjIgMTcuNjYxMyAxMS4zMjM1IDE3LjQyMzggMTEuNDMwNyAxNy4wMjM3TDE0LjAxODkgNy4zNjQ0N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class SlashCircleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `slash-circle` icon in the boldDuotone style.
  const SlashCircleBoldDuotoneIcon({
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
    name: 'slash-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.0189 7.36447C14.1261 6.96437 13.8886 6.55311 13.4885 6.44591C13.0884 6.3387 12.6772 6.57614 12.57 6.97624L9.9818 16.6355C9.87459 17.0356 10.112 17.4468 10.5121 17.5541C10.9122 17.6613 11.3235 17.4238 11.4307 17.0237L14.0189 7.36447Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" fill="currentColor"/>''',
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
