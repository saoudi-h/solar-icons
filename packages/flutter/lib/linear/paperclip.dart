// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik03LjkxNzUgMTcuODA2OEwxNS44MDg0IDEwLjI1MzVDMTYuNzU1OCA5LjM0NjY4IDE2Ljc1NTggNy44NzYzNyAxNS44MDg0IDYuOTY5NTFDMTQuODYxIDYuMDYyNjUgMTMuMzI1IDYuMDYyNjUgMTIuMzc3NiA2Ljk2OTUxTDQuNTQzODcgMTQuNDY4MUMyLjc0MzgyIDE2LjE5MTEgMi43NDM4MiAxOC45ODQ3IDQuNTQzODcgMjAuNzA3N0M2LjM0MzkxIDIyLjQzMDggOS4yNjIzNyAyMi40MzA4IDExLjA2MjQgMjAuNzA3N0wxOS4wMTA1IDEzLjA5OTdDMjEuNjYzMiAxMC41NjA1IDIxLjY2MzIgNi40NDM2MiAxOS4wMTA1IDMuOTA0NDFDMTYuMzU3OCAxLjM2NTIgMTIuMDU2OSAxLjM2NTIgOS40MDQxOSAzLjkwNDQxTDMgMTAuMDM0NiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class PaperclipLinearIcon extends StatelessWidget {
  /// Creates the `paperclip` icon in the linear style.
  const PaperclipLinearIcon({
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
    name: 'paperclip',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M7.9175 17.8068L15.8084 10.2535C16.7558 9.34668 16.7558 7.87637 15.8084 6.96951C14.861 6.06265 13.325 6.06265 12.3776 6.96951L4.54387 14.4681C2.74382 16.1911 2.74382 18.9847 4.54387 20.7077C6.34391 22.4308 9.26237 22.4308 11.0624 20.7077L19.0105 13.0997C21.6632 10.5605 21.6632 6.44362 19.0105 3.90441C16.3578 1.3652 12.0569 1.3652 9.40419 3.90441L3 10.0346" stroke="currentColor" stroke-linecap="round"/>''',
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
