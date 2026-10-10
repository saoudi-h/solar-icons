// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `shield-user` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMyAxMC40MTY3QzMgNy4yMTkwNyAzIDUuNjIwMjggMy4zNzc1MiA1LjA4MjQxQzMuNzU1MDMgNC41NDQ1NCA1LjI1ODMyIDQuMDI5OTYgOC4yNjQ5MSAzLjAwMDc5TDguODM3NzIgMi44MDQ3MkMxMC40MDUgMi4yNjgyNCAxMS4xODg2IDIgMTIgMkMxMi44MTE0IDIgMTMuNTk1IDIuMjY4MjQgMTUuMTYyMyAyLjgwNDcyTDE1LjczNTEgMy4wMDA3OUMxOC43NDE3IDQuMDI5OTYgMjAuMjQ1IDQuNTQ0NTQgMjAuNjIyNSA1LjA4MjQxQzIxIDUuNjIwMjggMjEgNy4yMTkwNyAyMSAxMC40MTY3VjExLjk5MTRDMjEgMTcuNjI5NCAxNi43NjEgMjAuMzY1NSAxNC4xMDE0IDIxLjUyNzNDMTMuMzggMjEuODQyNCAxMy4wMTkzIDIyIDEyIDIyQzEwLjk4MDcgMjIgMTAuNjIgMjEuODQyNCA5Ljg5ODU2IDIxLjUyNzNDNy4yMzg5NiAyMC4zNjU1IDMgMTcuNjI5NCAzIDExLjk5MTRWMTAuNDE2N1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE0IDlDMTQgMTAuMTA0NiAxMy4xMDQ2IDExIDEyIDExQzEwLjg5NTQgMTEgMTAgMTAuMTA0NiAxMCA5QzEwIDcuODk1NDMgMTAuODk1NCA3IDEyIDdDMTMuMTA0NiA3IDE0IDcuODk1NDMgMTQgOVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyIDE3QzE2IDE3IDE2IDE2LjEwNDYgMTYgMTVDMTYgMTMuODk1NCAxNC4yMDkxIDEzIDEyIDEzQzkuNzkwODYgMTMgOCAxMy44OTU0IDggMTVDOCAxNi4xMDQ2IDggMTcgMTIgMTdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ShieldUserBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `shield-user` icon in the boldDuotone style.
  const ShieldUserBoldDuotoneIcon({
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
    name: 'shield-user',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14 9C14 10.1046 13.1046 11 12 11C10.8954 11 10 10.1046 10 9C10 7.89543 10.8954 7 12 7C13.1046 7 14 7.89543 14 9Z" fill="currentColor"/>
<path d="M12 17C16 17 16 16.1046 16 15C16 13.8954 14.2091 13 12 13C9.79086 13 8 13.8954 8 15C8 16.1046 8 17 12 17Z" fill="currentColor"/>''',
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
