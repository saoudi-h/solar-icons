// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMi43NSAyMEMxMi43NSAyMC40MTQyIDEyLjQxNDIgMjAuNzUgMTIgMjAuNzVDMTEuNTg1OCAyMC43NSAxMS4yNSAyMC40MTQyIDExLjI1IDIwTDExLjI1IDEwLjc1SDYuMDAwMDJDNS42OTY2OCAxMC43NSA1LjQyMzIgMTAuNTY3MyA1LjMwNzExIDEwLjI4N0M1LjE5MTAzIDEwLjAwNjggNS4yNTUxOSA5LjY4NDE3IDUuNDY5NjkgOS40Njk2N0wxMS40Njk3IDMuNDY5NjdDMTEuNjEwMyAzLjMyOTAyIDExLjgwMTEgMy4yNSAxMiAzLjI1QzEyLjE5ODkgMy4yNSAxMi4zODk3IDMuMzI5MDIgMTIuNTMwNCAzLjQ2OTY3TDE4LjUzMDQgOS40Njk2N0MxOC43NDQ5IDkuNjg0MTcgMTguODA5IDEwLjAwNjggMTguNjkyOSAxMC4yODdDMTguNTc2OCAxMC41NjczIDE4LjMwMzQgMTAuNzUgMTggMTAuNzVIMTIuNzVMMTIuNzUgMjBaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ArrowUpBoldIcon extends StatelessWidget {
  /// Creates the `arrow-up` icon in the bold style.
  const ArrowUpBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12.75 20C12.75 20.4142 12.4142 20.75 12 20.75C11.5858 20.75 11.25 20.4142 11.25 20L11.25 10.75H6.00002C5.69668 10.75 5.4232 10.5673 5.30711 10.287C5.19103 10.0068 5.25519 9.68417 5.46969 9.46967L11.4697 3.46967C11.6103 3.32902 11.8011 3.25 12 3.25C12.1989 3.25 12.3897 3.32902 12.5304 3.46967L18.5304 9.46967C18.7449 9.68417 18.809 10.0068 18.6929 10.287C18.5768 10.5673 18.3034 10.75 18 10.75H12.75L12.75 20Z" fill="currentColor"/>''',
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
