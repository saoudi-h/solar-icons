// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `box-minimalistic` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjU3NzcgNC40MzE1MkwxNS41Nzc3IDMuMzgxOTdDMTMuODIyMSAyLjQ2MDY2IDEyLjk0NDMgMiAxMiAyQzExLjA1NTcgMiAxMC4xNzc5IDIuNDYwNjYgOC40MjIyOSAzLjM4MTk3TDYuNDIyMjkgNC40MzE1MkM0LjY0ODU1IDUuMzYyMzQgMy42MDU5IDUuOTA5NSAyLjk1OTY5IDYuNjQxMzJMMTIgMTEuMTYxNUwyMS4wNDAzIDYuNjQxMzJDMjAuMzk0MSA1LjkwOTUgMTkuMzUxNSA1LjM2MjM0IDE3LjU3NzcgNC40MzE1MloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIxLjc0ODQgNy45NjQzNUwxMi43NSAxMi40NjM1VjIxLjkwNEMxMy40Njc5IDIxLjcyNTIgMTQuMjg0OCAyMS4yOTY1IDE1LjU3NzcgMjAuNjE4TDE3LjU3NzcgMTkuNTY4NUMxOS43Mjk0IDE4LjQzOTMgMjAuODA1MiAxNy44NzQ4IDIxLjQwMjYgMTYuODYwM0MyMiAxNS44NDU4IDIyIDE0LjU4MzMgMjIgMTIuMDU4NVYxMS45NDE1QzIyIDEwLjA0ODkgMjIgOC44NjU1OCAyMS43NDg0IDcuOTY0MzVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMS4yNSAyMS45MDRWMTIuNDYzNUwyLjI1MTY0IDcuOTY0MzRDMiA4Ljg2NTU3IDIgMTAuMDQ4OSAyIDExLjk0MTVWMTIuMDU4NUMyIDE0LjU4MzMgMiAxNS44NDU4IDIuNTk3NCAxNi44NjAzQzMuMTk0NzkgMTcuODc0OCA0LjI3MDYzIDE4LjQzOTMgNi40MjIyOSAxOS41Njg1TDguNDIyMjkgMjAuNjE4QzkuNzE1MjQgMjEuMjk2NSAxMC41MzIxIDIxLjcyNTIgMTEuMjUgMjEuOTA0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class BoxMinimalisticBoldIcon extends StatelessWidget {
  /// Creates the `box-minimalistic` icon in the bold style.
  const BoxMinimalisticBoldIcon({
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
    name: 'box-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17.5777 4.43152L15.5777 3.38197C13.8221 2.46066 12.9443 2 12 2C11.0557 2 10.1779 2.46066 8.42229 3.38197L6.42229 4.43152C4.64855 5.36234 3.6059 5.9095 2.95969 6.64132L12 11.1615L21.0403 6.64132C20.3941 5.9095 19.3515 5.36234 17.5777 4.43152Z" fill="currentColor"/>
<path d="M21.7484 7.96435L12.75 12.4635V21.904C13.4679 21.7252 14.2848 21.2965 15.5777 20.618L17.5777 19.5685C19.7294 18.4393 20.8052 17.8748 21.4026 16.8603C22 15.8458 22 14.5833 22 12.0585V11.9415C22 10.0489 22 8.86558 21.7484 7.96435Z" fill="currentColor"/>
<path d="M11.25 21.904V12.4635L2.25164 7.96434C2 8.86557 2 10.0489 2 11.9415V12.0585C2 14.5833 2 15.8458 2.5974 16.8603C3.19479 17.8748 4.27063 18.4393 6.42229 19.5685L8.42229 20.618C9.71524 21.2965 10.5321 21.7252 11.25 21.904Z" fill="currentColor"/>''',
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
