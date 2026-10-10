// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hanger` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwLjI5NzUgMTkuMDAwMkgzLjcwMjU0QzIuMDg3MjEgMTkuMDAwMiAxLjM4MzIyIDE3LjE2NSAyLjY1NTMxIDE2LjI3MDJMOS43NTEgMTEuMjc5QzEwLjM1MzQgMTAuODU1MiAxMS4wNzYgMTAuNjM4NiAxMS44MDE1IDEwLjYzMDFDMTIuNTMzIDEwLjYyMTYgMTMuMjY3NCAxMC44MjQ4IDEzLjg4NDUgMTEuMjQwOEwyMS4zMTcgMTYuMjUxMUMyMi42MjM0IDE3LjEzMTggMjEuOTMwNSAxOS4wMDAyIDIwLjI5NzUgMTkuMDAwMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xMS44MDE1IDEwLjYyOTlWMTAuMzQ1NUMxMS44MDE1IDkuNTAxOTcgMTIuNjk0OCA4Ljg0NzA2IDEzLjI5MjUgOC4xOTY4MkMxMy42MDQ2IDcuODU3MzMgMTMuNzgzOSA3LjQwNTMyIDEzLjc4MzkgNi45MDkwOUMxMy43ODM5IDUuODU0NzMgMTIuODMyOSA1IDExLjY1OTkgNUMxMC40ODY4IDUgOS41MzU4OSA1Ljg1NDczIDkuNTM1ODkgNi45MDkwOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class HangerLineDuotoneIcon extends StatelessWidget {
  /// Creates the `hanger` icon in the lineDuotone style.
  const HangerLineDuotoneIcon({
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
    name: 'hanger',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M20.2975 19.0002H3.70254C2.08721 19.0002 1.38322 17.165 2.65531 16.2702L9.751 11.279C10.3534 10.8552 11.076 10.6386 11.8015 10.6301C12.533 10.6216 13.2674 10.8248 13.8845 11.2408L21.317 16.2511C22.6234 17.1318 21.9305 19.0002 20.2975 19.0002Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.8015 10.6299V10.3455C11.8015 9.50197 12.6948 8.84706 13.2925 8.19682C13.6046 7.85733 13.7839 7.40532 13.7839 6.90909C13.7839 5.85473 12.8329 5 11.6599 5C10.4868 5 9.53589 5.85473 9.53589 6.90909" stroke="currentColor" stroke-linecap="round"/>''',
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
