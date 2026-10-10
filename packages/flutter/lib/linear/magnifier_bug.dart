// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `magnifier-bug` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTEuNSIgY3k9IjExLjUiIHI9IjkuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMS41IDE1LjVDOS44NDMxNSAxNS41IDguNSAxNC4xNTY5IDguNSAxMi41VjEwLjVNMTEuNSAxNS41QzEzLjE1NjkgMTUuNSAxNC41IDE0LjE1NjkgMTQuNSAxMi41VjEwLjVNMTEuNSAxNS41VjEwLjVNMTQuNSAxMC41QzE0LjUgOC44NDMxNSAxMy4xNTY5IDcuNSAxMS41IDcuNUM5Ljg0MzE1IDcuNSA4LjUgOC44NDMxNSA4LjUgMTAuNU0xNC41IDEwLjVIOC41TTE0LjU3MTUgMTEuNUgxNk03IDExLjVIOC41TTE0LjUgMTRMMTUuNSAxNC41TTguNSAxNEw3LjUgMTQuNU0xNC41IDlMMTUuNSA4LjVNOC41IDlMNy41IDguNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOC4yMTczIDE4LjIxNzhMMjEuOTk5OSAyMi4wMDA0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class MagnifierBugLinearIcon extends StatelessWidget {
  /// Creates the `magnifier-bug` icon in the linear style.
  const MagnifierBugLinearIcon({
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
    name: 'magnifier-bug',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="11.5" cy="11.5" r="9.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 15.5C9.84315 15.5 8.5 14.1569 8.5 12.5V10.5M11.5 15.5C13.1569 15.5 14.5 14.1569 14.5 12.5V10.5M11.5 15.5V10.5M14.5 10.5C14.5 8.84315 13.1569 7.5 11.5 7.5C9.84315 7.5 8.5 8.84315 8.5 10.5M14.5 10.5H8.5M14.5715 11.5H16M7 11.5H8.5M14.5 14L15.5 14.5M8.5 14L7.5 14.5M14.5 9L15.5 8.5M8.5 9L7.5 8.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.2173 18.2178L21.9999 22.0004" stroke="currentColor" stroke-linecap="round"/>''',
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
