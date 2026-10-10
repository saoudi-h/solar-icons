// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `paperclip` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTcuOTE3NSAxNy44MDY4TDE1LjgwODQgMTAuMjUzNUMxNi43NTU4IDkuMzQ2NjggMTYuNzU1OCA3Ljg3NjM3IDE1LjgwODQgNi45Njk1MUMxNC44NjEgNi4wNjI2NSAxMy4zMjUgNi4wNjI2NSAxMi4zNzc2IDYuOTY5NTFMNC41NDM4NyAxNC40NjgxQzIuNzQzODIgMTYuMTkxMSAyLjc0MzgyIDE4Ljk4NDcgNC41NDM4NyAyMC43MDc3QzYuMzQzOTEgMjIuNDMwOCA5LjI2MjM3IDIyLjQzMDggMTEuMDYyNCAyMC43MDc3TDE5LjAxMDUgMTMuMDk5N0MyMS42NjMyIDEwLjU2MDUgMjEuNjYzMiA2LjQ0MzYyIDE5LjAxMDUgMy45MDQ0MUMxNi4zNTc4IDEuMzY1MiAxMi4wNTY5IDEuMzY1MiA5LjQwNDE5IDMuOTA0NDFMMyAxMC4wMzQ2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PaperclipLinearIcon extends StatelessWidget {
  /// Creates the `paperclip` icon in the linear style.
  const PaperclipLinearIcon({
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
    name: 'paperclip',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M7.9175 17.8068L15.8084 10.2535C16.7558 9.34668 16.7558 7.87637 15.8084 6.96951C14.861 6.06265 13.325 6.06265 12.3776 6.96951L4.54387 14.4681C2.74382 16.1911 2.74382 18.9847 4.54387 20.7077C6.34391 22.4308 9.26237 22.4308 11.0624 20.7077L19.0105 13.0997C21.6632 10.5605 21.6632 6.44362 19.0105 3.90441C16.3578 1.3652 12.0569 1.3652 9.40419 3.90441L3 10.0346" stroke="currentColor" stroke-linecap="round"/>''',
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
