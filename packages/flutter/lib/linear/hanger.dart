// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05LjUzNTg5IDYuOTA5MDlDOS41MzU4OSA1Ljg1NDczIDEwLjQ4NjggNSAxMS42NTk5IDVDMTIuODMyOSA1IDEzLjc4MzkgNS44NTQ3MyAxMy43ODM5IDYuOTA5MDlDMTMuNzgzOSA3LjQwNTMyIDEzLjYwNDYgNy44NTczMyAxMy4yOTI1IDguMTk2ODJDMTIuNjk0OCA4Ljg0NzA2IDExLjgwMTUgOS41MDE5NyAxMS44MDE1IDEwLjM0NTVWMTAuNjI5OU0xMS44MDE1IDEwLjYyOTlDMTIuNTMzIDEwLjYyMTQgMTMuMjY3NCAxMC44MjQ2IDEzLjg4NDUgMTEuMjQwNkwyMS4zMTcgMTYuMjUwOUMyMi42MjM0IDE3LjEzMTUgMjEuOTMwNSAxOSAyMC4yOTc1IDE5SDMuNzAyNTRDMi4wODcyMSAxOSAxLjM4MzIyIDE3LjE2NDggMi42NTUzMSAxNi4yN0w5Ljc1MSAxMS4yNzg3QzEwLjM1MzQgMTAuODU1IDExLjA3NiAxMC42MzgzIDExLjgwMTUgMTAuNjI5OVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class HangerLinearIcon extends StatelessWidget {
  /// Creates the `hanger` icon in the linear style.
  const HangerLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9.53589 6.90909C9.53589 5.85473 10.4868 5 11.6599 5C12.8329 5 13.7839 5.85473 13.7839 6.90909C13.7839 7.40532 13.6046 7.85733 13.2925 8.19682C12.6948 8.84706 11.8015 9.50197 11.8015 10.3455V10.6299M11.8015 10.6299C12.533 10.6214 13.2674 10.8246 13.8845 11.2406L21.317 16.2509C22.6234 17.1315 21.9305 19 20.2975 19H3.70254C2.08721 19 1.38322 17.1648 2.65531 16.27L9.751 11.2787C10.3534 10.855 11.076 10.6383 11.8015 10.6299Z" stroke="currentColor" stroke-linecap="round"/>''',
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
