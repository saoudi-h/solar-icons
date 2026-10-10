// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `minimalistic-magnifier-check` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBvcGFjaXR5PSIwLjUiIGN4PSIxMS41IiBjeT0iMTEuNSIgcj0iOS41IiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xOS40Njk3IDE5LjQ2OTdDMTkuNzYyNiAxOS4xNzY4IDIwLjIzNzQgMTkuMTc2OCAyMC41MzAzIDE5LjQ2OTdMMjIuNTMwMyAyMS40Njk3QzIyLjgyMzEgMjEuNzYyNiAyMi44MjMyIDIyLjIzNzQgMjIuNTMwMyAyMi41MzAzQzIyLjIzNzQgMjIuODIzMiAyMS43NjI2IDIyLjgyMzEgMjEuNDY5NyAyMi41MzAzTDE5LjQ2OTcgMjAuNTMwM0MxOS4xNzY4IDIwLjIzNzQgMTkuMTc2OCAxOS43NjI2IDE5LjQ2OTcgMTkuNDY5N1pNMTMuOTA4MiA4LjUzOTA2QzE0LjE2MjkgOC4yMTI1OSAxNC42MzQzIDguMTUzODIgMTQuOTYwOSA4LjQwODJDMTUuMjg3NCA4LjY2Mjg2IDE1LjM0NjIgOS4xMzQzNiAxNS4wOTE4IDkuNDYwOTRMMTEuMTkxNCAxNC40NjA5QzExLjA1MjIgMTQuNjM5NCAxMC44Mzk1IDE0Ljc0NTkgMTAuNjEzMyAxNC43NUMxMC40MTUzIDE0Ljc1MzUgMTAuMjI0OSAxNC42Nzg4IDEwLjA4MyAxNC41NDM5TDEwLjAyNTQgMTQuNDgyNEw3LjkyNTc4IDExLjk4MjRDNy42NTkzOCAxMS42NjUzIDcuNzAwNDYgMTEuMTkyMiA4LjAxNzU4IDEwLjkyNThDOC4zMzQ3MyAxMC42NTk0IDguODA3NzkgMTAuNzAwNSA5LjA3NDIyIDExLjAxNzZMMTAuNTc4MSAxMi44MDk2TDEzLjkwODIgOC41MzkwNloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MinimalisticMagnifierCheckBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `minimalistic-magnifier-check` icon in the boldDuotone style.
  const MinimalisticMagnifierCheckBoldDuotoneIcon({
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
    name: 'minimalistic-magnifier-check',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M19.4697 19.4697C19.7626 19.1768 20.2374 19.1768 20.5303 19.4697L22.5303 21.4697C22.8231 21.7626 22.8232 22.2374 22.5303 22.5303C22.2374 22.8232 21.7626 22.8231 21.4697 22.5303L19.4697 20.5303C19.1768 20.2374 19.1768 19.7626 19.4697 19.4697ZM13.9082 8.53906C14.1629 8.21259 14.6343 8.15382 14.9609 8.4082C15.2874 8.66286 15.3462 9.13436 15.0918 9.46094L11.1914 14.4609C11.0522 14.6394 10.8395 14.7459 10.6133 14.75C10.4153 14.7535 10.2249 14.6788 10.083 14.5439L10.0254 14.4824L7.92578 11.9824C7.65938 11.6653 7.70046 11.1922 8.01758 10.9258C8.33473 10.6594 8.80779 10.7005 9.07422 11.0176L10.5781 12.8096L13.9082 8.53906Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11.5" cy="11.5" r="9.5" fill="currentColor"/>''',
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
