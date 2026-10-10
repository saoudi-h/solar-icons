// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTYuMjUgMTlDNi4yNSAxOS4zMTM5IDYuNDQ1NDMgMTkuNTk0NiA2LjczOTc5IDE5LjcwMzVDNy4wMzQxNSAxOS44MTIzIDcuMzY1MTkgMTkuNzI2NCA3LjU2OTQ0IDE5LjQ4ODFMMTMuNTY5NCAxMi40ODgxQzEzLjgxMDIgMTIuMjA3MyAxMy44MTAyIDExLjc5MjggMTMuNTY5NCAxMS41MTE5TDcuNTY5NDQgNC41MTE5NEM3LjM2NTE5IDQuMjczNjQgNy4wMzQxNSA0LjE4NzczIDYuNzM5NzkgNC4yOTY2MkM2LjQ0NTQzIDQuNDA1NTEgNi4yNSA0LjY4NjE4IDYuMjUgNS4wMDAwNEw2LjI1IDE5WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTEwLjUxMTkgMTkuNTY5NUMxMC4xOTc0IDE5LjI5OTkgMTAuMTYxIDE4LjgyNjQgMTAuNDMwNiAxOC41MTE5TDE2LjAxMjIgMTJMMTAuNDMwNiA1LjQ4ODExQzEwLjE2MSA1LjE3MzYxIDEwLjE5NzQgNC43MDAxNCAxMC41MTE5IDQuNDMwNTdDMTAuODI2NCA0LjE2MSAxMS4yOTk5IDQuMTk3NDMgMTEuNTY5NSA0LjUxMTkyTDE3LjU2OTUgMTEuNTExOUMxNy44MTAyIDExLjc5MjggMTcuODEwMiAxMi4yMDcyIDE3LjU2OTUgMTIuNDg4MUwxMS41Njk1IDE5LjQ4ODFDMTEuMjk5OSAxOS44MDI2IDEwLjgyNjQgMTkuODM5IDEwLjUxMTkgMTkuNTY5NVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class DoubleAltArrowRightBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `double-alt-arrow-right` icon in the boldDuotone style.
  const DoubleAltArrowRightBoldDuotoneIcon({
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
    name: 'double-alt-arrow-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.5119 19.5695C10.1974 19.2999 10.161 18.8264 10.4306 18.5119L16.0122 12L10.4306 5.48811C10.161 5.17361 10.1974 4.70014 10.5119 4.43057C10.8264 4.161 11.2999 4.19743 11.5695 4.51192L17.5695 11.5119C17.8102 11.7928 17.8102 12.2072 17.5695 12.4881L11.5695 19.4881C11.2999 19.8026 10.8264 19.839 10.5119 19.5695Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M6.25 19C6.25 19.3139 6.44543 19.5946 6.73979 19.7035C7.03415 19.8123 7.36519 19.7264 7.56944 19.4881L13.5694 12.4881C13.8102 12.2073 13.8102 11.7928 13.5694 11.5119L7.56944 4.51194C7.36519 4.27364 7.03415 4.18773 6.73979 4.29662C6.44543 4.40551 6.25 4.68618 6.25 5.00004L6.25 19Z" fill="currentColor"/>''',
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
