// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik03IDEwTDkuMjkyODkgMTIuMjkyOUM5LjY4MzQyIDEyLjY4MzQgMTAuMzE2NiAxMi42ODM0IDEwLjcwNzEgMTIuMjkyOUwxMi4yOTI5IDEwLjcwNzFDMTIuNjgzNCAxMC4zMTY2IDEzLjMxNjYgMTAuMzE2NiAxMy43MDcxIDEwLjcwNzFMMTcgMTRNMTQuNSAxNEgxN1YxMS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTIyIDEyQzIyIDE2LjcxNCAyMiAxOS4wNzExIDIwLjUzNTUgMjAuNTM1NUMxOS4wNzExIDIyIDE2LjcxNCAyMiAxMiAyMkM3LjI4NTk1IDIyIDQuOTI4OTMgMjIgMy40NjQ0NyAyMC41MzU1QzIgMTkuMDcxMSAyIDE2LjcxNCAyIDEyQzIgNy4yODU5NSAyIDQuOTI4OTMgMy40NjQ0NyAzLjQ2NDQ3QzQuOTI4OTMgMiA3LjI4NTk1IDIgMTIgMkMxNi43MTQgMiAxOS4wNzExIDIgMjAuNTM1NSAzLjQ2NDQ3QzIxLjUwOTMgNC40MzgyMSAyMS44MzU2IDUuODA2NTUgMjEuOTQ0OSA4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class GraphDownBrokenIcon extends StatelessWidget {
  /// Creates the `graph-down` icon in the broken style.
  const GraphDownBrokenIcon({
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
    name: 'graph-down',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7 10L9.29289 12.2929C9.68342 12.6834 10.3166 12.6834 10.7071 12.2929L12.2929 10.7071C12.6834 10.3166 13.3166 10.3166 13.7071 10.7071L17 14M14.5 14H17V11.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C21.5093 4.43821 21.8356 5.80655 21.9449 8" stroke="currentColor" stroke-linecap="round"/>''',
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
