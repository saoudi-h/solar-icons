// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-right-to-line` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwLjI1IDRDMjAuMjUgMy41ODU3OSAyMC41ODU4IDMuMjUgMjEgMy4yNUMyMS40MTQyIDMuMjUgMjEuNzUgMy41ODU3OSAyMS43NSA0TDIxLjc1IDIwQzIxLjc1IDIwLjQxNDIgMjEuNDE0MiAyMC43NSAyMSAyMC43NUMyMC41ODU4IDIwLjc1IDIwLjI1IDIwLjQxNDIgMjAuMjUgMjBMMjAuMjUgNFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIuMjUgMTJDMi4yNSAxMS41ODU4IDIuNTg1NzkgMTEuMjUgMyAxMS4yNUwxNC4wNjg0IDExLjI1TDExLjExOTEgOC41NTM3MUMxMC44MTM1IDguMjc0MjkgMTAuNzkyIDcuNzk5ODUgMTEuMDcxMyA3LjQ5NDE0QzExLjM1MDcgNy4xODg1MSAxMS44MjUyIDcuMTY3IDEyLjEzMDkgNy40NDYyOUwxNi41MDU5IDExLjQ0NjNDMTYuNjYxMiAxMS41ODg0IDE2Ljc1IDExLjc4OTUgMTYuNzUgMTJDMTYuNzUgMTIuMjEwNSAxNi42NjEyIDEyLjQxMTYgMTYuNTA1OSAxMi41NTM3TDEyLjEzMDkgMTYuNTUzN0MxMS44MjUyIDE2LjgzMjkgMTEuMzUwNyAxNi44MTE0IDExLjA3MTMgMTYuNTA1OUMxMC43OTIgMTYuMjAwMiAxMC44MTM2IDE1LjcyNTcgMTEuMTE5MSAxNS40NDYzTDE0LjA2ODQgMTIuNzVMMyAxMi43NUMyLjU4NTgyIDEyLjc1IDIuMjUwMDUgMTIuNDE0MiAyLjI1IDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowRightToLineBoldIcon extends StatelessWidget {
  /// Creates the `arrow-right-to-line` icon in the bold style.
  const ArrowRightToLineBoldIcon({
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
    name: 'arrow-right-to-line',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M20.25 4C20.25 3.58579 20.5858 3.25 21 3.25C21.4142 3.25 21.75 3.58579 21.75 4L21.75 20C21.75 20.4142 21.4142 20.75 21 20.75C20.5858 20.75 20.25 20.4142 20.25 20L20.25 4Z" fill="currentColor"/>
<path d="M2.25 12C2.25 11.5858 2.58579 11.25 3 11.25L14.0684 11.25L11.1191 8.55371C10.8135 8.27429 10.792 7.79985 11.0713 7.49414C11.3507 7.18851 11.8252 7.167 12.1309 7.44629L16.5059 11.4463C16.6612 11.5884 16.75 11.7895 16.75 12C16.75 12.2105 16.6612 12.4116 16.5059 12.5537L12.1309 16.5537C11.8252 16.8329 11.3507 16.8114 11.0713 16.5059C10.792 16.2002 10.8136 15.7257 11.1191 15.4463L14.0684 12.75L3 12.75C2.58582 12.75 2.25005 12.4142 2.25 12Z" fill="currentColor"/>''',
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
