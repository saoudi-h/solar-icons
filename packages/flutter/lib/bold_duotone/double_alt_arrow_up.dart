// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `double-alt-arrow-up` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNS4wMDAwNCAxNy43NUM0LjY4NjE4IDE3Ljc1IDQuNDA1NTEgMTcuNTU0NiA0LjI5NjYyIDE3LjI2MDJDNC4xODc3MyAxNi45NjU4IDQuMjczNjQgMTYuNjM0OCA0LjUxMTk0IDE2LjQzMDZMMTEuNTExOSAxMC40MzA2QzExLjc5MjggMTAuMTg5OCAxMi4yMDczIDEwLjE4OTggMTIuNDg4MSAxMC40MzA2TDE5LjQ4ODEgMTYuNDMwNkMxOS43MjY0IDE2LjYzNDggMTkuODEyMyAxNi45NjU4IDE5LjcwMzUgMTcuMjYwMkMxOS41OTQ2IDE3LjU1NDYgMTkuMzEzOSAxNy43NSAxOSAxNy43NUg1LjAwMDA0WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNDMwNTcgMTMuNDg4MUM0LjcwMDE0IDEzLjgwMjYgNS4xNzM2MSAxMy44MzkgNS40ODgxMSAxMy41Njk0TDEyIDcuOTg3ODFMMTguNTExOSAxMy41Njk0QzE4LjgyNjQgMTMuODM5IDE5LjI5OTkgMTMuODAyNiAxOS41Njk1IDEzLjQ4ODFDMTkuODM5IDEzLjE3MzYgMTkuODAyNiAxMi43MDAxIDE5LjQ4ODEgMTIuNDMwNkwxMi40ODgxIDYuNDMwNTZDMTIuMjA3MiA2LjE4OTgxIDExLjc5MjggNi4xODk4MSAxMS41MTE5IDYuNDMwNTZMNC41MTE5MiAxMi40MzA2QzQuMTk3NDMgMTIuNzAwMSA0LjE2MSAxMy4xNzM2IDQuNDMwNTcgMTMuNDg4MVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class DoubleAltArrowUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `double-alt-arrow-up` icon in the boldDuotone style.
  const DoubleAltArrowUpBoldDuotoneIcon({
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
    name: 'double-alt-arrow-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.43057 13.4881C4.70014 13.8026 5.17361 13.839 5.48811 13.5694L12 7.98781L18.5119 13.5694C18.8264 13.839 19.2999 13.8026 19.5695 13.4881C19.839 13.1736 19.8026 12.7001 19.4881 12.4306L12.4881 6.43056C12.2072 6.18981 11.7928 6.18981 11.5119 6.43056L4.51192 12.4306C4.19743 12.7001 4.161 13.1736 4.43057 13.4881Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M5.00004 17.75C4.68618 17.75 4.40551 17.5546 4.29662 17.2602C4.18773 16.9658 4.27364 16.6348 4.51194 16.4306L11.5119 10.4306C11.7928 10.1898 12.2073 10.1898 12.4881 10.4306L19.4881 16.4306C19.7264 16.6348 19.8123 16.9658 19.7035 17.2602C19.5946 17.5546 19.3139 17.75 19 17.75H5.00004Z" fill="currentColor"/>''',
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
