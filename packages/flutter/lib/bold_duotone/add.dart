// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMCAxMS4yNUMyMC40MTQyIDExLjI1IDIwLjc1IDExLjU4NTggMjAuNzUgMTJDMjAuNzUgMTIuNDE0MiAyMC40MTQyIDEyLjc1IDIwIDEyLjc1TDQgMTIuNzVDMy41ODU3OSAxMi43NSAzLjI1IDEyLjQxNDIgMy4yNSAxMkMzLjI1IDExLjU4NTggMy41ODU3OSAxMS4yNSA0IDExLjI1TDIwIDExLjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xMi43NzA1IDIwQzEyLjc3MDUgMjAuNDE0MiAxMi40MzQ3IDIwLjc1IDEyLjAyMDUgMjAuNzVDMTEuNjA2MyAyMC43NSAxMS4yNzA1IDIwLjQxNDIgMTEuMjcwNSAyMEwxMS4yNzA1IDRDMTEuMjcwNSAzLjU4NTc5IDExLjYwNjMgMy4yNSAxMi4wMjA1IDMuMjVDMTIuNDM0NyAzLjI1MDA1IDEyLjc3MDUgMy41ODU4MiAxMi43NzA1IDRMMTIuNzcwNSAyMFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class AddBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `add` icon in the boldDuotone style.
  const AddBoldDuotoneIcon({
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
    name: 'add',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20 11.25C20.4142 11.25 20.75 11.5858 20.75 12C20.75 12.4142 20.4142 12.75 20 12.75L4 12.75C3.58579 12.75 3.25 12.4142 3.25 12C3.25 11.5858 3.58579 11.25 4 11.25L20 11.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.7705 20C12.7705 20.4142 12.4347 20.75 12.0205 20.75C11.6063 20.75 11.2705 20.4142 11.2705 20L11.2705 4C11.2705 3.58579 11.6063 3.25 12.0205 3.25C12.4347 3.25005 12.7705 3.58582 12.7705 4L12.7705 20Z" fill="currentColor"/>''',
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
