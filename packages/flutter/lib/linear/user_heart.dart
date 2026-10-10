// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEwIiBjeT0iNiIgcj0iNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOCAxNy41QzE4IDE5Ljk4NTMgMTggMjIgMTAgMjJDMiAyMiAyIDE5Ljk4NTMgMiAxNy41QzIgMTUuMDE0NyA1LjU4MTcyIDEzIDEwIDEzQzE0LjQxODMgMTMgMTggMTUuMDE0NyAxOCAxNy41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNiA5LjY5OTczQzE2IDExLjExMjEgMTcuMjA1OCAxMS44NjQ4IDE4LjA4ODUgMTIuNTM4NUMxOC40IDEyLjc3NjIgMTguNyAxMyAxOSAxM0MxOS4zIDEzIDE5LjYgMTIuNzc2MiAxOS45MTE1IDEyLjUzODVDMjAuNzk0MiAxMS44NjQ4IDIyIDExLjExMjEgMjIgOS42OTk3M0MyMiA4LjI4NzMyIDIwLjM1IDcuMjg1NjcgMTkgOC42NDM1NEMxNy42NSA3LjI4NTY3IDE2IDguMjg3MzIgMTYgOS42OTk3M1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class UserHeartLinearIcon extends StatelessWidget {
  /// Creates the `user-heart` icon in the linear style.
  const UserHeartLinearIcon({
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
    name: 'user-heart',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="10" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 17.5C18 19.9853 18 22 10 22C2 22 2 19.9853 2 17.5C2 15.0147 5.58172 13 10 13C14.4183 13 18 15.0147 18 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 9.69973C16 11.1121 17.2058 11.8648 18.0885 12.5385C18.4 12.7762 18.7 13 19 13C19.3 13 19.6 12.7762 19.9115 12.5385C20.7942 11.8648 22 11.1121 22 9.69973C22 8.28732 20.35 7.28567 19 8.64354C17.65 7.28567 16 8.28732 16 9.69973Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
