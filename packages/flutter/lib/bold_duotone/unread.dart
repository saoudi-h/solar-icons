// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `unread` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjAuNTM1NSAyMC41MzU1QzIyIDE5LjA3MTEgMjIgMTYuNzE0IDIyIDEyQzIyIDcuMjg1OTUgMjIgNC45Mjg5MyAyMC41MzU1IDMuNDY0NDdDMTkuMDcxMSAyIDE2LjcxNCAyIDEyIDJDNy4yODU5NSAyIDQuOTI4OTMgMiAzLjQ2NDQ3IDMuNDY0NDdDMiA0LjkyODkzIDIgNy4yODU5NSAyIDEyQzIgMTYuNzE0IDIgMTkuMDcxMSAzLjQ2NDQ3IDIwLjUzNTVDNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyIDIyQzE2LjcxNCAyMiAxOS4wNzExIDIyIDIwLjUzNTUgMjAuNTM1NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE3LjQ1NDUgNi45MDM0N0MxNy43ODQgNy4xNTQ1IDE3Ljg0NzYgNy42MjUwOSAxNy41OTY2IDcuOTU0NTdMMTAuNzM5NCAxNi45NTQ2QzEwLjYwMjkgMTcuMTMzOCAxMC4zOTMgMTcuMjQyMSAxMC4xNjc4IDE3LjI0OTZDOS45NDI2NyAxNy4yNTcxIDkuNzI2MDUgMTcuMTYzIDkuNTc3ODggMTYuOTkzM0w2LjQzNTAyIDEzLjM5MzNDNi4xNjI2MSAxMy4wODEyIDYuMTk0NzMgMTIuNjA3NSA2LjUwNjc3IDEyLjMzNTFDNi44MTg4IDEyLjA2MjYgNy4yOTI1OSAxMi4wOTQ4IDcuNTY1IDEyLjQwNjhMMTAuMTAzNCAxNS4zMTQ0TDE2LjQwMzQgNy4wNDU1MUMxNi42NTQ1IDYuNzE2MDMgMTcuMTI1MSA2LjY1MjQzIDE3LjQ1NDUgNi45MDM0N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class UnreadBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `unread` icon in the boldDuotone style.
  const UnreadBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17.4545 6.90347C17.784 7.1545 17.8476 7.62509 17.5966 7.95457L10.7394 16.9546C10.6029 17.1338 10.393 17.2421 10.1678 17.2496C9.94267 17.2571 9.72605 17.163 9.57788 16.9933L6.43502 13.3933C6.16261 13.0812 6.19473 12.6075 6.50677 12.3351C6.8188 12.0626 7.29259 12.0948 7.565 12.4068L10.1034 15.3144L16.4034 7.04551C16.6545 6.71603 17.1251 6.65243 17.4545 6.90347Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355Z" fill="currentColor"/>''',
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
