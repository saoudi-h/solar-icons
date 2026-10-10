// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `airbuds-case-minimalistic` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMyAxMUMzIDcuMjUwMjcgMyA1LjM3NTQgMy45NTQ5MSA0LjA2MTA3QzQuMjYzMzEgMy42MzY2IDQuNjM2NiAzLjI2MzMxIDUuMDYxMDcgMi45NTQ5MUM2LjM3NTQgMiA4LjI1MDI3IDIgMTIgMkMxNS43NDk3IDIgMTcuNjI0NiAyIDE4LjkzODkgMi45NTQ5MUMxOS4zNjM0IDMuMjYzMzEgMTkuNzM2NyAzLjYzNjYgMjAuMDQ1MSA0LjA2MTA3QzIxIDUuMzc1NCAyMSA3LjI1MDI3IDIxIDExVjEzQzIxIDE2Ljc0OTcgMjEgMTguNjI0NiAyMC4wNDUxIDE5LjkzODlDMTkuNzM2NyAyMC4zNjM0IDE5LjM2MzQgMjAuNzM2NyAxOC45Mzg5IDIxLjA0NTFDMTcuNjI0NiAyMiAxNS43NDk3IDIyIDEyIDIyQzguMjUwMjcgMjIgNi4zNzU0IDIyIDUuMDYxMDcgMjEuMDQ1MUM0LjYzNjYgMjAuNzM2NyA0LjI2MzMxIDIwLjM2MzQgMy45NTQ5MSAxOS45Mzg5QzMgMTguNjI0NiAzIDE2Ljc0OTcgMyAxM1YxMVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTcgOC4yNUM2LjU4NTc5IDguMjUgNi4yNSA4LjU4NTc5IDYuMjUgOUM2LjI1IDkuNDE0MjEgNi41ODU3OSA5Ljc1IDcgOS43NUgxN0MxNy40MTQyIDkuNzUgMTcuNzUgOS40MTQyMSAxNy43NSA5QzE3Ljc1IDguNTg1NzkgMTcuNDE0MiA4LjI1IDE3IDguMjVIN1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class AirbudsCaseMinimalisticBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `airbuds-case-minimalistic` icon in the boldDuotone style.
  const AirbudsCaseMinimalisticBoldDuotoneIcon({
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
    name: 'airbuds-case-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M7 8.25C6.58579 8.25 6.25 8.58579 6.25 9C6.25 9.41421 6.58579 9.75 7 9.75H17C17.4142 9.75 17.75 9.41421 17.75 9C17.75 8.58579 17.4142 8.25 17 8.25H7Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3 11C3 7.25027 3 5.3754 3.95491 4.06107C4.26331 3.6366 4.6366 3.26331 5.06107 2.95491C6.3754 2 8.25027 2 12 2C15.7497 2 17.6246 2 18.9389 2.95491C19.3634 3.26331 19.7367 3.6366 20.0451 4.06107C21 5.3754 21 7.25027 21 11V13C21 16.7497 21 18.6246 20.0451 19.9389C19.7367 20.3634 19.3634 20.7367 18.9389 21.0451C17.6246 22 15.7497 22 12 22C8.25027 22 6.3754 22 5.06107 21.0451C4.6366 20.7367 4.26331 20.3634 3.95491 19.9389C3 18.6246 3 16.7497 3 13V11Z" fill="currentColor"/>''',
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
