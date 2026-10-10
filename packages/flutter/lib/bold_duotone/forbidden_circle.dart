// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTQuOTI4OTMgNC45Mjg5M0MxLjAyMzY5IDguODM0MTggMS4wMjM2OSAxNS4xNjU4IDQuOTI4OTMgMTkuMDcxMUM4LjgzNDE4IDIyLjk3NjMgMTUuMTY1NiAyMi45NzYxIDE5LjA3MDggMTkuMDcwOEMyMi45NzYxIDE1LjE2NTYgMjIuOTc2MyA4LjgzNDE4IDE5LjA3MTEgNC45Mjg5M0MxNS4xNjU4IDEuMDIzNjkgOC44MzQxOCAxLjAyMzY5IDQuOTI4OTMgNC45Mjg5M1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE4LjUyMTEgNC40MTg0Nkw0LjQxNzk3IDE4LjUyMTNDNC41ODAwNiAxOC43MDk0IDQuNzUwMzEgMTguODkyOCA0LjkyODcgMTkuMDcxMkM1LjEwNzEgMTkuMjQ5NiA1LjI5MDU3IDE5LjQxOTkgNS40Nzg2MyAxOS41ODJMMTkuNTgxNyA1LjQ3OTE0QzE5LjQxOTYgNS4yOTEwMyAxOS4yNDkzIDUuMTA3NTIgMTkuMDcwOCA0LjkyOTA4QzE4Ljg5MjUgNC43NTA3MyAxOC43MDkxIDQuNTgwNTIgMTguNTIxMSA0LjQxODQ2WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ForbiddenCircleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `forbidden-circle` icon in the boldDuotone style.
  const ForbiddenCircleBoldDuotoneIcon({
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
    name: 'forbidden-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M18.5211 4.41846L4.41797 18.5213C4.58006 18.7094 4.75031 18.8928 4.9287 19.0712C5.1071 19.2496 5.29057 19.4199 5.47863 19.582L19.5817 5.47914C19.4196 5.29103 19.2493 5.10752 19.0708 4.92908C18.8925 4.75073 18.7091 4.58052 18.5211 4.41846Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4.92893 4.92893C1.02369 8.83418 1.02369 15.1658 4.92893 19.0711C8.83418 22.9763 15.1656 22.9761 19.0708 19.0708C22.9761 15.1656 22.9763 8.83418 19.0711 4.92893C15.1658 1.02369 8.83418 1.02369 4.92893 4.92893Z" fill="currentColor"/>''',
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
