// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `unread` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMiAxMkMyMiAxNi43MTQgMjIgMTkuMDcxMSAyMC41MzU1IDIwLjUzNTVDMTkuMDcxMSAyMiAxNi43MTQgMjIgMTIgMjJDNy4yODU5NSAyMiA0LjkyODkzIDIyIDMuNDY0NDcgMjAuNTM1NUMyIDE5LjA3MTEgMiAxNi43MTQgMiAxMkMyIDcuMjg1OTUgMiA0LjkyODkzIDMuNDY0NDcgMy40NjQ0N0M0LjkyODkzIDIgNy4yODU5NSAyIDEyIDJDMTYuNzE0IDIgMTkuMDcxMSAyIDIwLjUzNTUgMy40NjQ0N0MyMiA0LjkyODkzIDIyIDcuMjg1OTUgMjIgMTJaTTE3LjQ1NDUgNi45MDM0M0MxNy43ODQgNy4xNTQ0NiAxNy44NDc2IDcuNjI1MDUgMTcuNTk2NiA3Ljk1NDUzTDEwLjczOTQgMTYuOTU0NUMxMC42MDI5IDE3LjEzMzcgMTAuMzkzIDE3LjI0MjEgMTAuMTY3OCAxNy4yNDk2QzkuOTQyNjYgMTcuMjU3MSA5LjcyNjA0IDE3LjE2MyA5LjU3Nzg3IDE2Ljk5MzJMNi40MzUwMSAxMy4zOTMyQzYuMTYyNiAxMy4wODEyIDYuMTk0NzIgMTIuNjA3NCA2LjUwNjc2IDEyLjMzNUM2LjgxODc5IDEyLjA2MjYgNy4yOTI1OCAxMi4wOTQ3IDcuNTY0OTkgMTIuNDA2OEwxMC4xMDMzIDE1LjMxNDNMMTYuNDAzNCA3LjA0NTQ3QzE2LjY1NDUgNi43MTU5OSAxNy4xMjUxIDYuNjUyMzkgMTcuNDU0NSA2LjkwMzQzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class UnreadBoldIcon extends StatelessWidget {
  /// Creates the `unread` icon in the bold style.
  const UnreadBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12ZM17.4545 6.90343C17.784 7.15446 17.8476 7.62505 17.5966 7.95453L10.7394 16.9545C10.6029 17.1337 10.393 17.2421 10.1678 17.2496C9.94266 17.2571 9.72604 17.163 9.57787 16.9932L6.43501 13.3932C6.1626 13.0812 6.19472 12.6074 6.50676 12.335C6.81879 12.0626 7.29258 12.0947 7.56499 12.4068L10.1033 15.3143L16.4034 7.04547C16.6545 6.71599 17.1251 6.65239 17.4545 6.90343Z" fill="currentColor"/>''',
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
