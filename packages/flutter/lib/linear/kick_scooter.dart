// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `kick-scooter` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYuNzYxOSAxNy42NDcxQzYuNzYxOSAxOC45NDY2IDUuNjk1OTIgMjAgNC4zODA5NSAyMEMzLjA2NTk5IDIwIDIgMTguOTQ2NiAyIDE3LjY0NzFDMiAxNi4zNDc2IDMuMDY1OTkgMTUuMjk0MSA0LjM4MDk1IDE1LjI5NDFDNS42OTU5MiAxNS4yOTQxIDYuNzYxOSAxNi4zNDc2IDYuNzYxOSAxNy42NDcxWk02Ljc2MTkgMTcuNjQ3MUgxNC4zODFDMTQuMzgxIDE0Ljc4ODIgMTYuNzI2MSAxMi40NzA2IDE5LjYxOSAxMi40NzA2TDE4LjYxNDkgNi41MTY2M0MxOC40NjQxIDUuNjIyNTUgMTguMzg4NyA1LjE3NTUgMTguMTYzIDQuODQwMDNDMTcuOTY0IDQuNTQ0MzEgMTcuNjg0NCA0LjMxMDI2IDE3LjM1NjUgNC4xNjQ5QzE2Ljk4NDYgNCAxNi41MjYgNCAxNS42MDg4IDRIMTQuMzgxTTIyIDE3LjY0NzFDMjIgMTguOTQ2NiAyMC45MzQgMjAgMTkuNjE5IDIwQzE4LjMwNDEgMjAgMTcuMjM4MSAxOC45NDY2IDE3LjIzODEgMTcuNjQ3MUMxNy4yMzgxIDE2LjM0NzYgMTguMzA0MSAxNS4yOTQxIDE5LjYxOSAxNS4yOTQxQzIwLjkzNCAxNS4yOTQxIDIyIDE2LjM0NzYgMjIgMTcuNjQ3MVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class KickScooterLinearIcon extends StatelessWidget {
  /// Creates the `kick-scooter` icon in the linear style.
  const KickScooterLinearIcon({
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
    name: 'kick-scooter',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M6.7619 17.6471C6.7619 18.9466 5.69592 20 4.38095 20C3.06599 20 2 18.9466 2 17.6471C2 16.3476 3.06599 15.2941 4.38095 15.2941C5.69592 15.2941 6.7619 16.3476 6.7619 17.6471ZM6.7619 17.6471H14.381C14.381 14.7882 16.7261 12.4706 19.619 12.4706L18.6149 6.51663C18.4641 5.62255 18.3887 5.1755 18.163 4.84003C17.964 4.54431 17.6844 4.31026 17.3565 4.1649C16.9846 4 16.526 4 15.6088 4H14.381M22 17.6471C22 18.9466 20.934 20 19.619 20C18.3041 20 17.2381 18.9466 17.2381 17.6471C17.2381 16.3476 18.3041 15.2941 19.619 15.2941C20.934 15.2941 22 16.3476 22 17.6471Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
