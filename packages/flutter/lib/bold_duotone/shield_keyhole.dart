// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `shield-keyhole` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMyAxMC40MTY3QzMgNy4yMTkwNyAzIDUuNjIwMjggMy4zNzc1MiA1LjA4MjQxQzMuNzU1MDMgNC41NDQ1NCA1LjI1ODMyIDQuMDI5OTYgOC4yNjQ5MSAzLjAwMDc5TDguODM3NzIgMi44MDQ3MkMxMC40MDUgMi4yNjgyNCAxMS4xODg2IDIgMTIgMkMxMi44MTE0IDIgMTMuNTk1IDIuMjY4MjQgMTUuMTYyMyAyLjgwNDcyTDE1LjczNTEgMy4wMDA3OUMxOC43NDE3IDQuMDI5OTYgMjAuMjQ1IDQuNTQ0NTQgMjAuNjIyNSA1LjA4MjQxQzIxIDUuNjIwMjggMjEgNy4yMTkwNyAyMSAxMC40MTY3VjExLjk5MTRDMjEgMTcuNjI5NCAxNi43NjEgMjAuMzY1NSAxNC4xMDE0IDIxLjUyNzNDMTMuMzggMjEuODQyNCAxMy4wMTkzIDIyIDEyIDIyQzEwLjk4MDcgMjIgMTAuNjIgMjEuODQyNCA5Ljg5ODU2IDIxLjUyNzNDNy4yMzg5NiAyMC4zNjU1IDMgMTcuNjI5NCAzIDExLjk5MTRWMTAuNDE2N1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEzLjUgMTVDMTMuNSAxNS41NTIzIDEzLjA1MjMgMTYgMTIuNSAxNkgxMS41QzEwLjk0NzcgMTYgMTAuNSAxNS41NTIzIDEwLjUgMTVWMTMuNTk4N0M5LjYwMzMgMTMuMDc5OSA5IDEyLjExMDQgOSAxMUM5IDkuMzQzMTUgMTAuMzQzMSA4IDEyIDhDMTMuNjU2OSA4IDE1IDkuMzQzMTUgMTUgMTFDMTUgMTIuMTEwNCAxNC4zOTY3IDEzLjA3OTkgMTMuNSAxMy41OTg3VjE1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ShieldKeyholeBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `shield-keyhole` icon in the boldDuotone style.
  const ShieldKeyholeBoldDuotoneIcon({
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
    name: 'shield-keyhole',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.5 15C13.5 15.5523 13.0523 16 12.5 16H11.5C10.9477 16 10.5 15.5523 10.5 15V13.5987C9.6033 13.0799 9 12.1104 9 11C9 9.34315 10.3431 8 12 8C13.6569 8 15 9.34315 15 11C15 12.1104 14.3967 13.0799 13.5 13.5987V15Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3 10.4167C3 7.21907 3 5.62028 3.37752 5.08241C3.75503 4.54454 5.25832 4.02996 8.26491 3.00079L8.83772 2.80472C10.405 2.26824 11.1886 2 12 2C12.8114 2 13.595 2.26824 15.1623 2.80472L15.7351 3.00079C18.7417 4.02996 20.245 4.54454 20.6225 5.08241C21 5.62028 21 7.21907 21 10.4167V11.9914C21 17.6294 16.761 20.3655 14.1014 21.5273C13.38 21.8424 13.0193 22 12 22C10.9807 22 10.62 21.8424 9.89856 21.5273C7.23896 20.3655 3 17.6294 3 11.9914V10.4167Z" fill="currentColor"/>''',
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
