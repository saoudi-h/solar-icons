// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik03LjI1IDEyQzcuMjUgMTEuNTg1OCA3LjU4NTc5IDExLjI1IDggMTEuMjVMMTkuMDY4NCAxMS4yNUwxNi4xMTkxIDguNTUzNzFDMTUuODEzNSA4LjI3NDI4IDE1Ljc5MiA3Ljc5OTg1IDE2LjA3MTMgNy40OTQxNEMxNi4zNTA3IDcuMTg4NTEgMTYuODI1MiA3LjE2NyAxNy4xMzA5IDcuNDQ2MjlMMjEuNTA1OSAxMS40NDYzQzIxLjY2MTMgMTEuNTg4NCAyMS43NSAxMS43ODk0IDIxLjc1IDEyQzIxLjc1IDEyLjIxMDYgMjEuNjYxMyAxMi40MTE2IDIxLjUwNTkgMTIuNTUzN0wxNy4xMzA5IDE2LjU1MzdDMTYuODI1MiAxNi44MzMgMTYuMzUwNyAxNi44MTE1IDE2LjA3MTMgMTYuNTA1OUMxNS43OTIgMTYuMjAwMiAxNS44MTM1IDE1LjcyNTcgMTYuMTE5MSAxNS40NDYzTDE5LjA2ODQgMTIuNzVMOCAxMi43NUM3LjU4NTc5IDEyLjc1IDcuMjUgMTIuNDE0MiA3LjI1IDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMi4yNSA0QzIuMjUgMy41ODU3OSAyLjU4NTc5IDMuMjUgMyAzLjI1QzMuNDE0MjEgMy4yNSAzLjc1IDMuNTg1NzkgMy43NSA0TDMuNzUgMjBDMy43NSAyMC40MTQyIDMuNDE0MjEgMjAuNzUgMyAyMC43NUMyLjU4NTc5IDIwLjc1IDIuMjUgMjAuNDE0MiAyLjI1IDIwTDIuMjUgNFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
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
