// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMS45OTk3IDE2VjE4LjVNMTEuOTk5NyAxOC41SDkuNU0xMS45OTk3IDE4LjVIMTQuNU0xMS45OTk3IDE4LjVMMTIgMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNOC41IDIuOTM2NDhDOS41Mjk2MSAyLjM0MDg4IDEwLjcyNSAyIDEyIDJDMTUuODY2IDIgMTkgNS4xMzQwMSAxOSA5QzE5IDEyLjg2NiAxNS44NjYgMTYgMTIgMTZDOC4xMzQwMSAxNiA1IDEyLjg2NiA1IDlDNSA3LjcyNDk5IDUuMzQwODggNi41Mjk2MSA1LjkzNjQ4IDUuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class WomenBrokenIcon extends StatelessWidget {
  /// Creates the `women` icon in the broken style.
  const WomenBrokenIcon({
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
    name: 'women',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M11.9997 16V18.5M11.9997 18.5H9.5M11.9997 18.5H14.5M11.9997 18.5L12 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8.5 2.93648C9.52961 2.34088 10.725 2 12 2C15.866 2 19 5.13401 19 9C19 12.866 15.866 16 12 16C8.13401 16 5 12.866 5 9C5 7.72499 5.34088 6.52961 5.93648 5.5" stroke="currentColor" stroke-linecap="round"/>''',
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
