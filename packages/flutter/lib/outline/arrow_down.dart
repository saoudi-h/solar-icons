// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMy4yNUMxMi40MTQyIDMuMjUgMTIuNzUgMy41ODU3OSAxMi43NSA0TDEyLjc1IDE4LjE4OTNMMTcuNDY5NyAxMy40Njk3QzE3Ljc2MjYgMTMuMTc2OCAxOC4yMzc0IDEzLjE3NjggMTguNTMwMyAxMy40Njk3QzE4LjgyMzIgMTMuNzYyNiAxOC44MjMyIDE0LjIzNzQgMTguNTMwMyAxNC41MzAzTDEyLjUzMDMgMjAuNTMwM0MxMi4zODk3IDIwLjY3MSAxMi4xOTg5IDIwLjc1IDEyIDIwLjc1QzExLjgwMTEgMjAuNzUgMTEuNjEwMyAyMC42NzEgMTEuNDY5NyAyMC41MzAzTDUuNDY5NjcgMTQuNTMwM0M1LjE3Njc4IDE0LjIzNzQgNS4xNzY3OCAxMy43NjI2IDUuNDY5NjcgMTMuNDY5N0M1Ljc2MjU2IDEzLjE3NjggNi4yMzc0NCAxMy4xNzY4IDYuNTMwMzMgMTMuNDY5N0wxMS4yNSAxOC4xODkzTDExLjI1IDRDMTEuMjUgMy41ODU3OSAxMS41ODU4IDMuMjUgMTIgMy4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ArrowDownOutlineIcon extends StatelessWidget {
  /// Creates the `arrow-down` icon in the outline style.
  const ArrowDownOutlineIcon({
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
    name: 'arrow-down',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 3.25C12.4142 3.25 12.75 3.58579 12.75 4L12.75 18.1893L17.4697 13.4697C17.7626 13.1768 18.2374 13.1768 18.5303 13.4697C18.8232 13.7626 18.8232 14.2374 18.5303 14.5303L12.5303 20.5303C12.3897 20.671 12.1989 20.75 12 20.75C11.8011 20.75 11.6103 20.671 11.4697 20.5303L5.46967 14.5303C5.17678 14.2374 5.17678 13.7626 5.46967 13.4697C5.76256 13.1768 6.23744 13.1768 6.53033 13.4697L11.25 18.1893L11.25 4C11.25 3.58579 11.5858 3.25 12 3.25Z" fill="currentColor"/>''',
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
