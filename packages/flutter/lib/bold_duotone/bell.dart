// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bell` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTguNzQ5MSA5VjkuNzA0MUMxOC43NDkxIDEwLjU0OTEgMTguOTkwMyAxMS4zNzUyIDE5LjQ0MjIgMTIuMDc4MkwyMC41NDk2IDEzLjgwMTJDMjEuNTYxMiAxNS4zNzQ5IDIwLjc4OSAxNy41MTM5IDE5LjAyOTYgMTguMDExNkMxNC40MjczIDE5LjMxMzQgOS41NzI3NCAxOS4zMTM0IDQuOTcwMzYgMTguMDExNkMzLjIxMTA1IDE3LjUxMzkgMi40Mzg4MiAxNS4zNzQ5IDMuNDUwMzYgMTMuODAxMkw0LjU1NzggMTIuMDc4MkM1LjAwOTcyIDExLjM3NTIgNS4yNTA4NyAxMC41NDkxIDUuMjUwODcgOS43MDQxVjlDNS4yNTA4NyA1LjEzNDAxIDguMjcyNTYgMiAxMiAyQzE1LjcyNzQgMiAxOC43NDkxIDUuMTM0MDEgMTguNzQ5MSA5WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNNy4yNDMxNiAxOC41NDU0QzcuODk0MSAyMC41NTA2IDkuNzc3NjcgMjIuMDAwMiAxMS45OTk4IDIyLjAwMDJDMTQuMjIyIDIyLjAwMDIgMTYuMTA1NSAyMC41NTA2IDE2Ljc1NjUgMTguNTQ1NEMxMy42MTEgMTkuMTM1NyAxMC4zODg2IDE5LjEzNTcgNy4yNDMxNiAxOC41NDU0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class BellBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `bell` icon in the boldDuotone style.
  const BellBoldDuotoneIcon({
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
    name: 'bell',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M7.24316 18.5454C7.8941 20.5506 9.77767 22.0002 11.9998 22.0002C14.222 22.0002 16.1055 20.5506 16.7565 18.5454C13.611 19.1357 10.3886 19.1357 7.24316 18.5454Z" fill="currentColor"/>''',
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
