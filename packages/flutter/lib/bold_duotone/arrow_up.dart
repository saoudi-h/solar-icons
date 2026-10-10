// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-up` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDIwLjc1QzEyLjQxNDIgMjAuNzUgMTIuNzUgMjAuNDE0MiAxMi43NSAyMEwxMi43NSAxMC43NUwxMS4yNSAxMC43NUwxMS4yNSAyMEMxMS4yNSAyMC40MTQyIDExLjU4NTggMjAuNzUgMTIgMjAuNzVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik02LjAwMDAyIDEwLjc1QzUuNjk2NjcgMTAuNzUgNS40MjMyIDEwLjU2NzMgNS4zMDcxMSAxMC4yODdDNS4xOTEwMyAxMC4wMDY4IDUuMjU1MTkgOS42ODQxNyA1LjQ2OTY5IDkuNDY5NjdMMTEuNDY5NyAzLjQ2OTY3QzExLjYxMDMgMy4zMjkwMiAxMS44MDExIDMuMjUgMTIgMy4yNUMxMi4xOTg5IDMuMjUgMTIuMzg5NyAzLjMyOTAyIDEyLjUzMDQgMy40Njk2N0wxOC41MzA0IDkuNDY5NjdDMTguNzQ0OSA5LjY4NDE3IDE4LjgwOSAxMC4wMDY4IDE4LjY5MjkgMTAuMjg3QzE4LjU3NjggMTAuNTY3MyAxOC4zMDM0IDEwLjc1IDE4IDEwLjc1TDYuMDAwMDIgMTAuNzVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ArrowUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-up` icon in the boldDuotone style.
  const ArrowUpBoldDuotoneIcon({
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
    name: 'arrow-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M6.00002 10.75C5.69667 10.75 5.4232 10.5673 5.30711 10.287C5.19103 10.0068 5.25519 9.68417 5.46969 9.46967L11.4697 3.46967C11.6103 3.32902 11.8011 3.25 12 3.25C12.1989 3.25 12.3897 3.32902 12.5304 3.46967L18.5304 9.46967C18.7449 9.68417 18.809 10.0068 18.6929 10.287C18.5768 10.5673 18.3034 10.75 18 10.75L6.00002 10.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M12 20.75C12.4142 20.75 12.75 20.4142 12.75 20L12.75 10.75L11.25 10.75L11.25 20C11.25 20.4142 11.5858 20.75 12 20.75Z" fill="currentColor"/>''',
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
