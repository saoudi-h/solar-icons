// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cloudy-moon` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDExLjUzNzMgMjEuMzA2NSAxMS40NjA4IDIxLjA2NzIgMTEuODU2OEMxOS45Mjg5IDEzLjc0MDYgMTcuODYxNSAxNSAxNS41IDE1QzExLjkxMDEgMTUgOSAxMi4wODk5IDkgOC41QzkgNi4xMzg0NSAxMC4yNTk0IDQuMDcxMDUgMTIuMTQzMiAyLjkzMjc2QzEyLjUzOTIgMi42OTM0NyAxMi40NjI3IDIgMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxNy41MjI4IDYuNDc3MTUgMjIgMTIgMjJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMS4yODU3IDIyQzEzLjMzNzEgMjIgMTUgMjAuNDE5OCAxNSAxOC40NzA2QzE1IDE2LjkyNTcgMTMuOTU1NCAxNS42MTI2IDEyLjUwMDggMTUuMTM0NEMxMi4yOTQxIDEzLjM3MTEgMTAuNzIwMyAxMiA4LjgwOTUyIDEyQzYuNzU4MTggMTIgNS4wOTUyNCAxMy41ODAyIDUuMDk1MjQgMTUuNTI5NEM1LjA5NTI0IDE1Ljk2MDUgNS4xNzY1OSAxNi4zNzM2IDUuMzI1NSAxNi43NTU1QzUuMTUwODcgMTYuNzIzIDQuOTcwMzkgMTYuNzA1OSA0Ljc4NTcxIDE2LjcwNTlDMy4yNDcyMSAxNi43MDU5IDIgMTcuODkxIDIgMTkuMzUyOUMyIDIwLjgxNDkgMy4yNDcyMSAyMiA0Ljc4NTcxIDIySDExLjI4NTdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class CloudyMoonBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `cloudy-moon` icon in the boldDuotone style.
  const CloudyMoonBoldDuotoneIcon({
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
    name: 'cloudy-moon',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11.2857 22C13.3371 22 15 20.4198 15 18.4706C15 16.9257 13.9554 15.6126 12.5008 15.1344C12.2941 13.3711 10.7203 12 8.80952 12C6.75818 12 5.09524 13.5802 5.09524 15.5294C5.09524 15.9605 5.17659 16.3736 5.3255 16.7555C5.15087 16.723 4.97039 16.7059 4.78571 16.7059C3.24721 16.7059 2 17.891 2 19.3529C2 20.8149 3.24721 22 4.78571 22H11.2857Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 11.5373 21.3065 11.4608 21.0672 11.8568C19.9289 13.7406 17.8615 15 15.5 15C11.9101 15 9 12.0899 9 8.5C9 6.13845 10.2594 4.07105 12.1432 2.93276C12.5392 2.69347 12.4627 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="currentColor"/>''',
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
