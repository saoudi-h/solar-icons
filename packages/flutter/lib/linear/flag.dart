// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `flag` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTUgMjJWMTRNNSAxNFY0TTUgMTRMNy40NzA2NyAxMy41MDU5QzkuMTIxMiAxMy4xNzU4IDEwLjgzMjEgMTMuMzMyOCAxMi4zOTQ5IDEzLjk1OEMxNC4wODg1IDE0LjYzNTQgMTUuOTUyNCAxNC43NjE5IDE3LjcyMiAxNC4zMTk1TDE3LjkzNjQgMTQuMjY1OUMxOC41NjE1IDE0LjEwOTYgMTkgMTMuNTQ4IDE5IDEyLjkwMzdWNS41MzY2OUMxOSA0Ljc1NjEzIDE4LjI2NjUgNC4xODMzOSAxNy41MDkyIDQuMzcyN0MxNS44NzggNC43ODA1MSAxNC4xNTk3IDQuNjYzODkgMTIuNTk4NiA0LjAzOTQzTDEyLjM5NDkgMy45NTc5N0MxMC44MzIxIDMuMzMyODQgOS4xMjEyIDMuMTc1NzYgNy40NzA2NyAzLjUwNTg3TDUgNE01IDRWMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class FlagLinearIcon extends StatelessWidget {
  /// Creates the `flag` icon in the linear style.
  const FlagLinearIcon({
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
    name: 'flag',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M5 22V14M5 14V4M5 14L7.47067 13.5059C9.1212 13.1758 10.8321 13.3328 12.3949 13.958C14.0885 14.6354 15.9524 14.7619 17.722 14.3195L17.9364 14.2659C18.5615 14.1096 19 13.548 19 12.9037V5.53669C19 4.75613 18.2665 4.18339 17.5092 4.3727C15.878 4.78051 14.1597 4.66389 12.5986 4.03943L12.3949 3.95797C10.8321 3.33284 9.1212 3.17576 7.47067 3.50587L5 4M5 4V2" stroke="currentColor" stroke-linecap="round"/>''',
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
