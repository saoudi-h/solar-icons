// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-right-from-line` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTcuMjUgMTJDNy4yNSAxMS41ODU4IDcuNTg1NzkgMTEuMjUgOCAxMS4yNUwxOS4wNjg0IDExLjI1TDE2LjExOTEgOC41NTM3MUMxNS44MTM1IDguMjc0MjggMTUuNzkyIDcuNzk5ODUgMTYuMDcxMyA3LjQ5NDE0QzE2LjM1MDcgNy4xODg1MSAxNi44MjUyIDcuMTY3IDE3LjEzMDkgNy40NDYyOUwyMS41MDU5IDExLjQ0NjNDMjEuNjYxMyAxMS41ODg0IDIxLjc1IDExLjc4OTQgMjEuNzUgMTJDMjEuNzUgMTIuMjEwNiAyMS42NjEzIDEyLjQxMTYgMjEuNTA1OSAxMi41NTM3TDE3LjEzMDkgMTYuNTUzN0MxNi44MjUyIDE2LjgzMyAxNi4zNTA3IDE2LjgxMTUgMTYuMDcxMyAxNi41MDU5QzE1Ljc5MiAxNi4yMDAyIDE1LjgxMzUgMTUuNzI1NyAxNi4xMTkxIDE1LjQ0NjNMMTkuMDY4NCAxMi43NUw4IDEyLjc1QzcuNTg1NzkgMTIuNzUgNy4yNSAxMi40MTQyIDcuMjUgMTJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yLjI1IDRDMi4yNSAzLjU4NTc5IDIuNTg1NzkgMy4yNSAzIDMuMjVDMy40MTQyMSAzLjI1IDMuNzUgMy41ODU3OSAzLjc1IDRMMy43NSAyMEMzLjc1IDIwLjQxNDIgMy40MTQyMSAyMC43NSAzIDIwLjc1QzIuNTg1NzkgMjAuNzUgMi4yNSAyMC40MTQyIDIuMjUgMjBMMi4yNSA0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowRightFromLineBoldIcon extends StatelessWidget {
  /// Creates the `arrow-right-from-line` icon in the bold style.
  const ArrowRightFromLineBoldIcon({
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
    name: 'arrow-right-from-line',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M7.25 12C7.25 11.5858 7.58579 11.25 8 11.25L19.0684 11.25L16.1191 8.55371C15.8135 8.27428 15.792 7.79985 16.0713 7.49414C16.3507 7.18851 16.8252 7.167 17.1309 7.44629L21.5059 11.4463C21.6613 11.5884 21.75 11.7894 21.75 12C21.75 12.2106 21.6613 12.4116 21.5059 12.5537L17.1309 16.5537C16.8252 16.833 16.3507 16.8115 16.0713 16.5059C15.792 16.2002 15.8135 15.7257 16.1191 15.4463L19.0684 12.75L8 12.75C7.58579 12.75 7.25 12.4142 7.25 12Z" fill="currentColor"/>
<path d="M2.25 4C2.25 3.58579 2.58579 3.25 3 3.25C3.41421 3.25 3.75 3.58579 3.75 4L3.75 20C3.75 20.4142 3.41421 20.75 3 20.75C2.58579 20.75 2.25 20.4142 2.25 20L2.25 4Z" fill="currentColor"/>''',
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
