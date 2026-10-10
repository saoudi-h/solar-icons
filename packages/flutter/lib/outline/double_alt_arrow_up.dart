// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTEuNTExOSA2LjQzMDU2QzExLjc5MjggNi4xODk4MSAxMi4yMDcyIDYuMTg5ODEgMTIuNDg4MSA2LjQzMDU2TDE5LjQ4ODEgMTIuNDMwNkMxOS44MDI2IDEyLjcwMDEgMTkuODM5IDEzLjE3MzYgMTkuNTY5NSAxMy40ODgxQzE5LjI5OTkgMTMuODAyNiAxOC44MjY0IDEzLjgzOSAxOC41MTE5IDEzLjU2OTRMMTIgNy45ODc4MUw1LjQ4ODExIDEzLjU2OTRDNS4xNzM2MSAxMy44MzkgNC43MDAxNCAxMy44MDI2IDQuNDMwNTcgMTMuNDg4MUM0LjE2MSAxMy4xNzM2IDQuMTk3NDMgMTIuNzAwMSA0LjUxMTkyIDEyLjQzMDZMMTEuNTExOSA2LjQzMDU2Wk00LjUxMTkyIDE2LjQzMDZMMTEuNTExOSAxMC40MzA2QzExLjc5MjggMTAuMTg5OCAxMi4yMDcyIDEwLjE4OTggMTIuNDg4MSAxMC40MzA2TDE5LjQ4ODEgMTYuNDMwNkMxOS44MDI2IDE2LjcwMDEgMTkuODM5IDE3LjE3MzYgMTkuNTY5NSAxNy40ODgxQzE5LjI5OTkgMTcuODAyNiAxOC44MjY0IDE3LjgzOSAxOC41MTE5IDE3LjU2OTRMMTIgMTEuOTg3OEw1LjQ4ODExIDE3LjU2OTRDNS4xNzM2MSAxNy44MzkgNC43MDAxNCAxNy44MDI2IDQuNDMwNTcgMTcuNDg4MUM0LjE2MSAxNy4xNzM2IDQuMTk3NDMgMTYuNzAwMSA0LjUxMTkyIDE2LjQzMDZaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class DoubleAltArrowUpOutlineIcon extends StatelessWidget {
  /// Creates the `double-alt-arrow-up` icon in the outline style.
  const DoubleAltArrowUpOutlineIcon({
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
    name: 'double-alt-arrow-up',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5119 6.43056C11.7928 6.18981 12.2072 6.18981 12.4881 6.43056L19.4881 12.4306C19.8026 12.7001 19.839 13.1736 19.5695 13.4881C19.2999 13.8026 18.8264 13.839 18.5119 13.5694L12 7.98781L5.48811 13.5694C5.17361 13.839 4.70014 13.8026 4.43057 13.4881C4.161 13.1736 4.19743 12.7001 4.51192 12.4306L11.5119 6.43056ZM4.51192 16.4306L11.5119 10.4306C11.7928 10.1898 12.2072 10.1898 12.4881 10.4306L19.4881 16.4306C19.8026 16.7001 19.839 17.1736 19.5695 17.4881C19.2999 17.8026 18.8264 17.839 18.5119 17.5694L12 11.9878L5.48811 17.5694C5.17361 17.839 4.70014 17.8026 4.43057 17.4881C4.161 17.1736 4.19743 16.7001 4.51192 16.4306Z" fill="currentColor"/>''',
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
