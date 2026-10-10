// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `table-minimalistic` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTMgMkMxNi43NzEyIDIgMTguNjU2OSAyIDE5LjgyODQgMy4xNzE1N0MyMSA0LjM0MzE1IDIxIDYuMjI4NzYgMjEgMTBMMjEgMTRDMjEgMTcuNzcxMiAyMSAxOS42NTY5IDE5LjgyODQgMjAuODI4NEMxOC42NTY5IDIyIDE2Ljc3MTIgMjIgMTMgMjJMMTEgMjJDNy4yMjg3NiAyMiA1LjM0MzE1IDIyIDQuMTcxNTcgMjAuODI4NEMzIDE5LjY1NjkgMyAxNy43NzEyIDMgMTRMMyAxMEMzIDYuMjI4NzYgMyA0LjM0MzE1IDQuMTcxNTcgMy4xNzE1N0M1LjM0MzE1IDIgNy4yMjg3NiAyIDExIDJMMTMgMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTkuNzUgNy45MTY5OUgyMC45ODczQzIwLjk5NDcgOC4zNzgwNSAyMC45OTg1IDguODc2NjcgMjAuOTk5IDkuNDE2OTlIOS43NVYyMS45OThDOS4yMDUzMiAyMS45OTU0IDguNzA3MDQgMjEuOTg3NiA4LjI1IDIxLjk3MjdWOS40MTY5OUgzLjAwMDk4QzMuMDAxNDcgOC44NzY2NyAzLjAwNTMyIDguMzc4MDUgMy4wMTI3IDcuOTE2OTlIOC4yNVYyLjAyNjM3QzguNzA3MDQgMi4wMTE0MSA5LjIwNTMzIDIuMDAzNiA5Ljc1IDIuMDAwOThWNy45MTY5OVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class TableMinimalisticBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `table-minimalistic` icon in the boldDuotone style.
  const TableMinimalisticBoldDuotoneIcon({
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
    name: 'table-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9.75 7.91699H20.9873C20.9947 8.37805 20.9985 8.87667 20.999 9.41699H9.75V21.998C9.20532 21.9954 8.70704 21.9876 8.25 21.9727V9.41699H3.00098C3.00147 8.87667 3.00532 8.37805 3.0127 7.91699H8.25V2.02637C8.70704 2.01141 9.20533 2.0036 9.75 2.00098V7.91699Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2L13 2Z" fill="currentColor"/>''',
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
