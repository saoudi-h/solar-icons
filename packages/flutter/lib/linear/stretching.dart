// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `stretching` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTQuNSIgY3k9IjQuNSIgcj0iMi41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTUgMjIuMDAwMkw4Ljg0ODU2IDIwLjYyNzRDOS4zMDQzNyAyMC40NjQ4IDkuNjg1NzYgMjAuMTQyNSA5LjkyMjA0IDE5LjcyMDJMMTIuNjM0MyAxNC44NzJDMTIuODAxMiAxNC41NzM2IDEyLjg4ODkgMTQuMjM3NCAxMi44ODg5IDEzLjg5NTVWMTEuMjc1MUMxMi44ODg5IDEwLjE5ODIgMTEuNzg3OCA5LjQ3MjEzIDEwLjc5OCA5Ljg5NjM0TDguMzQyMjEgMTAuOTQ4OEM3LjM1OTM1IDExLjM3IDcuMTIwMzEgMTIuNjU1IDcuODg1OTQgMTMuNDAxNUw4LjUgMTQuMDAwMk0xOSAyMi4wMDAyVjE2Ljc2ODFDMTkgMTUuNTM1NiAxNy44OTU4IDE0LjU5NjMgMTYuNjc5MiAxNC43OTRMMTUuNjY2NyAxNC45NTg2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class StretchingLinearIcon extends StatelessWidget {
  /// Creates the `stretching` icon in the linear style.
  const StretchingLinearIcon({
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
    name: 'stretching',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="14.5" cy="4.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 22.0002L8.84856 20.6274C9.30437 20.4648 9.68576 20.1425 9.92204 19.7202L12.6343 14.872C12.8012 14.5736 12.8889 14.2374 12.8889 13.8955V11.2751C12.8889 10.1982 11.7878 9.47213 10.798 9.89634L8.34221 10.9488C7.35935 11.37 7.12031 12.655 7.88594 13.4015L8.5 14.0002M19 22.0002V16.7681C19 15.5356 17.8958 14.5963 16.6792 14.794L15.6667 14.9586" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
