// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bell-ring` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTguNzQ5MSA5VjkuNzA0MUMxOC43NDkxIDEwLjU0OTEgMTguOTkwMyAxMS4zNzUyIDE5LjQ0MjIgMTIuMDc4MkwyMC41NDk2IDEzLjgwMTJDMjEuNTYxMiAxNS4zNzQ5IDIwLjc4OSAxNy41MTM5IDE5LjAyOTYgMTguMDExNkMxNC40MjczIDE5LjMxMzQgOS41NzI3NCAxOS4zMTM0IDQuOTcwMzYgMTguMDExNkMzLjIxMTA1IDE3LjUxMzkgMi40Mzg4MiAxNS4zNzQ5IDMuNDUwMzYgMTMuODAxMkw0LjU1NzggMTIuMDc4MkM1LjAwOTcyIDExLjM3NTIgNS4yNTA4NyAxMC41NDkxIDUuMjUwODcgOS43MDQxVjlDNS4yNTA4NyA1LjEzNDAxIDguMjcyNTYgMiAxMiAyQzE1LjcyNzQgMiAxOC43NDkxIDUuMTM0MDEgMTguNzQ5MSA5WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTYuNzU2OCAxOC41NDQ5QzE2LjEwNTkgMjAuNTUgMTQuMjIyMSAyMS45OTk5IDEyIDIyQzkuNzc3ODYgMjIgNy44OTQxIDIwLjU1MDEgNy4yNDMxNiAxOC41NDQ5QzEwLjM4ODYgMTkuMTM1MiAxMy42MTE0IDE5LjEzNTIgMTYuNzU2OCAxOC41NDQ5WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIgNS4yNUMxMi40MTQyIDUuMjUgMTIuNzUgNS41ODU3OSAxMi43NSA2VjEwQzEyLjc1IDEwLjQxNDIgMTIuNDE0MiAxMC43NSAxMiAxMC43NUMxMS41ODU4IDEwLjc1IDExLjI1IDEwLjQxNDIgMTEuMjUgMTBWNkMxMS4yNSA1LjU4NTc5IDExLjU4NTggNS4yNSAxMiA1LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class BellRingBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `bell-ring` icon in the boldDuotone style.
  const BellRingBoldDuotoneIcon({
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
    name: 'bell-ring',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.7568 18.5449C16.1059 20.55 14.2221 21.9999 12 22C9.77786 22 7.8941 20.5501 7.24316 18.5449C10.3886 19.1352 13.6114 19.1352 16.7568 18.5449Z" fill="currentColor"/>
<path d="M12 5.25C12.4142 5.25 12.75 5.58579 12.75 6V10C12.75 10.4142 12.4142 10.75 12 10.75C11.5858 10.75 11.25 10.4142 11.25 10V6C11.25 5.58579 11.5858 5.25 12 5.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.7491 9V9.7041C18.7491 10.5491 18.9903 11.3752 19.4422 12.0782L20.5496 13.8012C21.5612 15.3749 20.789 17.5139 19.0296 18.0116C14.4273 19.3134 9.57274 19.3134 4.97036 18.0116C3.21105 17.5139 2.43882 15.3749 3.45036 13.8012L4.5578 12.0782C5.00972 11.3752 5.25087 10.5491 5.25087 9.7041V9C5.25087 5.13401 8.27256 2 12 2C15.7274 2 18.7491 5.13401 18.7491 9Z" fill="currentColor"/>''',
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
