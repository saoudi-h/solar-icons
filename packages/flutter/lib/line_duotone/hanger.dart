// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMC4yOTc1IDE5LjAwMDJIMy43MDI1NEMyLjA4NzIxIDE5LjAwMDIgMS4zODMyMiAxNy4xNjUgMi42NTUzMSAxNi4yNzAyTDkuNzUxIDExLjI3OUMxMC4zNTM0IDEwLjg1NTIgMTEuMDc2IDEwLjYzODYgMTEuODAxNSAxMC42MzAxQzEyLjUzMyAxMC42MjE2IDEzLjI2NzQgMTAuODI0OCAxMy44ODQ1IDExLjI0MDhMMjEuMzE3IDE2LjI1MTFDMjIuNjIzNCAxNy4xMzE4IDIxLjkzMDUgMTkuMDAwMiAyMC4yOTc1IDE5LjAwMDJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTEuODAxNSAxMC42Mjk5VjEwLjM0NTVDMTEuODAxNSA5LjUwMTk3IDEyLjY5NDggOC44NDcwNiAxMy4yOTI1IDguMTk2ODJDMTMuNjA0NiA3Ljg1NzMzIDEzLjc4MzkgNy40MDUzMiAxMy43ODM5IDYuOTA5MDlDMTMuNzgzOSA1Ljg1NDczIDEyLjgzMjkgNSAxMS42NTk5IDVDMTAuNDg2OCA1IDkuNTM1ODkgNS44NTQ3MyA5LjUzNTg5IDYuOTA5MDkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
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
