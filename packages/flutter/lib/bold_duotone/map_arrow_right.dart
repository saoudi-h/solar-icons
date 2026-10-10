// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNC4xNDI3IDE1Ljk2MjFDMTQuMjcwMSAxNi4yMTY5IDE0LjE1OTMgMTYuNTI2NCAxMy44OTkxIDE2LjY0MjRMNC40OTc0NiAyMC44MzVDMy4wMDE2MyAyMS41MDIxIDEuNDUwMDcgMjAuMDIwOSAyLjE5MDk5IDE4LjYzMzFMNS4zNDMwMiAxMi43Mjk0QzUuNTg4MTggMTIuMjcwMiA1LjU4ODE4IDExLjcyOTggNS4zNDMwMiAxMS4yNzA2TDIuMTkwOTkgNS4zNjY4OUMxLjQ1MDA2IDMuOTc5MTQgMy4wMDE2MyAyLjQ5Nzg5IDQuNDk3NDYgMy4xNjQ5Nkw4LjAyMTc4IDQuNzM2NjJDOC40NDQ2NSA0LjkyNTIgOC43ODg5OSA1LjI1NDY2IDguOTk2MDYgNS42Njg4TDE0LjE0MjcgMTUuOTYyMVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTUuNTMzMiAxNS4zOTA0QzE1LjY1MjkgMTUuNjI5NyAxNS45Mzk3IDE1LjczMjQgMTYuMTg0MSAxNS42MjM1TDIxLjAwNjYgMTMuNDcyOEMyMi4zMzA0IDEyLjg4MjUgMjIuMzMwNCAxMS4xMTgxIDIxLjAwNjYgMTAuNTI3OEwxMi4xMDg5IDYuNTU5ODNDMTEuNjgwMiA2LjM2ODY0IDExLjI0ODEgNi44MjAyMyAxMS40NTggNy4yNDAwOEwxNS41MzMyIDE1LjM5MDRaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MapArrowRightBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `map-arrow-right` icon in the boldDuotone style.
  const MapArrowRightBoldDuotoneIcon({
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
    name: 'map-arrow-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.1427 15.9621C14.2701 16.2169 14.1593 16.5264 13.8991 16.6424L4.49746 20.835C3.00163 21.5021 1.45007 20.0209 2.19099 18.6331L5.34302 12.7294C5.58818 12.2702 5.58818 11.7298 5.34302 11.2706L2.19099 5.36689C1.45006 3.97914 3.00163 2.49789 4.49746 3.16496L8.02178 4.73662C8.44465 4.9252 8.78899 5.25466 8.99606 5.6688L14.1427 15.9621Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.5332 15.3904C15.6529 15.6297 15.9397 15.7324 16.1841 15.6235L21.0066 13.4728C22.3304 12.8825 22.3304 11.1181 21.0066 10.5278L12.1089 6.55983C11.6802 6.36864 11.2481 6.82023 11.458 7.24008L15.5332 15.3904Z" fill="currentColor"/>''',
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
