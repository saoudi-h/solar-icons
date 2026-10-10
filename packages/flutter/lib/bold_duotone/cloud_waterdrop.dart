// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cloud-waterdrop` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTYuMjg1NyAxOUMxOS40NDE2IDE5IDIyIDE2LjQ3MTcgMjIgMTMuMzUyOUMyMiAxMC44ODExIDIwLjM5MyA4Ljc4MDI0IDE4LjE1NTEgOC4wMTQ5OEMxNy44MzcxIDUuMTkzNzEgMTUuNDE1OSAzIDEyLjQ3NjIgM0M5LjMyMDI4IDMgNi43NjE5IDUuNTI4MjcgNi43NjE5IDguNjQ3MDZDNi43NjE5IDkuMzM2ODcgNi44ODcwNiA5Ljk5NzggNy4xMTYxNiAxMC42MDg5QzYuODQ3NSAxMC41NTY3IDYuNTY5ODMgMTAuNTI5NCA2LjI4NTcxIDEwLjUyOTRDMy45MTg3OCAxMC41Mjk0IDIgMTIuNDI1NiAyIDE0Ljc2NDdDMiAxNy4xMDM4IDMuOTE4NzggMTkgNi4yODU3MSAxOUgxNi4yODU3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTUgMTkuMDgzN0MxNSAyMC42OTQ2IDEzLjY1NjkgMjIuMDAwNCAxMiAyMi4wMDA0QzEwLjM0MzEgMjIuMDAwNCA5IDIwLjY5NDYgOSAxOS4wODM3QzkgMTguMTcxOCA5Ljk2MTQzIDE2Ljk4MzggMTAuNzk1OCAxNi4xMjQ1QzExLjQ2MjYgMTUuNDM3NyAxMi41Mzc0IDE1LjQzNzcgMTMuMjA0MiAxNi4xMjQ1QzE0LjAzODYgMTYuOTgzOCAxNSAxOC4xNzE4IDE1IDE5LjA4MzdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class CloudWaterdropBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `cloud-waterdrop` icon in the boldDuotone style.
  const CloudWaterdropBoldDuotoneIcon({
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
    name: 'cloud-waterdrop',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15 19.0837C15 20.6946 13.6569 22.0004 12 22.0004C10.3431 22.0004 9 20.6946 9 19.0837C9 18.1718 9.96143 16.9838 10.7958 16.1245C11.4626 15.4377 12.5374 15.4377 13.2042 16.1245C14.0386 16.9838 15 18.1718 15 19.0837Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M16.2857 19C19.4416 19 22 16.4717 22 13.3529C22 10.8811 20.393 8.78024 18.1551 8.01498C17.8371 5.19371 15.4159 3 12.4762 3C9.32028 3 6.7619 5.52827 6.7619 8.64706C6.7619 9.33687 6.88706 9.9978 7.11616 10.6089C6.8475 10.5567 6.56983 10.5294 6.28571 10.5294C3.91878 10.5294 2 12.4256 2 14.7647C2 17.1038 3.91878 19 6.28571 19H16.2857Z" fill="currentColor"/>''',
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
