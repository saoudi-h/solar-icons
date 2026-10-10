// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `pie-chart-3` icon in the linear style.
class PieChart3LinearIcon extends StatelessWidget {
  /// Creates the `pie-chart-3` icon in the linear style.
  const PieChart3LinearIcon({
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
    name: 'pie-chart-3',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M6.4443 3.6853C6.97115 3.33327 7.52766 3.03383 8.10577 2.7894C9.50868 2.19627 10.2101 1.8997 11.1051 2.49296C12 3.08623 12 4.05748 12 6V8C12 9.88561 12 10.8284 12.5858 11.4142C13.1716 12 14.1144 12 16 12H18C19.9425 12 20.9138 12 21.507 12.8949C22.1003 13.7899 21.8037 14.4913 21.2106 15.8942C20.9662 16.4723 20.6667 17.0288 20.3147 17.5557C19.2159 19.2002 17.6541 20.4819 15.8268 21.2388C13.9996 21.9957 11.9889 22.1937 10.0491 21.8078C8.10929 21.422 6.32746 20.4696 4.92894 19.0711C3.53041 17.6725 2.578 15.8907 2.19215 13.9509C1.8063 12.0111 2.00433 10.0004 2.76121 8.17316C3.51809 6.3459 4.79981 4.78412 6.4443 3.6853Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 2.31506C18.014 3.21951 20.7805 5.986 21.685 9.50002" stroke="currentColor" stroke-linecap="round"/>''',
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
