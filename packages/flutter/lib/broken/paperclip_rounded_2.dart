// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `paperclip-rounded-2` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE5LjU2NDYgMTYuMTI5OUMyMi44MTE4IDEyLjg5NzUgMjIuODExOCA3LjY1NjcgMTkuNTY0NiA0LjQyNDNDMTYuMzE3NSAxLjE5MTkgMTEuMDUyOCAxLjE5MTkgNy44MDU2MyA0LjQyNDNNMTUuODg5OSAxOS43ODc4QzE0LjI2NjQgMjEuNDA0IDExLjYzNCAyMS40MDQgMTAuMDEwNCAxOS43ODc4QzguMzg2ODcgMTguMTcxNiA4LjM4Njg3IDE1LjU1MTMgMTAuMDEwNCAxMy45MzUxTDEyLjk1MDIgMTEuMDA4N000LjEzMDk1IDguMDgyMjlDMS4yODk2OCAxMC45MTA2IDEuMjg5NjggMTUuNDk2MyA0LjEzMDk1IDE4LjMyNDciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PaperclipRounded2BrokenIcon extends StatelessWidget {
  /// Creates the `paperclip-rounded-2` icon in the broken style.
  const PaperclipRounded2BrokenIcon({
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
    name: 'paperclip-rounded-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M19.5646 16.1299C22.8118 12.8975 22.8118 7.6567 19.5646 4.4243C16.3175 1.1919 11.0528 1.1919 7.80563 4.4243M15.8899 19.7878C14.2664 21.404 11.634 21.404 10.0104 19.7878C8.38687 18.1716 8.38687 15.5513 10.0104 13.9351L12.9502 11.0087M4.13095 8.08229C1.28968 10.9106 1.28968 15.4963 4.13095 18.3247" stroke="currentColor" stroke-linecap="round"/>''',
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
