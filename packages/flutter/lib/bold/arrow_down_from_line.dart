// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiA3LjI1QzEyLjQxNDIgNy4yNSAxMi43NSA3LjU4NTc5IDEyLjc1IDhWMTkuMDY4NEwxNS40NDYzIDE2LjExOTFDMTUuNzI1NyAxNS44MTM1IDE2LjIwMDIgMTUuNzkyIDE2LjUwNTkgMTYuMDcxM0MxNi44MTE1IDE2LjM1MDcgMTYuODMzIDE2LjgyNTIgMTYuNTUzNyAxNy4xMzA5TDEyLjU1MzcgMjEuNTA1OUMxMi40MTE2IDIxLjY2MTMgMTIuMjEwNiAyMS43NSAxMiAyMS43NUMxMS43ODk0IDIxLjc1IDExLjU4ODQgMjEuNjYxMyAxMS40NDYzIDIxLjUwNTlMNy40NDYyOSAxNy4xMzA5QzcuMTY3IDE2LjgyNTIgNy4xODg1MSAxNi4zNTA3IDcuNDk0MTQgMTYuMDcxM0M3Ljc5OTg1IDE1Ljc5MiA4LjI3NDI4IDE1LjgxMzUgOC41NTM3MSAxNi4xMTkxTDExLjI1IDE5LjA2ODRWOEMxMS4yNSA3LjU4NTc5IDExLjU4NTggNy4yNSAxMiA3LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMjAgMi4yNUMyMC40MTQyIDIuMjUgMjAuNzUgMi41ODU3OSAyMC43NSAzQzIwLjc1IDMuNDE0MjEgMjAuNDE0MiAzLjc1IDIwIDMuNzVINEMzLjU4NTc5IDMuNzUgMy4yNSAzLjQxNDIxIDMuMjUgM0MzLjI1IDIuNTg1NzkgMy41ODU3OSAyLjI1IDQgMi4yNUgyMFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ArrowDownFromLineBoldIcon extends StatelessWidget {
  /// Creates the `arrow-down-from-line` icon in the bold style.
  const ArrowDownFromLineBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 7.25C12.4142 7.25 12.75 7.58579 12.75 8V19.0684L15.4463 16.1191C15.7257 15.8135 16.2002 15.792 16.5059 16.0713C16.8115 16.3507 16.833 16.8252 16.5537 17.1309L12.5537 21.5059C12.4116 21.6613 12.2106 21.75 12 21.75C11.7894 21.75 11.5884 21.6613 11.4463 21.5059L7.44629 17.1309C7.167 16.8252 7.18851 16.3507 7.49414 16.0713C7.79985 15.792 8.27428 15.8135 8.55371 16.1191L11.25 19.0684V8C11.25 7.58579 11.5858 7.25 12 7.25Z" fill="currentColor"/>
<path d="M20 2.25C20.4142 2.25 20.75 2.58579 20.75 3C20.75 3.41421 20.4142 3.75 20 3.75H4C3.58579 3.75 3.25 3.41421 3.25 3C3.25 2.58579 3.58579 2.25 4 2.25H20Z" fill="currentColor"/>''',
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
