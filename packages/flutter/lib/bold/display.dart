// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `display` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgOC43NTk5NEMyIDYuMDQ0NjggMiA0LjY4NzA1IDIuODc4NjggMy44NDM1MkMzLjc1NzM2IDMgNS4xNzE1NyAzIDggM0gxNkMxOC44Mjg0IDMgMjAuMjQyNiAzIDIxLjEyMTMgMy44NDM1MkMyMiA0LjY4NzA1IDIyIDYuMDQ0NjggMjIgOC43NTk5NFY5LjcxOTkzQzIyIDEyLjQzNTIgMjIgMTMuNzkyOCAyMS4xMjEzIDE0LjYzNjNDMjAuMjQyNiAxNS40Nzk5IDE4LjgyODQgMTUuNDc5OSAxNiAxNS40Nzk5SDEyLjc1VjE3Ljg0MDlMMTguMjM3MiAxOS41OTY4QzE4LjYzMDEgMTkuNzIyNSAxOC44NDI1IDIwLjEzMDMgMTguNzExNSAyMC41MDc1QzE4LjU4MDUgMjAuODg0NyAxOC4xNTU4IDIxLjA4ODYgMTcuNzYyOCAyMC45NjI5TDEyIDE5LjExODhMNi4yMzcxNyAyMC45NjI5QzUuODQ0MjEgMjEuMDg4NiA1LjQxOTQ3IDIwLjg4NDcgNS4yODg0OSAyMC41MDc1QzUuMTU3NSAyMC4xMzAzIDUuMzY5ODcgMTkuNzIyNSA1Ljc2MjgzIDE5LjU5NjhMMTEuMjUgMTcuODQwOVYxNS40Nzk5SDhDNS4xNzE1NyAxNS40Nzk5IDMuNzU3MzYgMTUuNDc5OSAyLjg3ODY4IDE0LjYzNjNDMiAxMy43OTI4IDIgMTIuNDM1MiAyIDkuNzE5OTNWOC43NTk5NFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class DisplayBoldIcon extends StatelessWidget {
  /// Creates the `display` icon in the bold style.
  const DisplayBoldIcon({
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
    name: 'display',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M2 8.75994C2 6.04468 2 4.68705 2.87868 3.84352C3.75736 3 5.17157 3 8 3H16C18.8284 3 20.2426 3 21.1213 3.84352C22 4.68705 22 6.04468 22 8.75994V9.71993C22 12.4352 22 13.7928 21.1213 14.6363C20.2426 15.4799 18.8284 15.4799 16 15.4799H12.75V17.8409L18.2372 19.5968C18.6301 19.7225 18.8425 20.1303 18.7115 20.5075C18.5805 20.8847 18.1558 21.0886 17.7628 20.9629L12 19.1188L6.23717 20.9629C5.84421 21.0886 5.41947 20.8847 5.28849 20.5075C5.1575 20.1303 5.36987 19.7225 5.76283 19.5968L11.25 17.8409V15.4799H8C5.17157 15.4799 3.75736 15.4799 2.87868 14.6363C2 13.7928 2 12.4352 2 9.71993V8.75994Z" fill="currentColor"/>''',
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
