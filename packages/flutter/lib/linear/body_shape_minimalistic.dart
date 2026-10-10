// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `body-shape-minimalistic` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwIDJDMjAgMiAxOCA2LjY4ODM5IDE4IDEwLjU3MTRDMTggMTEuODE0NyAxOC40MjYgMTIuODU1IDE5IDEzLjg5MTJDMTkuNjYwNiAxNS4wODM2IDIwLjUxNzEgMTYuMjcwNCAyMS4xNDU3IDE3Ljc1NDNDMjEuNjQ0NiAxOC45MzIgMjIgMjAuMjk2OCAyMiAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik00IDJDNCAyIDYgNi42ODgzOSA2IDEwLjU3MTRDNiAxMS44MTQ3IDUuNTczOTggMTIuODU1IDUuMDAwMDEgMTMuODkxMkM0LjMzOTQ1IDE1LjA4MzYgMy40ODI5MSAxNi4yNzA0IDIuODU0MjYgMTcuNzU0M0MyLjM1NTM3IDE4LjkzMiAyIDIwLjI5NjggMiAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik02IDEzSDE4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDIyQzEyLjUgMjAuNSAxNSAxNy41IDIxIDE3LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMjJDMTEuNSAyMC41IDkgMTcuNSAzIDE3LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BodyShapeMinimalisticLinearIcon extends StatelessWidget {
  /// Creates the `body-shape-minimalistic` icon in the linear style.
  const BodyShapeMinimalisticLinearIcon({
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
    name: 'body-shape-minimalistic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M20 2C20 2 18 6.68839 18 10.5714C18 11.8147 18.426 12.855 19 13.8912C19.6606 15.0836 20.5171 16.2704 21.1457 17.7543C21.6446 18.932 22 20.2968 22 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4 2C4 2 6 6.68839 6 10.5714C6 11.8147 5.57398 12.855 5.00001 13.8912C4.33945 15.0836 3.48291 16.2704 2.85426 17.7543C2.35537 18.932 2 20.2968 2 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6 13H18" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22C12.5 20.5 15 17.5 21 17.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22C11.5 20.5 9 17.5 3 17.5" stroke="currentColor" stroke-linecap="round"/>''',
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
