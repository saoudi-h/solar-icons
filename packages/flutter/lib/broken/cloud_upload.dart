// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cloud-upload` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDE2VjIyTTEwIDE4TDEyIDE2TDE0IDE4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTIyIDEzLjM1MjlDMjIgMTUuNjk1OCAyMC41NTYyIDE3LjcwNTUgMTguNSAxOC41NjA0TTE0LjM4MSA4LjAyNzIxQzE0Ljk3NjcgNy44MTkxMSAxNS42MTc4IDcuNzA1ODggMTYuMjg1NyA3LjcwNTg4QzE2Ljk0MDQgNy43MDU4OCAxNy41NjkzIDcuODE0NjggMTguMTU1MSA4LjAxNDk4TTguNjY2NjcgMTEuMjQyNkM4LjIwNTI4IDEwLjkzNzQgNy42ODA1OSAxMC43MTg0IDcuMTE2MTYgMTAuNjA4OUM2Ljg0NzUgMTAuNTU2NyA2LjU2OTgzIDEwLjUyOTQgNi4yODU3MSAxMC41Mjk0QzMuOTE4NzggMTAuNTI5NCAyIDEyLjQyNTYgMiAxNC43NjQ3QzIgMTYuNjYxMSAzLjI2MTI0IDE4LjI2NjQgNSAxOC44MDYxTTcuMTE2MTYgMTAuNjA4OUM2Ljg4NzA2IDkuOTk3OCA2Ljc2MTkgOS4zMzY4NyA2Ljc2MTkgOC42NDcwNkM2Ljc2MTkgNS41MjgyNyA5LjMyMDI4IDMgMTIuNDc2MiAzQzE1LjQxNTkgMyAxNy44MzcxIDUuMTkzNzEgMTguMTU1MSA4LjAxNDk4TTE4LjE1NTEgOC4wMTQ5OEMxOS4wNDQ2IDguMzE5MTYgMTkuODM0NSA4LjgzNDM2IDIwLjQ2MzMgOS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class CloudUploadBrokenIcon extends StatelessWidget {
  /// Creates the `cloud-upload` icon in the broken style.
  const CloudUploadBrokenIcon({
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
    name: 'cloud-upload',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 16V22M10 18L12 16L14 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 13.3529C22 15.6958 20.5562 17.7055 18.5 18.5604M14.381 8.02721C14.9767 7.81911 15.6178 7.70588 16.2857 7.70588C16.9404 7.70588 17.5693 7.81468 18.1551 8.01498M8.66667 11.2426C8.20528 10.9374 7.68059 10.7184 7.11616 10.6089C6.8475 10.5567 6.56983 10.5294 6.28571 10.5294C3.91878 10.5294 2 12.4256 2 14.7647C2 16.6611 3.26124 18.2664 5 18.8061M7.11616 10.6089C6.88706 9.9978 6.7619 9.33687 6.7619 8.64706C6.7619 5.52827 9.32028 3 12.4762 3C15.4159 3 17.8371 5.19371 18.1551 8.01498M18.1551 8.01498C19.0446 8.31916 19.8345 8.83436 20.4633 9.5" stroke="currentColor" stroke-linecap="round"/>''',
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
