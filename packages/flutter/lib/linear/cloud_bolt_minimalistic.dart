// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cloud-bolt-minimalistic` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTguNjY2NjcgMTAuMjQyNkM4LjIwNTI4IDkuOTM3NCA3LjY4MDU5IDkuNzE4MzkgNy4xMTYxNiA5LjYwODg3QzYuODQ3NSA5LjU1NjczIDYuNTY5ODMgOS41Mjk0MSA2LjI4NTcxIDkuNTI5NDFDMy45MTg3OCA5LjUyOTQxIDIgMTEuNDI1NiAyIDEzLjc2NDdDMiAxNi4xMDM4IDMuOTE4NzggMTggNi4yODU3MSAxOE0xNC4zODEgNy4wMjcyMUMxNC45NzY3IDYuODE5MTEgMTUuNjE3OCA2LjcwNTg4IDE2LjI4NTcgNi43MDU4OEMxNi45NDA0IDYuNzA1ODggMTcuNTY5MyA2LjgxNDY4IDE4LjE1NTEgNy4wMTQ5OE03LjExNjE2IDkuNjA4ODdDNi44ODcwNiA4Ljk5NzggNi43NjE5IDguMzM2ODcgNi43NjE5IDcuNjQ3MDZDNi43NjE5IDQuNTI4MjcgOS4zMjAyOCAyIDEyLjQ3NjIgMkMxNS40MTU5IDIgMTcuODM3MSA0LjE5MzcxIDE4LjE1NTEgNy4wMTQ5OE0xOC4xNTUxIDcuMDE0OThDMjAuMzkzIDcuNzgwMjQgMjIgOS44ODExMyAyMiAxMi4zNTI5QzIyIDE1LjA1OTkgMjAuMDcyNiAxNy4zMjIxIDE3LjUgMTcuODcyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMCAyMi4wMDAyTDE0LjI4NTcgMTguMzA3OEgxMEwxNC4yODU3IDE0LjYxNTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class CloudBoltMinimalisticLinearIcon extends StatelessWidget {
  /// Creates the `cloud-bolt-minimalistic` icon in the linear style.
  const CloudBoltMinimalisticLinearIcon({
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
    name: 'cloud-bolt-minimalistic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8.66667 10.2426C8.20528 9.9374 7.68059 9.71839 7.11616 9.60887C6.8475 9.55673 6.56983 9.52941 6.28571 9.52941C3.91878 9.52941 2 11.4256 2 13.7647C2 16.1038 3.91878 18 6.28571 18M14.381 7.02721C14.9767 6.81911 15.6178 6.70588 16.2857 6.70588C16.9404 6.70588 17.5693 6.81468 18.1551 7.01498M7.11616 9.60887C6.88706 8.9978 6.7619 8.33687 6.7619 7.64706C6.7619 4.52827 9.32028 2 12.4762 2C15.4159 2 17.8371 4.19371 18.1551 7.01498M18.1551 7.01498C20.393 7.78024 22 9.88113 22 12.3529C22 15.0599 20.0726 17.3221 17.5 17.8722" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 22.0002L14.2857 18.3078H10L14.2857 14.6152" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
