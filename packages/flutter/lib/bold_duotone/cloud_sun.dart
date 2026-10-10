// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cloud-sun` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBvcGFjaXR5PSIwLjUiIGN4PSI3IiBjeT0iNyIgcj0iNSIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTYuMjg1NyAyMEMxOS40NDE2IDIwIDIyIDE3LjQ3MTcgMjIgMTQuMzUyOUMyMiAxMS44ODExIDIwLjM5MyA5Ljc4MDI0IDE4LjE1NTEgOS4wMTQ5OEMxNy44MzcxIDYuMTkzNzEgMTUuNDE1OSA0IDEyLjQ3NjIgNEM5LjMyMDI4IDQgNi43NjE5IDYuNTI4MjcgNi43NjE5IDkuNjQ3MDZDNi43NjE5IDEwLjMzNjkgNi44ODcwNiAxMC45OTc4IDcuMTE2MTYgMTEuNjA4OUM2Ljg0NzUgMTEuNTU2NyA2LjU2OTgzIDExLjUyOTQgNi4yODU3MSAxMS41Mjk0QzMuOTE4NzggMTEuNTI5NCAyIDEzLjQyNTYgMiAxNS43NjQ3QzIgMTguMTAzOCAzLjkxODc4IDIwIDYuMjg1NzEgMjBIMTYuMjg1N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class CloudSunBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `cloud-sun` icon in the boldDuotone style.
  const CloudSunBoldDuotoneIcon({
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
    name: 'cloud-sun',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.2857 20C19.4416 20 22 17.4717 22 14.3529C22 11.8811 20.393 9.78024 18.1551 9.01498C17.8371 6.19371 15.4159 4 12.4762 4C9.32028 4 6.7619 6.52827 6.7619 9.64706C6.7619 10.3369 6.88706 10.9978 7.11616 11.6089C6.8475 11.5567 6.56983 11.5294 6.28571 11.5294C3.91878 11.5294 2 13.4256 2 15.7647C2 18.1038 3.91878 20 6.28571 20H16.2857Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="7" cy="7" r="5" fill="currentColor"/>''',
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
