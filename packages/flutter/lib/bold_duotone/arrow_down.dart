// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-down` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDMuMjVDMTIuNDE0MiAzLjI1IDEyLjc1IDMuNTg1NzkgMTIuNzUgNEwxMi43NSAxMy4yNUgxMS4yNUwxMS4yNSA0QzExLjI1IDMuNTg1NzkgMTEuNTg1OCAzLjI1IDEyIDMuMjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik02LjAwMDAyIDEzLjI1QzUuNjk2NjcgMTMuMjUgNS40MjMyIDEzLjQzMjcgNS4zMDcxMSAxMy43MTNDNS4xOTEwMyAxMy45OTMyIDUuMjU1MTkgMTQuMzE1OCA1LjQ2OTY5IDE0LjUzMDNMMTEuNDY5NyAyMC41MzAzQzExLjYxMDMgMjAuNjcxIDExLjgwMTEgMjAuNzUgMTIgMjAuNzVDMTIuMTk4OSAyMC43NSAxMi4zODk3IDIwLjY3MSAxMi41MzA0IDIwLjUzMDNMMTguNTMwNCAxNC41MzAzQzE4Ljc0NDkgMTQuMzE1OCAxOC44MDkgMTMuOTkzMiAxOC42OTI5IDEzLjcxM0MxOC41NzY4IDEzLjQzMjcgMTguMzAzNCAxMy4yNSAxOCAxMy4yNUw2LjAwMDAyIDEzLjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowDownBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-down` icon in the boldDuotone style.
  const ArrowDownBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M6.00002 13.25C5.69667 13.25 5.4232 13.4327 5.30711 13.713C5.19103 13.9932 5.25519 14.3158 5.46969 14.5303L11.4697 20.5303C11.6103 20.671 11.8011 20.75 12 20.75C12.1989 20.75 12.3897 20.671 12.5304 20.5303L18.5304 14.5303C18.7449 14.3158 18.809 13.9932 18.6929 13.713C18.5768 13.4327 18.3034 13.25 18 13.25L6.00002 13.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M12 3.25C12.4142 3.25 12.75 3.58579 12.75 4L12.75 13.25H11.25L11.25 4C11.25 3.58579 11.5858 3.25 12 3.25Z" fill="currentColor"/>''',
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
