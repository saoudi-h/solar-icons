// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNy4wMDAxIDEuMjVDMTYuNTg1OCAxLjI1IDE2LjI1MDEgMS41ODU3OSAxNi4yNTAxIDJDMTYuMjUwMSAyLjQxNDIxIDE2LjU4NTggMi43NSAxNy4wMDAxIDIuNzVIMjAuMTg5NEwxNS4xMDE4IDcuODM3NkMxMy43MTcgNi42ODk4OSAxMS45MzkxIDYgMTAgNkM1LjU4MTcyIDYgMiA5LjU4MTcyIDIgMTRDMiAxOC40MTgzIDUuNTgxNzIgMjIgMTAgMjJDMTQuNDE4MyAyMiAxOCAxOC40MTgzIDE4IDE0QzE4IDEyLjA2MDkgMTcuMzEwMSAxMC4yODMgMTYuMTYyNCA4Ljg5ODI3TDIxLjI1MDEgMy44MTA2NlY3QzIxLjI1MDEgNy40MTQyMSAyMS41ODU4IDcuNzUgMjIuMDAwMSA3Ljc1QzIyLjQxNDMgNy43NSAyMi43NTAxIDcuNDE0MjEgMjIuNzUwMSA3VjJDMjIuNzUwMSAxLjU4NTc5IDIyLjQxNDMgMS4yNSAyMi4wMDAxIDEuMjVIMTcuMDAwMVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MenBoldIcon extends StatelessWidget {
  /// Creates the `men` icon in the bold style.
  const MenBoldIcon({
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
    name: 'men',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17.0001 1.25C16.5858 1.25 16.2501 1.58579 16.2501 2C16.2501 2.41421 16.5858 2.75 17.0001 2.75H20.1894L15.1018 7.8376C13.717 6.68989 11.9391 6 10 6C5.58172 6 2 9.58172 2 14C2 18.4183 5.58172 22 10 22C14.4183 22 18 18.4183 18 14C18 12.0609 17.3101 10.283 16.1624 8.89827L21.2501 3.81066V7C21.2501 7.41421 21.5858 7.75 22.0001 7.75C22.4143 7.75 22.7501 7.41421 22.7501 7V2C22.7501 1.58579 22.4143 1.25 22.0001 1.25H17.0001Z" fill="currentColor"/>''',
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
