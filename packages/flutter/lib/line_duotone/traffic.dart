// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIyIDEyQzIyIDEzLjk3NzggMjEuNDEzNSAxNS45MTEyIDIwLjMxNDcgMTcuNTU1N0MxOS4yMTU5IDE5LjIwMDIgMTcuNjU0MSAyMC40ODE5IDE1LjgyNjggMjEuMjM4OEMxMy45OTk2IDIxLjk5NTcgMTEuOTg4OSAyMi4xOTM3IDEwLjA0OTEgMjEuODA3OUM4LjEwOTI5IDIxLjQyMiA2LjMyNzQ2IDIwLjQ2OTYgNC45Mjg5MyAxOS4wNzExQzMuNTMwNDEgMTcuNjcyNSAyLjU3OCAxNS44OTA3IDIuMTkyMTUgMTMuOTUwOUMxLjgwNjI5IDEyLjAxMTEgMi4wMDQzMyAxMC4wMDA0IDIuNzYxMiA4LjE3MzE3QzMuNTE4MDggNi4zNDU5IDQuNzk5ODEgNC43ODQxMiA2LjQ0NDMgMy42ODUzQzguMDg4NzkgMi41ODY0OSAxMC4wMjIyIDIgMTIgMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNC41IDIuMzE0OTRDMTguMDE0IDMuMjE5MzkgMjAuNzgwNSA1Ljk4NTg4IDIxLjY4NSA5LjQ5OTkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class TrafficLineDuotoneIcon extends StatelessWidget {
  /// Creates the `traffic` icon in the lineDuotone style.
  const TrafficLineDuotoneIcon({
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
    name: 'traffic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14.5 2.31494C18.014 3.21939 20.7805 5.98588 21.685 9.4999" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 13.9778 21.4135 15.9112 20.3147 17.5557C19.2159 19.2002 17.6541 20.4819 15.8268 21.2388C13.9996 21.9957 11.9889 22.1937 10.0491 21.8079C8.10929 21.422 6.32746 20.4696 4.92893 19.0711C3.53041 17.6725 2.578 15.8907 2.19215 13.9509C1.80629 12.0111 2.00433 10.0004 2.7612 8.17317C3.51808 6.3459 4.79981 4.78412 6.4443 3.6853C8.08879 2.58649 10.0222 2 12 2" stroke="currentColor" stroke-linecap="round"/>''',
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
