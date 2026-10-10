// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `alt-arrow-left` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTExLjU5NTYgOC4zMDI3M0w4LjE2NDg1IDExLjYyOTZDNy45NDUwNSAxMS44NDI4IDcuOTQ1MDUgMTIuMTU3MyA4LjE2NDg1IDEyLjM3MDRMMTQuNzk1MyAxOC44MDAxQzE1LjIwOTEgMTkuMjAxMyAxNiAxOC45NTgxIDE2IDE4LjQyOTdWMTIuNzA3MUwxMS41OTU2IDguMzAyNzNaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE1Ljk5OTkgMTEuMjkyOUwxNS45OTk5IDUuNTcwM0MxNS45OTk5IDUuMDQxODkgMTUuMjA4OSA0Ljc5ODY5IDE0Ljc5NTIgNS4xOTk5TDEyLjMxMzUgNy42MDY0OEwxNS45OTk5IDExLjI5MjlaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class AltArrowLeftBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `alt-arrow-left` icon in the boldDuotone style.
  const AltArrowLeftBoldDuotoneIcon({
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
    name: 'alt-arrow-left',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11.5956 8.30273L8.16485 11.6296C7.94505 11.8428 7.94505 12.1573 8.16485 12.3704L14.7953 18.8001C15.2091 19.2013 16 18.9581 16 18.4297V12.7071L11.5956 8.30273Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.9999 11.2929L15.9999 5.5703C15.9999 5.04189 15.2089 4.79869 14.7952 5.1999L12.3135 7.60648L15.9999 11.2929Z" fill="currentColor"/>''',
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
