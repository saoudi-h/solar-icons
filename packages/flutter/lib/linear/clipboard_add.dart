// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNiA0QzE4LjE3NSA0LjAxMjExIDE5LjM1MjkgNC4xMDg1NiAyMC4xMjEzIDQuODc2OTRDMjEgNS43NTU2MiAyMSA3LjE2OTgzIDIxIDkuOTk4MjZWMTUuOTk4M0MyMSAxOC44MjY3IDIxIDIwLjI0MDkgMjAuMTIxMyAyMS4xMTk2QzE5LjI0MjYgMjEuOTk4MyAxNy44Mjg0IDIxLjk5ODMgMTUgMjEuOTk4M0g5QzYuMTcxNTcgMjEuOTk4MyA0Ljc1NzM2IDIxLjk5ODMgMy44Nzg2OCAyMS4xMTk2QzMgMjAuMjQwOSAzIDE4LjgyNjcgMyAxNS45OTgzVjkuOTk4MjZDMyA3LjE2OTgzIDMgNS43NTU2MiAzLjg3ODY4IDQuODc2OTRDNC42NDcwNiA0LjEwODU2IDUuODI0OTcgNC4wMTIxMSA4IDQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOCAzLjVDOCAyLjY3MTU3IDguNjcxNTcgMiA5LjUgMkgxNC41QzE1LjMyODQgMiAxNiAyLjY3MTU3IDE2IDMuNVY0LjVDMTYgNS4zMjg0MyAxNS4zMjg0IDYgMTQuNSA2SDkuNUM4LjY3MTU3IDYgOCA1LjMyODQzIDggNC41VjMuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUgMTNMMTIgMTNNMTIgMTNMOSAxM00xMiAxM0wxMiAxME0xMiAxM0wxMiAxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class ClipboardAddLinearIcon extends StatelessWidget {
  /// Creates the `clipboard-add` icon in the linear style.
  const ClipboardAddLinearIcon({
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
    name: 'clipboard-add',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M16 4C18.175 4.01211 19.3529 4.10856 20.1213 4.87694C21 5.75562 21 7.16983 21 9.99826V15.9983C21 18.8267 21 20.2409 20.1213 21.1196C19.2426 21.9983 17.8284 21.9983 15 21.9983H9C6.17157 21.9983 4.75736 21.9983 3.87868 21.1196C3 20.2409 3 18.8267 3 15.9983V9.99826C3 7.16983 3 5.75562 3.87868 4.87694C4.64706 4.10856 5.82497 4.01211 8 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 3.5C8 2.67157 8.67157 2 9.5 2H14.5C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 13L12 13M12 13L9 13M12 13L12 10M12 13L12 16" stroke="currentColor" stroke-linecap="round"/>''',
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
