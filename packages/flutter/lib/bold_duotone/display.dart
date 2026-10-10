// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `display` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjg3ODY4IDMuODQzNTJDMiA0LjY4NzA1IDIgNi4wNDQ2OCAyIDguNzU5OTRWOS43MTk5M0MyIDEyLjQzNTIgMiAxMy43OTI4IDIuODc4NjggMTQuNjM2M0MzLjc1NzM2IDE1LjQ3OTkgNS4xNzE1NyAxNS40Nzk5IDggMTUuNDc5OUgxMS4yNUgxMi43NUgxNkMxOC44Mjg0IDE1LjQ3OTkgMjAuMjQyNiAxNS40Nzk5IDIxLjEyMTMgMTQuNjM2M0MyMiAxMy43OTI4IDIyIDEyLjQzNTIgMjIgOS43MTk5M1Y4Ljc1OTk0QzIyIDYuMDQ0NjggMjIgNC42ODcwNSAyMS4xMjEzIDMuODQzNTJDMjAuMjQyNiAzIDE4LjgyODQgMyAxNiAzSDhDNS4xNzE1NyAzIDMuNzU3MzYgMyAyLjg3ODY4IDMuODQzNTJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE4LjIzNzQgMTkuNTk2NEwxMi43NTAyIDE3Ljg0MDVWMTUuNDc5NUgxMS4yNTAyVjE3Ljg0MDVMNS43NjMwMyAxOS41OTY0QzUuMzcwMDggMTkuNzIyMSA1LjE1NzcxIDIwLjEyOTkgNS4yODg2OSAyMC41MDcxQzUuNDE5NjggMjAuODg0NCA1Ljg0NDQyIDIxLjA4ODIgNi4yMzczNyAyMC45NjI1TDEyLjAwMDIgMTkuMTE4NEwxNy43NjMgMjAuOTYyNUMxOC4xNTYgMjEuMDg4MiAxOC41ODA3IDIwLjg4NDQgMTguNzExNyAyMC41MDcxQzE4Ljg0MjcgMjAuMTI5OSAxOC42MzAzIDE5LjcyMjEgMTguMjM3NCAxOS41OTY0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class DisplayBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `display` icon in the boldDuotone style.
  const DisplayBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.87868 3.84352C2 4.68705 2 6.04468 2 8.75994V9.71993C2 12.4352 2 13.7928 2.87868 14.6363C3.75736 15.4799 5.17157 15.4799 8 15.4799H11.25H12.75H16C18.8284 15.4799 20.2426 15.4799 21.1213 14.6363C22 13.7928 22 12.4352 22 9.71993V8.75994C22 6.04468 22 4.68705 21.1213 3.84352C20.2426 3 18.8284 3 16 3H8C5.17157 3 3.75736 3 2.87868 3.84352Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.2374 19.5964L12.7502 17.8405V15.4795H11.2502V17.8405L5.76303 19.5964C5.37008 19.7221 5.15771 20.1299 5.28869 20.5071C5.41968 20.8844 5.84442 21.0882 6.23737 20.9625L12.0002 19.1184L17.763 20.9625C18.156 21.0882 18.5807 20.8844 18.7117 20.5071C18.8427 20.1299 18.6303 19.7221 18.2374 19.5964Z" fill="currentColor"/>''',
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
