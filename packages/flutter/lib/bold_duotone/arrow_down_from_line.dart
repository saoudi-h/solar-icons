// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMCAzLjc1QzIwLjQxNDIgMy43NSAyMC43NSAzLjQxNDIxIDIwLjc1IDNDMjAuNzUgMi41ODU3OSAyMC40MTQyIDIuMjUgMjAgMi4yNUw0IDIuMjVDMy41ODU3OSAyLjI1IDMuMjUgMi41ODU3OSAzLjI1IDNDMy4yNSAzLjQxNDIxIDMuNTg1NzkgMy43NSA0IDMuNzVMMjAgMy43NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIuNzUwMSA4TDEyLjc1MDEgMTkuMDY4NEwxNS40NDY0IDE2LjExOTFDMTUuNzI1OCAxNS44MTM1IDE2LjIwMDIgMTUuNzkyIDE2LjUwNiAxNi4wNzEzQzE2LjgxMTYgMTYuMzUwNyAxNi44MzMxIDE2LjgyNTIgMTYuNTUzOCAxNy4xMzA5TDEyLjU1MzggMjEuNTA1OUMxMi40MTE3IDIxLjY2MTMgMTIuMjEwNyAyMS43NSAxMi4wMDAxIDIxLjc1QzExLjc4OTUgMjEuNzUgMTEuNTg4NSAyMS42NjEzIDExLjQ0NjQgMjEuNTA1OUw3LjQ0NjM5IDE3LjEzMDlDNy4xNjcwOSAxNi44MjUxIDcuMTg4NjEgMTYuMzUwNyA3LjQ5NDI0IDE2LjA3MTNDNy43OTk5NSAxNS43OTIgOC4yNzQzNyAxNS44MTM1IDguNTUzODEgMTYuMTE5MUwxMS4yNTAxIDE5LjA2ODRMMTEuMjUwMSA4QzExLjI1MDEgNy41ODU3OSAxMS41ODU5IDcuMjUgMTIuMDAwMSA3LjI1QzEyLjQxNDMgNy4yNSAxMi43NTAxIDcuNTg1NzkgMTIuNzUwMSA4WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowDownFromLineBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-down-from-line` icon in the boldDuotone style.
  const ArrowDownFromLineBoldDuotoneIcon({
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
    name: 'arrow-down-from-line',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20 3.75C20.4142 3.75 20.75 3.41421 20.75 3C20.75 2.58579 20.4142 2.25 20 2.25L4 2.25C3.58579 2.25 3.25 2.58579 3.25 3C3.25 3.41421 3.58579 3.75 4 3.75L20 3.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.7501 8L12.7501 19.0684L15.4464 16.1191C15.7258 15.8135 16.2002 15.792 16.506 16.0713C16.8116 16.3507 16.8331 16.8252 16.5538 17.1309L12.5538 21.5059C12.4117 21.6613 12.2107 21.75 12.0001 21.75C11.7895 21.75 11.5885 21.6613 11.4464 21.5059L7.44639 17.1309C7.16709 16.8251 7.18861 16.3507 7.49424 16.0713C7.79995 15.792 8.27437 15.8135 8.55381 16.1191L11.2501 19.0684L11.2501 8C11.2501 7.58579 11.5859 7.25 12.0001 7.25C12.4143 7.25 12.7501 7.58579 12.7501 8Z" fill="currentColor"/>''',
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
