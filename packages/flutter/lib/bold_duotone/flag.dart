// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik02LjUgMS43NUM2LjUgMS4zMzU3OSA2LjE2NDIxIDEgNS43NSAxQzUuMzM1NzkgMSA1IDEuMzM1NzkgNSAxLjc1VjIxLjc1QzUgMjIuMTY0MiA1LjMzNTc5IDIyLjUgNS43NSAyMi41QzYuMTY0MjEgMjIuNSA2LjUgMjIuMTY0MiA2LjUgMjEuNzVWMTMuNlYzLjZWMS43NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEzLjM0ODYgMy43ODk0N0wxMy4xNDQ5IDMuNzA4MDFDMTEuNTgyMSAzLjA4Mjg4IDkuODcxMiAyLjkyNTggOC4yMjA2NyAzLjI1NTkxTDYuNSAzLjYwMDA0VjEzLjZMOC4yMjA2NyAxMy4yNTU5QzkuODcxMiAxMi45MjU4IDExLjU4MjEgMTMuMDgyOSAxMy4xNDQ5IDEzLjcwOEMxNC44Mzg1IDE0LjM4NTQgMTYuNzAyNCAxNC41MTE5IDE4LjQ3MiAxNC4wNjk1TDE4LjY4NjQgMTQuMDE1OUMxOS4zMTE1IDEzLjg1OTcgMTkuNzUgMTMuMjk4IDE5Ljc1IDEyLjY1MzhWNS4yODY3M0MxOS43NSA0LjUwNjE3IDE5LjAxNjUgMy45MzM0MyAxOC4yNTkyIDQuMTIyNzRDMTYuNjI4IDQuNTMwNTUgMTQuOTA5NyA0LjQxMzkzIDEzLjM0ODYgMy43ODk0N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class FlagBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `flag` icon in the boldDuotone style.
  const FlagBoldDuotoneIcon({
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
    name: 'flag',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.3486 3.78947L13.1449 3.70801C11.5821 3.08288 9.8712 2.9258 8.22067 3.25591L6.5 3.60004V13.6L8.22067 13.2559C9.8712 12.9258 11.5821 13.0829 13.1449 13.708C14.8385 14.3854 16.7024 14.5119 18.472 14.0695L18.6864 14.0159C19.3115 13.8597 19.75 13.298 19.75 12.6538V5.28673C19.75 4.50617 19.0165 3.93343 18.2592 4.12274C16.628 4.53055 14.9097 4.41393 13.3486 3.78947Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M6.5 1.75C6.5 1.33579 6.16421 1 5.75 1C5.33579 1 5 1.33579 5 1.75V21.75C5 22.1642 5.33579 22.5 5.75 22.5C6.16421 22.5 6.5 22.1642 6.5 21.75V13.6V3.6V1.75Z" fill="currentColor"/>''',
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
