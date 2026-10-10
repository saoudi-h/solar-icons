// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `atom` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNy41MjkxOCA3LjUyOTIxQzEyLjQ2NzggMi41OTA1OCAxOC40NzI5IDAuNTg4MjY3IDIwLjk0MjMgMy4wNTc1M0MyMy40MTE2IDUuNTI2ODYgMjEuNDA5MiAxMS41MzI5IDE2LjQ3MDYgMTYuNDcxNkMxMS41MzIgMjEuNDA5OSA1LjUyNjc1IDIzLjQxMTUgMy4wNTc1IDIwLjk0MjNDMC41ODgyODggMTguNDcyOSAyLjU5MDU4IDEyLjQ2NzggNy41MjkxOCA3LjUyOTIxWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0zLjA1NzU2IDMuMDU3NTZDNS41MjY4OSAwLjU4ODIzNiAxMS41MzIgMi41OTA1OCAxNi40NzA2IDcuNTI5MjRDMjEuNDA5MyAxMi40Njc5IDIzLjQxMTYgMTguNDczIDIwLjk0MjMgMjAuOTQyM0MxOC40NzMgMjMuNDExNyAxMi40Njc5IDIxLjQwOTMgNy41MjkyNCAxNi40NzA2QzIuNTkwNTkgMTEuNTMyIDAuNTg4MjMzIDUuNTI2OSAzLjA1NzU2IDMuMDU3NTZaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMiA5LjVDMTMuMzgwNyA5LjUgMTQuNSAxMC42MTkzIDE0LjUgMTJDMTQuNSAxMy4zODA3IDEzLjM4MDcgMTQuNSAxMiAxNC41QzEwLjYxOTMgMTQuNSA5LjUgMTMuMzgwNyA5LjUgMTJDOS41IDEwLjYxOTMgMTAuNjE5MyA5LjUgMTIgOS41WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class AtomBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `atom` icon in the boldDuotone style.
  const AtomBoldDuotoneIcon({
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
    name: 'atom',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 9.5C13.3807 9.5 14.5 10.6193 14.5 12C14.5 13.3807 13.3807 14.5 12 14.5C10.6193 14.5 9.5 13.3807 9.5 12C9.5 10.6193 10.6193 9.5 12 9.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M7.52918 7.52921C12.4678 2.59058 18.4729 0.588267 20.9423 3.05753C23.4116 5.52686 21.4092 11.5329 16.4706 16.4716C11.532 21.4099 5.52675 23.4115 3.0575 20.9423C0.588288 18.4729 2.59058 12.4678 7.52918 7.52921Z" fill="currentColor"/>

<path opacity="0.5" d="M3.05756 3.05756C5.52689 0.588236 11.532 2.59058 16.4706 7.52924C21.4093 12.4679 23.4116 18.473 20.9423 20.9423C18.473 23.4117 12.4679 21.4093 7.52924 16.4706C2.59059 11.532 0.588233 5.5269 3.05756 3.05756Z" fill="currentColor"/>''',
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
