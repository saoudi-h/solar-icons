// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `end-call-rounded` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTUuNjA3MiAxNi44OTczTDYuOTQ2OSAxNi41MTczQzguMTU1OTEgMTYuMTc0NCA5IDE0Ljk4MjYgOSAxMy42MTg1QzkgMTMuNjE4NSA5IDEzLjYxODUgOSAxMy42MTg1QzkgMTMuNjE4NSA5LjAwMDAxIDExLjk2MzkgMTIgMTEuOTYzOUMxNC45OTk5IDExLjk2MzkgMTUgMTMuNjE4NCAxNSAxMy42MTg1QzE1IDEzLjYxODUgMTUgMTMuNjE4NSAxNSAxMy42MTg1QzE1IDE0Ljk4MjYgMTUuODQ0MSAxNi4xNzQ0IDE3LjA1MzEgMTYuNTE3M0wxOC4zOTI4IDE2Ljg5NzNDMjAuMjE4NCAxNy40MTUxIDIyIDE1LjkxMDIgMjIgMTMuODUwNEMyMiAxMi42MTI3IDIxLjcyMzQgMTEuMzczIDIwLjkxNzEgMTAuNTAzMkMxOS41NTk4IDkuMDM4ODkgMTYuODA2OCA3IDEyIDdDNy4xOTMyMiA3IDQuNDQwMjMgOS4wMzg4OCAzLjA4Mjg5IDEwLjUwMzJDMi4yNzY1OSAxMS4zNzMgMiAxMi42MTI3IDIgMTMuODUwNEMyIDE1LjkxMDIgMy43ODE1OCAxNy40MTUxIDUuNjA3MiAxNi44OTczWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class EndCallRoundedBoldIcon extends StatelessWidget {
  /// Creates the `end-call-rounded` icon in the bold style.
  const EndCallRoundedBoldIcon({
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
    name: 'end-call-rounded',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.6072 16.8973L6.9469 16.5173C8.15591 16.1744 9 14.9826 9 13.6185C9 13.6185 9 13.6185 9 13.6185C9 13.6185 9.00001 11.9639 12 11.9639C14.9999 11.9639 15 13.6184 15 13.6185C15 13.6185 15 13.6185 15 13.6185C15 14.9826 15.8441 16.1744 17.0531 16.5173L18.3928 16.8973C20.2184 17.4151 22 15.9102 22 13.8504C22 12.6127 21.7234 11.373 20.9171 10.5032C19.5598 9.03889 16.8068 7 12 7C7.19322 7 4.44023 9.03888 3.08289 10.5032C2.27659 11.373 2 12.6127 2 13.8504C2 15.9102 3.78158 17.4151 5.6072 16.8973Z" fill="currentColor"/>''',
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
