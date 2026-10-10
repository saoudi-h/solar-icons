// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTAuNTExOSA0LjQzMDU3QzEwLjE5NzQgNC43MDAxNCAxMC4xNjEgNS4xNzM2MSAxMC40MzA2IDUuNDg4MTFMMTYuMDEyMiAxMkwxMC40MzA2IDE4LjUxMTlDMTAuMTYxIDE4LjgyNjQgMTAuMTk3NCAxOS4yOTk5IDEwLjUxMTkgMTkuNTY5NUMxMC44MjY0IDE5LjgzOSAxMS4yOTk5IDE5LjgwMjYgMTEuNTY5NCAxOS40ODgxTDE3LjU2OTQgMTIuNDg4MUMxNy44MTAyIDEyLjIwNzIgMTcuODEwMiAxMS43OTI4IDE3LjU2OTQgMTEuNTExOUwxMS41Njk0IDQuNTExOTJDMTEuMjk5OSA0LjE5NzQzIDEwLjgyNjQgNC4xNjEgMTAuNTExOSA0LjQzMDU3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNNi4yNSA1LjAwMDA1QzYuMjUgNC42ODYxOSA2LjQ0NTQzIDQuNDA1NTMgNi43Mzk3OSA0LjI5NjY0QzcuMDM0MTUgNC4xODc3NCA3LjM2NTE5IDQuMjczNjYgNy41Njk0NCA0LjUxMTk2TDEzLjU2OTQgMTEuNTEyQzEzLjgxMDIgMTEuNzkyOCAxMy44MTAyIDEyLjIwNzMgMTMuNTY5NCAxMi40ODgxTDcuNTY5NDQgMTkuNDg4MUM3LjM2NTE5IDE5LjcyNjQgNy4wMzQxNSAxOS44MTI0IDYuNzM5NzkgMTkuNzAzNUM2LjQ0NTQzIDE5LjU5NDYgNi4yNSAxOS4zMTM5IDYuMjUgMTlMNi4yNSA1LjAwMDA1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class DoubleAltArrowRightBoldIcon extends StatelessWidget {
  /// Creates the `double-alt-arrow-right` icon in the bold style.
  const DoubleAltArrowRightBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.5119 4.43057C10.1974 4.70014 10.161 5.17361 10.4306 5.48811L16.0122 12L10.4306 18.5119C10.161 18.8264 10.1974 19.2999 10.5119 19.5695C10.8264 19.839 11.2999 19.8026 11.5694 19.4881L17.5694 12.4881C17.8102 12.2072 17.8102 11.7928 17.5694 11.5119L11.5694 4.51192C11.2999 4.19743 10.8264 4.161 10.5119 4.43057Z" fill="currentColor"/>
<path d="M6.25 5.00005C6.25 4.68619 6.44543 4.40553 6.73979 4.29664C7.03415 4.18774 7.36519 4.27366 7.56944 4.51196L13.5694 11.512C13.8102 11.7928 13.8102 12.2073 13.5694 12.4881L7.56944 19.4881C7.36519 19.7264 7.03415 19.8124 6.73979 19.7035C6.44543 19.5946 6.25 19.3139 6.25 19L6.25 5.00005Z" fill="currentColor"/>''',
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
