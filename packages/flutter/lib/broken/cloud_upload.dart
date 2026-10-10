// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAxNlYyMk0xMCAxOEwxMiAxNkwxNCAxOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAxMy4zNTI5QzIyIDE1LjY5NTggMjAuNTU2MiAxNy43MDU1IDE4LjUgMTguNTYwNE0xNC4zODEgOC4wMjcyMUMxNC45NzY3IDcuODE5MTEgMTUuNjE3OCA3LjcwNTg4IDE2LjI4NTcgNy43MDU4OEMxNi45NDA0IDcuNzA1ODggMTcuNTY5MyA3LjgxNDY4IDE4LjE1NTEgOC4wMTQ5OE04LjY2NjY3IDExLjI0MjZDOC4yMDUyOCAxMC45Mzc0IDcuNjgwNTkgMTAuNzE4NCA3LjExNjE2IDEwLjYwODlDNi44NDc1IDEwLjU1NjcgNi41Njk4MyAxMC41Mjk0IDYuMjg1NzEgMTAuNTI5NEMzLjkxODc4IDEwLjUyOTQgMiAxMi40MjU2IDIgMTQuNzY0N0MyIDE2LjY2MTEgMy4yNjEyNCAxOC4yNjY0IDUgMTguODA2MU03LjExNjE2IDEwLjYwODlDNi44ODcwNiA5Ljk5NzggNi43NjE5IDkuMzM2ODcgNi43NjE5IDguNjQ3MDZDNi43NjE5IDUuNTI4MjcgOS4zMjAyOCAzIDEyLjQ3NjIgM0MxNS40MTU5IDMgMTcuODM3MSA1LjE5MzcxIDE4LjE1NTEgOC4wMTQ5OE0xOC4xNTUxIDguMDE0OThDMTkuMDQ0NiA4LjMxOTE2IDE5LjgzNDUgOC44MzQzNiAyMC40NjMzIDkuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class CloudUploadBrokenIcon extends StatelessWidget {
  /// Creates the `cloud-upload` icon in the broken style.
  const CloudUploadBrokenIcon({
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
    name: 'cloud-upload',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 16V22M10 18L12 16L14 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 13.3529C22 15.6958 20.5562 17.7055 18.5 18.5604M14.381 8.02721C14.9767 7.81911 15.6178 7.70588 16.2857 7.70588C16.9404 7.70588 17.5693 7.81468 18.1551 8.01498M8.66667 11.2426C8.20528 10.9374 7.68059 10.7184 7.11616 10.6089C6.8475 10.5567 6.56983 10.5294 6.28571 10.5294C3.91878 10.5294 2 12.4256 2 14.7647C2 16.6611 3.26124 18.2664 5 18.8061M7.11616 10.6089C6.88706 9.9978 6.7619 9.33687 6.7619 8.64706C6.7619 5.52827 9.32028 3 12.4762 3C15.4159 3 17.8371 5.19371 18.1551 8.01498M18.1551 8.01498C19.0446 8.31916 19.8345 8.83436 20.4633 9.5" stroke="currentColor" stroke-linecap="round"/>''',
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
