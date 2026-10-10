// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iNyIgY3k9IjciIHI9IjUiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE2LjI4NTcgMjBDMTkuNDQxNiAyMCAyMiAxNy40NzE3IDIyIDE0LjM1MjlDMjIgMTEuODgxMSAyMC4zOTMgOS43ODAyNCAxOC4xNTUxIDkuMDE0OThDMTcuODM3MSA2LjE5MzcxIDE1LjQxNTkgNCAxMi40NzYyIDRDOS4zMjAyOCA0IDYuNzYxOSA2LjUyODI3IDYuNzYxOSA5LjY0NzA2QzYuNzYxOSAxMC4zMzY5IDYuODg3MDYgMTAuOTk3OCA3LjExNjE2IDExLjYwODlDNi44NDc1IDExLjU1NjcgNi41Njk4MyAxMS41Mjk0IDYuMjg1NzEgMTEuNTI5NEMzLjkxODc4IDExLjUyOTQgMiAxMy40MjU2IDIgMTUuNzY0N0MyIDE4LjEwMzggMy45MTg3OCAyMCA2LjI4NTcxIDIwSDE2LjI4NTdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class CloudSunBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `cloud-sun` icon in the boldDuotone style.
  const CloudSunBoldDuotoneIcon({
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
    name: 'cloud-sun',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.2857 20C19.4416 20 22 17.4717 22 14.3529C22 11.8811 20.393 9.78024 18.1551 9.01498C17.8371 6.19371 15.4159 4 12.4762 4C9.32028 4 6.7619 6.52827 6.7619 9.64706C6.7619 10.3369 6.88706 10.9978 7.11616 11.6089C6.8475 11.5567 6.56983 11.5294 6.28571 11.5294C3.91878 11.5294 2 13.4256 2 15.7647C2 18.1038 3.91878 20 6.28571 20H16.2857Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="7" cy="7" r="5" fill="currentColor"/>''',
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
