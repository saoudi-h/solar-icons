// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMCAyMC4yNUMyMC40MTQyIDIwLjI1IDIwLjc1IDIwLjU4NTggMjAuNzUgMjFDMjAuNzUgMjEuNDE0MiAyMC40MTQyIDIxLjc1IDIwIDIxLjc1SDRDMy41ODU3OSAyMS43NSAzLjI1IDIxLjQxNDIgMy4yNSAyMUMzLjI1IDIwLjU4NTggMy41ODU3OSAyMC4yNSA0IDIwLjI1SDIwWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIgMi4yNUMxMi40MTQyIDIuMjUgMTIuNzUgMi41ODU3OSAxMi43NSAzVjE0LjA2ODRMMTUuNDQ2MyAxMS4xMTkxQzE1LjcyNTcgMTAuODEzNSAxNi4yMDAxIDEwLjc5MiAxNi41MDU5IDExLjA3MTNDMTYuODExNSAxMS4zNTA3IDE2LjgzMyAxMS44MjUyIDE2LjU1MzcgMTIuMTMwOUwxMi41NTM3IDE2LjUwNTlDMTIuNDExNiAxNi42NjEyIDEyLjIxMDUgMTYuNzUgMTIgMTYuNzVDMTEuNzg5NSAxNi43NSAxMS41ODg0IDE2LjY2MTIgMTEuNDQ2MyAxNi41MDU5TDcuNDQ2MjkgMTIuMTMwOUM3LjE2NzA2IDExLjgyNTIgNy4xODg1OCAxMS4zNTA3IDcuNDk0MTQgMTEuMDcxM0M3Ljc5OTgzIDEwLjc5MiA4LjI3NDI3IDEwLjgxMzYgOC41NTM3MSAxMS4xMTkxTDExLjI1IDE0LjA2ODRWM0MxMS4yNSAyLjU4NTgyIDExLjU4NTggMi4yNTAwNSAxMiAyLjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowDownToLineBoldIcon extends StatelessWidget {
  /// Creates the `arrow-down-to-line` icon in the bold style.
  const ArrowDownToLineBoldIcon({
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
    name: 'arrow-down-to-line',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M20 20.25C20.4142 20.25 20.75 20.5858 20.75 21C20.75 21.4142 20.4142 21.75 20 21.75H4C3.58579 21.75 3.25 21.4142 3.25 21C3.25 20.5858 3.58579 20.25 4 20.25H20Z" fill="currentColor"/>
<path d="M12 2.25C12.4142 2.25 12.75 2.58579 12.75 3V14.0684L15.4463 11.1191C15.7257 10.8135 16.2001 10.792 16.5059 11.0713C16.8115 11.3507 16.833 11.8252 16.5537 12.1309L12.5537 16.5059C12.4116 16.6612 12.2105 16.75 12 16.75C11.7895 16.75 11.5884 16.6612 11.4463 16.5059L7.44629 12.1309C7.16706 11.8252 7.18858 11.3507 7.49414 11.0713C7.79983 10.792 8.27427 10.8136 8.55371 11.1191L11.25 14.0684V3C11.25 2.58582 11.5858 2.25005 12 2.25Z" fill="currentColor"/>''',
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
