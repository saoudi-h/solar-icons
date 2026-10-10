// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-arrow-right` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0LjE0MjcgMTUuOTYyMUMxNC4yNzAxIDE2LjIxNjkgMTQuMTU5MyAxNi41MjY0IDEzLjg5OTEgMTYuNjQyNEw0LjQ5NzQ2IDIwLjgzNUMzLjAwMTYzIDIxLjUwMjEgMS40NTAwNyAyMC4wMjA5IDIuMTkwOTkgMTguNjMzMUw1LjM0MzAyIDEyLjcyOTRDNS41ODgxOCAxMi4yNzAyIDUuNTg4MTggMTEuNzI5OCA1LjM0MzAyIDExLjI3MDZMMi4xOTA5OSA1LjM2Njg5QzEuNDUwMDYgMy45NzkxNCAzLjAwMTYzIDIuNDk3ODkgNC40OTc0NiAzLjE2NDk2TDguMDIxNzggNC43MzY2MkM4LjQ0NDY1IDQuOTI1MiA4Ljc4ODk5IDUuMjU0NjYgOC45OTYwNiA1LjY2ODhMMTQuMTQyNyAxNS45NjIxWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xNS41MzMyIDE1LjM5MDRDMTUuNjUyOSAxNS42Mjk3IDE1LjkzOTcgMTUuNzMyNCAxNi4xODQxIDE1LjYyMzVMMjEuMDA2NiAxMy40NzI4QzIyLjMzMDQgMTIuODgyNSAyMi4zMzA0IDExLjExODEgMjEuMDA2NiAxMC41Mjc4TDEyLjEwODkgNi41NTk4M0MxMS42ODAyIDYuMzY4NjQgMTEuMjQ4MSA2LjgyMDIzIDExLjQ1OCA3LjI0MDA4TDE1LjUzMzIgMTUuMzkwNFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
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
