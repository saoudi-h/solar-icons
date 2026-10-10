// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-point-wave` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTkuNzE2NSAyMC4zNjI0QzIxLjE0MyAxOS41ODQ2IDIyIDE4LjU4NzMgMjIgMTcuNUMyMiAxNi4zNDc1IDIxLjAzNzIgMTUuMjk2MSAxOS40NTM3IDE0LjVDMTcuNjIyNiAxMy41Nzk0IDE0Ljk2MTcgMTMgMTIgMTNDOS4wMzgzMyAxMyA2LjM3NzM4IDEzLjU3OTQgNC41NDYzMSAxNC41QzIuOTYyODUgMTUuMjk2MSAyIDE2LjM0NzUgMiAxNy41QzIgMTguNjUyNSAyLjk2Mjg1IDE5LjcwMzkgNC41NDYzMSAyMC41QzYuMzc3MzggMjEuNDIwNiA5LjAzODMzIDIyIDEyIDIyQzE1LjEwNjYgMjIgMTcuODgyMyAyMS4zNjI1IDE5LjcxNjUgMjAuMzYyNFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik01IDguNTE0NjRDNSA0LjkxNjcgOC4xMzQwMSAyIDEyIDJDMTUuODY2IDIgMTkgNC45MTY3IDE5IDguNTE0NjRDMTkgMTIuMDg0NCAxNi43NjU4IDE2LjI0OTkgMTMuMjgwMSAxNy43Mzk2QzEyLjQ2NzUgMTguMDg2OCAxMS41MzI1IDE4LjA4NjggMTAuNzE5OSAxNy43Mzk2QzcuMjM0MTYgMTYuMjQ5OSA1IDEyLjA4NDQgNSA4LjUxNDY0Wk0xMiAxMUMxMy4xMDQ2IDExIDE0IDEwLjEwNDYgMTQgOUMxNCA3Ljg5NTQzIDEzLjEwNDYgNyAxMiA3QzEwLjg5NTQgNyAxMCA3Ljg5NTQzIDEwIDlDMTAgMTAuMTA0NiAxMC44OTU0IDExIDEyIDExWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MapPointWaveBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `map-point-wave` icon in the boldDuotone style.
  const MapPointWaveBoldDuotoneIcon({
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
    name: 'map-point-wave',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M5 8.51464C5 4.9167 8.13401 2 12 2C15.866 2 19 4.9167 19 8.51464C19 12.0844 16.7658 16.2499 13.2801 17.7396C12.4675 18.0868 11.5325 18.0868 10.7199 17.7396C7.23416 16.2499 5 12.0844 5 8.51464ZM12 11C13.1046 11 14 10.1046 14 9C14 7.89543 13.1046 7 12 7C10.8954 7 10 7.89543 10 9C10 10.1046 10.8954 11 12 11Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M19.7165 20.3624C21.143 19.5846 22 18.5873 22 17.5C22 16.3475 21.0372 15.2961 19.4537 14.5C17.6226 13.5794 14.9617 13 12 13C9.03833 13 6.37738 13.5794 4.54631 14.5C2.96285 15.2961 2 16.3475 2 17.5C2 18.6525 2.96285 19.7039 4.54631 20.5C6.37738 21.4206 9.03833 22 12 22C15.1066 22 17.8823 21.3625 19.7165 20.3624Z" fill="currentColor"/>''',
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
