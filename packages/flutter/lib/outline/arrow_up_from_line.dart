// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-up-from-line` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDE2Ljc1QzExLjU4NTggMTYuNzUgMTEuMjUgMTYuNDE0MiAxMS4yNSAxNkwxMS4yNSA0LjkzMTY0TDguNTUzNzEgNy44ODA4NkM4LjI3NDI4IDguMTg2NDkgNy43OTk4NSA4LjIwOCA3LjQ5NDE0IDcuOTI4NzFDNy4xODg1MSA3LjY0OTI4IDcuMTY3IDcuMTc0ODUgNy40NDYyOSA2Ljg2OTE0TDExLjQ0NjMgMi40OTQxNEMxMS41ODg0IDIuMzM4NzMgMTEuNzg5NCAyLjI1IDEyIDIuMjVDMTIuMjEwNiAyLjI1IDEyLjQxMTYgMi4zMzg3MyAxMi41NTM3IDIuNDk0MTRMMTYuNTUzNyA2Ljg2OTE0QzE2LjgzMyA3LjE3NDg1IDE2LjgxMTUgNy42NDkyOCAxNi41MDU5IDcuOTI4NzFDMTYuMjAwMiA4LjIwOCAxNS43MjU3IDguMTg2NDkgMTUuNDQ2MyA3Ljg4MDg2TDEyLjc1IDQuOTMxNjRMMTIuNzUgMTZDMTIuNzUgMTYuNDE0MiAxMi40MTQyIDE2Ljc1IDEyIDE2Ljc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNNCAyMS43NUMzLjU4NTc5IDIxLjc1IDMuMjUgMjEuNDE0MiAzLjI1IDIxQzMuMjUgMjAuNTg1OCAzLjU4NTc5IDIwLjI1IDQgMjAuMjVMMjAgMjAuMjVDMjAuNDE0MiAyMC4yNSAyMC43NSAyMC41ODU4IDIwLjc1IDIxQzIwLjc1IDIxLjQxNDIgMjAuNDE0MiAyMS43NSAyMCAyMS43NUw0IDIxLjc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowUpFromLineOutlineIcon extends StatelessWidget {
  /// Creates the `arrow-up-from-line` icon in the outline style.
  const ArrowUpFromLineOutlineIcon({
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
    name: 'arrow-up-from-line',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12 16.75C11.5858 16.75 11.25 16.4142 11.25 16L11.25 4.93164L8.55371 7.88086C8.27428 8.18649 7.79985 8.208 7.49414 7.92871C7.18851 7.64928 7.167 7.17485 7.44629 6.86914L11.4463 2.49414C11.5884 2.33873 11.7894 2.25 12 2.25C12.2106 2.25 12.4116 2.33873 12.5537 2.49414L16.5537 6.86914C16.833 7.17485 16.8115 7.64928 16.5059 7.92871C16.2002 8.208 15.7257 8.18649 15.4463 7.88086L12.75 4.93164L12.75 16C12.75 16.4142 12.4142 16.75 12 16.75Z" fill="currentColor"/>
<path d="M4 21.75C3.58579 21.75 3.25 21.4142 3.25 21C3.25 20.5858 3.58579 20.25 4 20.25L20 20.25C20.4142 20.25 20.75 20.5858 20.75 21C20.75 21.4142 20.4142 21.75 20 21.75L4 21.75Z" fill="currentColor"/>''',
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
