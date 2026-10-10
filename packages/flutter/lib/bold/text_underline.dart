// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik01IDNDNSAyLjQ0NzcyIDQuNTUyMjggMiA0IDJDMy40NDc3MiAyIDMgMi40NDc3MiAzIDNWOUMzIDEzLjk3MDYgNy4wMjk0NCAxOCAxMiAxOEMxNi45NzA2IDE4IDIxIDEzLjk3MDYgMjEgOVYzQzIxIDIuNDQ3NzIgMjAuNTUyMyAyIDIwIDJDMTkuNDQ3NyAyIDE5IDIuNDQ3NzIgMTkgM1Y5QzE5IDEyLjg2NiAxNS44NjYgMTYgMTIgMTZDOC4xMzQwMSAxNiA1IDEyLjg2NiA1IDlWM1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTQgMjBDMy40NDc3MiAyMCAzIDIwLjQ0NzcgMyAyMUMzIDIxLjU1MjMgMy40NDc3MiAyMiA0IDIySDIwQzIwLjU1MjMgMjIgMjEgMjEuNTUyMyAyMSAyMUMyMSAyMC40NDc3IDIwLjU1MjMgMjAgMjAgMjBINFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class TextUnderlineBoldIcon extends StatelessWidget {
  /// Creates the `text-underline` icon in the bold style.
  const TextUnderlineBoldIcon({
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
    name: 'text-underline',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5 3C5 2.44772 4.55228 2 4 2C3.44772 2 3 2.44772 3 3V9C3 13.9706 7.02944 18 12 18C16.9706 18 21 13.9706 21 9V3C21 2.44772 20.5523 2 20 2C19.4477 2 19 2.44772 19 3V9C19 12.866 15.866 16 12 16C8.13401 16 5 12.866 5 9V3Z" fill="currentColor"/>
<path d="M4 20C3.44772 20 3 20.4477 3 21C3 21.5523 3.44772 22 4 22H20C20.5523 22 21 21.5523 21 21C21 20.4477 20.5523 20 20 20H4Z" fill="currentColor"/>''',
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
