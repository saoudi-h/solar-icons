// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `plane` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4LjYzNTcgMTUuNjcwMUwyMC4zNTIxIDEwLjUyMDhDMjEuODUxNiA2LjAyMjQyIDIyLjYwMTMgMy43NzMyMiAyMS40MTQgMi41ODU5NUMyMC4yMjY4IDEuMzk4NjkgMTcuOTc3NiAyLjE0ODQyIDEzLjQ3OTIgMy42NDc4OEw4LjMyOTg3IDUuMzY0MzJDNC42OTkyMyA2LjU3NDUzIDIuODgzOTIgNy4xNzk2NCAyLjM2ODA2IDguMDY2OThDMS44NzczMSA4LjkxMTEyIDEuODc3MzEgOS45NTM2OSAyLjM2ODA2IDEwLjc5NzhDMi44ODM5MiAxMS42ODUyIDQuNjk5MjMgMTIuMjkwMyA4LjMyOTg2IDEzLjUwMDVDOC45MTI4MiAxMy42OTQ4IDkuMjA0MyAxMy43OTIgOS40NDc5MyAxMy45NTUxQzkuNjg0MDQgMTQuMTEzMSA5Ljg4Njg3IDE0LjMxNiAxMC4wNDQ5IDE0LjU1MjFDMTAuMjA4IDE0Ljc5NTcgMTAuMzA1MiAxNS4wODcyIDEwLjQ5OTUgMTUuNjcwMUMxMS43MDk3IDE5LjMwMDggMTIuMzE0OCAyMS4xMTYxIDEzLjIwMjIgMjEuNjMxOUMxNC4wNDYzIDIyLjEyMjcgMTUuMDg4OSAyMi4xMjI3IDE1LjkzMyAyMS42MzE5QzE2LjgyMDQgMjEuMTE2MSAxNy40MjU1IDE5LjMwMDggMTguNjM1NyAxNS42NzAxWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEwLjEzNTMgMTMuODAyN0wxNS42ODQyIDguMzE0OTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PlaneLineDuotoneIcon extends StatelessWidget {
  /// Creates the `plane` icon in the lineDuotone style.
  const PlaneLineDuotoneIcon({
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
    name: 'plane',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M18.6357 15.6701L20.3521 10.5208C21.8516 6.02242 22.6013 3.77322 21.414 2.58595C20.2268 1.39869 17.9776 2.14842 13.4792 3.64788L8.32987 5.36432C4.69923 6.57453 2.88392 7.17964 2.36806 8.06698C1.87731 8.91112 1.87731 9.95369 2.36806 10.7978C2.88392 11.6852 4.69923 12.2903 8.32986 13.5005C8.91282 13.6948 9.2043 13.792 9.44793 13.9551C9.68404 14.1131 9.88687 14.316 10.0449 14.5521C10.208 14.7957 10.3052 15.0872 10.4995 15.6701C11.7097 19.3008 12.3148 21.1161 13.2022 21.6319C14.0463 22.1227 15.0889 22.1227 15.933 21.6319C16.8204 21.1161 17.4255 19.3008 18.6357 15.6701Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M10.1353 13.8027L15.6842 8.31497" stroke="currentColor" stroke-linecap="round"/>''',
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
