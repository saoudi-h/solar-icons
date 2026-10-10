// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDguNzU5OTRDMiA2LjA0NDY4IDIgNC42ODcwNSAyLjg3ODY4IDMuODQzNTJDMy43NTczNiAzIDUuMTcxNTcgMyA4IDNIMTZDMTguODI4NCAzIDIwLjI0MjYgMyAyMS4xMjEzIDMuODQzNTJDMjIgNC42ODcwNSAyMiA2LjA0NDY4IDIyIDguNzU5OTRWOS43MTk5M0MyMiAxMi40MzUyIDIyIDEzLjc5MjggMjEuMTIxMyAxNC42MzYzQzIwLjI0MjYgMTUuNDc5OSAxOC44Mjg0IDE1LjQ3OTkgMTYgMTUuNDc5OUgxMi43NVYxNy44NDA5TDE4LjIzNzIgMTkuNTk2OEMxOC42MzAxIDE5LjcyMjUgMTguODQyNSAyMC4xMzAzIDE4LjcxMTUgMjAuNTA3NUMxOC41ODA1IDIwLjg4NDcgMTguMTU1OCAyMS4wODg2IDE3Ljc2MjggMjAuOTYyOUwxMiAxOS4xMTg4TDYuMjM3MTcgMjAuOTYyOUM1Ljg0NDIxIDIxLjA4ODYgNS40MTk0NyAyMC44ODQ3IDUuMjg4NDkgMjAuNTA3NUM1LjE1NzUgMjAuMTMwMyA1LjM2OTg3IDE5LjcyMjUgNS43NjI4MyAxOS41OTY4TDExLjI1IDE3Ljg0MDlWMTUuNDc5OUg4QzUuMTcxNTcgMTUuNDc5OSAzLjc1NzM2IDE1LjQ3OTkgMi44Nzg2OCAxNC42MzYzQzIgMTMuNzkyOCAyIDEyLjQzNTIgMiA5LjcxOTkzVjguNzU5OTRaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class DisplayBoldIcon extends StatelessWidget {
  /// Creates the `display` icon in the bold style.
  const DisplayBoldIcon({
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
    name: 'display',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M2 8.75994C2 6.04468 2 4.68705 2.87868 3.84352C3.75736 3 5.17157 3 8 3H16C18.8284 3 20.2426 3 21.1213 3.84352C22 4.68705 22 6.04468 22 8.75994V9.71993C22 12.4352 22 13.7928 21.1213 14.6363C20.2426 15.4799 18.8284 15.4799 16 15.4799H12.75V17.8409L18.2372 19.5968C18.6301 19.7225 18.8425 20.1303 18.7115 20.5075C18.5805 20.8847 18.1558 21.0886 17.7628 20.9629L12 19.1188L6.23717 20.9629C5.84421 21.0886 5.41947 20.8847 5.28849 20.5075C5.1575 20.1303 5.36987 19.7225 5.76283 19.5968L11.25 17.8409V15.4799H8C5.17157 15.4799 3.75736 15.4799 2.87868 14.6363C2 13.7928 2 12.4352 2 9.71993V8.75994Z" fill="currentColor"/>''',
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
