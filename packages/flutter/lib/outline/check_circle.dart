// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `check-circle` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2LjAzMDMgMTAuMDMwM0MxNi4zMjMyIDkuNzM3NDQgMTYuMzIzMiA5LjI2MjU2IDE2LjAzMDMgOC45Njk2N0MxNS43Mzc0IDguNjc2NzggMTUuMjYyNiA4LjY3Njc4IDE0Ljk2OTcgOC45Njk2N0wxMC41IDEzLjQzOTNMOS4wMzAzMyAxMS45Njk3QzguNzM3NDQgMTEuNjc2OCA4LjI2MjU2IDExLjY3NjggNy45Njk2NyAxMS45Njk3QzcuNjc2NzggMTIuMjYyNiA3LjY3Njc4IDEyLjczNzQgNy45Njk2NyAxMy4wMzAzTDkuOTY5NjcgMTUuMDMwM0MxMC4yNjI2IDE1LjMyMzIgMTAuNzM3NCAxNS4zMjMyIDExLjAzMDMgMTUuMDMwM0wxNi4wMzAzIDEwLjAzMDNaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMS4yNUM2LjA2Mjk0IDEuMjUgMS4yNSA2LjA2Mjk0IDEuMjUgMTJDMS4yNSAxNy45MzcxIDYuMDYyOTQgMjIuNzUgMTIgMjIuNzVDMTcuOTM3MSAyMi43NSAyMi43NSAxNy45MzcxIDIyLjc1IDEyQzIyLjc1IDYuMDYyOTQgMTcuOTM3MSAxLjI1IDEyIDEuMjVaTTIuNzUgMTJDMi43NSA2Ljg5MTM3IDYuODkxMzcgMi43NSAxMiAyLjc1QzE3LjEwODYgMi43NSAyMS4yNSA2Ljg5MTM3IDIxLjI1IDEyQzIxLjI1IDE3LjEwODYgMTcuMTA4NiAyMS4yNSAxMiAyMS4yNUM2Ljg5MTM3IDIxLjI1IDIuNzUgMTcuMTA4NiAyLjc1IDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class CheckCircleOutlineIcon extends StatelessWidget {
  /// Creates the `check-circle` icon in the outline style.
  const CheckCircleOutlineIcon({
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
    name: 'check-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M16.0303 10.0303C16.3232 9.73744 16.3232 9.26256 16.0303 8.96967C15.7374 8.67678 15.2626 8.67678 14.9697 8.96967L10.5 13.4393L9.03033 11.9697C8.73744 11.6768 8.26256 11.6768 7.96967 11.9697C7.67678 12.2626 7.67678 12.7374 7.96967 13.0303L9.96967 15.0303C10.2626 15.3232 10.7374 15.3232 11.0303 15.0303L16.0303 10.0303Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C6.06294 1.25 1.25 6.06294 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 6.06294 17.9371 1.25 12 1.25ZM2.75 12C2.75 6.89137 6.89137 2.75 12 2.75C17.1086 2.75 21.25 6.89137 21.25 12C21.25 17.1086 17.1086 21.25 12 21.25C6.89137 21.25 2.75 17.1086 2.75 12Z" fill="currentColor"/>''',
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
