// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `text-italic-circle` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxNy41MjI4IDYuNDc3MTUgMjIgMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMC42NjY3IDYuMjQ5OTRIMTMuMzE2MkMxMy4zMjczIDYuMjQ5NjkgMTMuMzM4NCA2LjI0OTY5IDEzLjM0OTUgNi4yNDk5NEgxNkMxNi40MTQyIDYuMjQ5OTQgMTYuNzUgNi41ODU3MyAxNi43NSA2Ljk5OTk0QzE2Ljc1IDcuNDE0MTYgMTYuNDE0MiA3Ljc0OTk0IDE2IDcuNzQ5OTRIMTMuOTA5NUwxMS42NDI5IDE2LjI0OTlIMTMuMzMzM0MxMy43NDc1IDE2LjI0OTkgMTQuMDgzMyAxNi41ODU3IDE0LjA4MzMgMTYuOTk5OUMxNC4wODMzIDE3LjQxNDIgMTMuNzQ3NSAxNy43NDk5IDEzLjMzMzMgMTcuNzQ5OUgxMC42ODM4QzEwLjY3MjcgMTcuNzUwMiAxMC42NjE2IDE3Ljc1MDIgMTAuNjUwNSAxNy43NDk5SDhDNy41ODU3OSAxNy43NDk5IDcuMjUgMTcuNDE0MiA3LjI1IDE2Ljk5OTlDNy4yNSAxNi41ODU3IDcuNTg1NzkgMTYuMjQ5OSA4IDE2LjI0OTlIMTAuMDkwNUwxMi4zNTcxIDcuNzQ5OTRIMTAuNjY2N0MxMC4yNTI1IDcuNzQ5OTQgOS45MTY2NyA3LjQxNDE2IDkuOTE2NjcgNi45OTk5NEM5LjkxNjY3IDYuNTg1NzMgMTAuMjUyNSA2LjI0OTk0IDEwLjY2NjcgNi4yNDk5NFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class TextItalicCircleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `text-italic-circle` icon in the boldDuotone style.
  const TextItalicCircleBoldDuotoneIcon({
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
    name: 'text-italic-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.6667 6.24994H13.3162C13.3273 6.24969 13.3384 6.24969 13.3495 6.24994H16C16.4142 6.24994 16.75 6.58573 16.75 6.99994C16.75 7.41416 16.4142 7.74994 16 7.74994H13.9095L11.6429 16.2499H13.3333C13.7475 16.2499 14.0833 16.5857 14.0833 16.9999C14.0833 17.4142 13.7475 17.7499 13.3333 17.7499H10.6838C10.6727 17.7502 10.6616 17.7502 10.6505 17.7499H8C7.58579 17.7499 7.25 17.4142 7.25 16.9999C7.25 16.5857 7.58579 16.2499 8 16.2499H10.0905L12.3571 7.74994H10.6667C10.2525 7.74994 9.91667 7.41416 9.91667 6.99994C9.91667 6.58573 10.2525 6.24994 10.6667 6.24994Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2Z" fill="currentColor"/>''',
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
