// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTguNDkzMyA2LjkzNTAyQzE4LjgwNTMgNy4yMDc0MyAxOC44Mzc0IDcuNjgxMjIgMTguNTY1IDcuOTkzMjVMMTAuNzA3OSAxNi45OTMzQzEwLjU2NTQgMTcuMTU2NCAxMC4zNTk0IDE3LjI1IDEwLjE0MjkgMTcuMjVDOS45MjYzIDE3LjI1IDkuNzIwMzEgMTcuMTU2NCA5LjU3Nzg4IDE2Ljk5MzNMNi40MzUwMiAxMy4zOTMzQzYuMTYyNjEgMTMuMDgxMiA2LjE5NDczIDEyLjYwNzQgNi41MDY3NyAxMi4zMzVDNi44MTg4IDEyLjA2MjYgNy4yOTI1OSAxMi4wOTQ3IDcuNTY1IDEyLjQwNjhMMTAuMTQyOSAxNS4zNTk2TDE3LjQzNSA3LjAwNjc3QzE3LjcwNzQgNi42OTQ3MyAxOC4xODEyIDYuNjYyNjEgMTguNDkzMyA2LjkzNTAyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class UnreadOutlineIcon extends StatelessWidget {
  /// Creates the `unread` icon in the outline style.
  const UnreadOutlineIcon({
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
    name: 'unread',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M18.4933 6.93502C18.8053 7.20743 18.8374 7.68122 18.565 7.99325L10.7079 16.9933C10.5654 17.1564 10.3594 17.25 10.1429 17.25C9.9263 17.25 9.72031 17.1564 9.57788 16.9933L6.43502 13.3933C6.16261 13.0812 6.19473 12.6074 6.50677 12.335C6.8188 12.0626 7.29259 12.0947 7.565 12.4068L10.1429 15.3596L17.435 7.00677C17.7074 6.69473 18.1812 6.66261 18.4933 6.93502Z" fill="currentColor"/>''',
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
