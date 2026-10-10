// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE5IDguOTc0MTRWMTQuOTg2QzE5IDE4Ljg1OTcgMTUuODY2IDIxLjk5OTkgMTIgMjEuOTk5OUM4LjEzNDAxIDIxLjk5OTkgNSAxOC44NTk3IDUgMTQuOTg2VjguOTc0MTRDNSA1LjM1NDMzIDcuNzM2NjggMi4zNzQ5NyAxMS4yNSAyVjUuMzg1NDJDMTAuNjU4OCA1LjY2Njg1IDEwLjI1IDYuMjcwNjcgMTAuMjUgNi45NzAxNlY4Ljk3NDE0QzEwLjI1IDkuOTQyNTYgMTEuMDMzNSAxMC43Mjc2IDEyIDEwLjcyNzZDMTIuOTY2NSAxMC43Mjc2IDEzLjc1IDkuOTQyNTYgMTMuNzUgOC45NzQxNFY2Ljk3MDE2QzEzLjc1IDYuMjcwNjcgMTMuMzQxMiA1LjY2Njg1IDEyLjc1IDUuMzg1NDJWMkMxNi4yNjMzIDIuMzc0OTcgMTkgNS4zNTQzMyAxOSA4Ljk3NDE0WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTMuNzUgOC45NzM4NVY2Ljk2OTg3QzEzLjc1IDYuMjcwMzggMTMuMzQxMiA1LjY2NjU2IDEyLjc1IDUuMzg1MTNWMS45OTk3MUMxMi41MDM2IDEuOTczNDEgMTIuMjUzNCAxLjk1OTk2IDEyIDEuOTU5OTZDMTEuNzQ2NiAxLjk1OTk2IDExLjQ5NjQgMS45NzM0MSAxMS4yNSAxLjk5OTcxVjUuMzg1MTNDMTAuNjU4OCA1LjY2NjU2IDEwLjI1IDYuMjcwMzggMTAuMjUgNi45Njk4N1Y4Ljk3Mzg1QzEwLjI1IDkuOTQyMjcgMTEuMDMzNSAxMC43MjczIDEyIDEwLjcyNzNDMTIuOTY2NSAxMC43MjczIDEzLjc1IDkuOTQyMjcgMTMuNzUgOC45NzM4NVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MouseBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `mouse` icon in the boldDuotone style.
  const MouseBoldDuotoneIcon({
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
    name: 'mouse',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.75 8.97385V6.96987C13.75 6.27038 13.3412 5.66656 12.75 5.38513V1.99971C12.5036 1.97341 12.2534 1.95996 12 1.95996C11.7466 1.95996 11.4964 1.97341 11.25 1.99971V5.38513C10.6588 5.66656 10.25 6.27038 10.25 6.96987V8.97385C10.25 9.94227 11.0335 10.7273 12 10.7273C12.9665 10.7273 13.75 9.94227 13.75 8.97385Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M19 8.97414V14.986C19 18.8597 15.866 21.9999 12 21.9999C8.13401 21.9999 5 18.8597 5 14.986V8.97414C5 5.35433 7.73668 2.37497 11.25 2V5.38542C10.6588 5.66685 10.25 6.27067 10.25 6.97016V8.97414C10.25 9.94256 11.0335 10.7276 12 10.7276C12.9665 10.7276 13.75 9.94256 13.75 8.97414V6.97016C13.75 6.27067 13.3412 5.66685 12.75 5.38542V2C16.2633 2.37497 19 5.35433 19 8.97414Z" fill="currentColor"/>''',
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
