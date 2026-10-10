// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `clouds` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTYuMjg1NyAxOEMxOS40NDE2IDE4IDIyIDE1LjQ3MTcgMjIgMTIuMzUyOUMyMiA5Ljg4MTEzIDIwLjM5MyA3Ljc4MDI0IDE4LjE1NTEgNy4wMTQ5OEMxNy44MzcxIDQuMTkzNzEgMTUuNDE1OSAyIDEyLjQ3NjIgMkM5LjMyMDI4IDIgNi43NjE5IDQuNTI4MjcgNi43NjE5IDcuNjQ3MDZDNi43NjE5IDguMzM2ODcgNi44ODcwNiA4Ljk5NzggNy4xMTYxNiA5LjYwODg3QzYuODQ3NSA5LjU1NjczIDYuNTY5ODMgOS41Mjk0MSA2LjI4NTcxIDkuNTI5NDFDMy45MTg3OCA5LjUyOTQxIDIgMTEuNDI1NiAyIDEzLjc2NDdDMiAxNi4xMDM4IDMuOTE4NzggMTggNi4yODU3MSAxOEgxNi4yODU3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTguMjg1NyAyMkMyMC4zMzcxIDIyIDIyIDIwLjQxOTggMjIgMTguNDcwNkMyMiAxNi45MjU3IDIwLjk1NTQgMTUuNjEyNiAxOS41MDA4IDE1LjEzNDRDMTkuMjk0MSAxMy4zNzExIDE3LjcyMDMgMTIgMTUuODA5NSAxMkMxMy43NTgyIDEyIDEyLjA5NTIgMTMuNTgwMiAxMi4wOTUyIDE1LjUyOTRDMTIuMDk1MiAxNS45NjA1IDEyLjE3NjYgMTYuMzczNiAxMi4zMjU1IDE2Ljc1NTVDMTIuMTUwOSAxNi43MjMgMTEuOTcwNCAxNi43MDU5IDExLjc4NTcgMTYuNzA1OUMxMC4yNDcyIDE2LjcwNTkgOSAxNy44OTEgOSAxOS4zNTI5QzkgMjAuODE0OSAxMC4yNDcyIDIyIDExLjc4NTcgMjJIMTguMjg1N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class CloudsBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `clouds` icon in the boldDuotone style.
  const CloudsBoldDuotoneIcon({
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
    name: 'clouds',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M18.2857 22C20.3371 22 22 20.4198 22 18.4706C22 16.9257 20.9554 15.6126 19.5008 15.1344C19.2941 13.3711 17.7203 12 15.8095 12C13.7582 12 12.0952 13.5802 12.0952 15.5294C12.0952 15.9605 12.1766 16.3736 12.3255 16.7555C12.1509 16.723 11.9704 16.7059 11.7857 16.7059C10.2472 16.7059 9 17.891 9 19.3529C9 20.8149 10.2472 22 11.7857 22H18.2857Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M16.2857 18C19.4416 18 22 15.4717 22 12.3529C22 9.88113 20.393 7.78024 18.1551 7.01498C17.8371 4.19371 15.4159 2 12.4762 2C9.32028 2 6.7619 4.52827 6.7619 7.64706C6.7619 8.33687 6.88706 8.9978 7.11616 9.60887C6.8475 9.55673 6.56983 9.52941 6.28571 9.52941C3.91878 9.52941 2 11.4256 2 13.7647C2 16.1038 3.91878 18 6.28571 18H16.2857Z" fill="currentColor"/>''',
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
