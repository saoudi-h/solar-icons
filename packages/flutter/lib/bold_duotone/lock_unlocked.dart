// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `lock-unlocked` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiAxNkMyIDEzLjE3MTYgMiAxMS43NTc0IDIuODc4NjggMTAuODc4N0MzLjc1NzM2IDEwIDUuMTcxNTcgMTAgOCAxMEgxNkMxOC44Mjg0IDEwIDIwLjI0MjYgMTAgMjEuMTIxMyAxMC44Nzg3QzIyIDExLjc1NzQgMjIgMTMuMTcxNiAyMiAxNkMyMiAxOC44Mjg0IDIyIDIwLjI0MjYgMjEuMTIxMyAyMS4xMjEzQzIwLjI0MjYgMjIgMTguODI4NCAyMiAxNiAyMkg4QzUuMTcxNTcgMjIgMy43NTczNiAyMiAyLjg3ODY4IDIxLjEyMTNDMiAyMC4yNDI2IDIgMTguODI4NCAyIDE2WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNNi43NSA4QzYuNzUgNS4xMDA1MSA5LjEwMDUxIDIuNzUgMTIgMi43NUMxNC40NDUzIDIuNzUgMTYuNTAxOCA0LjQyMjQyIDE3LjA4NDYgNi42ODY5NEMxNy4xODc5IDcuMDg4MDggMTcuNTk2OCA3LjMyOTU3IDE3Ljk5NzkgNy4yMjYzM0MxOC4zOTkxIDcuMTIzMDggMTguNjQwNSA2LjcxNDIgMTguNTM3MyA2LjMxMzA2QzE3Ljc4OCAzLjQwMTkgMTUuMTQ2MyAxLjI1IDEyIDEuMjVDOC4yNzIwOCAxLjI1IDUuMjUgNC4yNzIwOCA1LjI1IDhWMTAuMDU0NkM1LjY4NjUxIDEwLjAyMiA2LjE4MjY0IDEwLjAwODkgNi43NSAxMC4wMDM2VjhaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class LockUnlockedBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `lock-unlocked` icon in the boldDuotone style.
  const LockUnlockedBoldDuotoneIcon({
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
    name: 'lock-unlocked',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M6.75 8C6.75 5.10051 9.10051 2.75 12 2.75C14.4453 2.75 16.5018 4.42242 17.0846 6.68694C17.1879 7.08808 17.5968 7.32957 17.9979 7.22633C18.3991 7.12308 18.6405 6.7142 18.5373 6.31306C17.788 3.4019 15.1463 1.25 12 1.25C8.27208 1.25 5.25 4.27208 5.25 8V10.0546C5.68651 10.022 6.18264 10.0089 6.75 10.0036V8Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 16C2 13.1716 2 11.7574 2.87868 10.8787C3.75736 10 5.17157 10 8 10H16C18.8284 10 20.2426 10 21.1213 10.8787C22 11.7574 22 13.1716 22 16C22 18.8284 22 20.2426 21.1213 21.1213C20.2426 22 18.8284 22 16 22H8C5.17157 22 3.75736 22 2.87868 21.1213C2 20.2426 2 18.8284 2 16Z" fill="currentColor"/>''',
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
