// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxnIG9wYWNpdHk9IjAuNSI+CjxwYXRoIGQ9Ik0xMS42NjcgMTguNjY3QzExLjY2NjkgMjAuNTA3OSAxMC4xNzM5IDIyIDguMzMzMDEgMjJDNi40OTIyNiAyMS45OTk4IDUuMDAwMDkgMjAuNTA3OCA1IDE4LjY2N0M1IDE2LjgyNjIgNi40OTIyMSAxNS4zMzQyIDguMzMzMDEgMTUuMzM0SDExLjY2N1YxOC42NjdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNC45OTkgMkMxNi44Mzk5IDIgMTguMzMyOCAzLjQ5MjIxIDE4LjMzMyA1LjMzMzAxQzE4LjMzMyA3LjE3Mzk2IDE2Ljg0IDguNjY2OTkgMTQuOTk5IDguNjY2OTlIMTEuNjY3VjE1LjMzNEg4LjMzMzAxQzYuNDkyMjYgMTUuMzMzOCA1LjAwMDA5IDEzLjg0MDggNSAxMkM1IDEwLjE1OTIgNi40OTIyMSA4LjY2NzE3IDguMzMzMDEgOC42NjY5OUM2LjQ5MjIxIDguNjY2ODIgNSA3LjE3Mzg1IDUgNS4zMzMwMUM1LjAwMDE4IDMuNDkyMzIgNi40OTIzMiAyLjAwMDE4IDguMzMzMDEgMkgxNC45OTlaIiBmaWxsPSIjMUMyNzRDIi8+CjwvZz4KPHBhdGggZD0iTTE4LjMzMjcgMTEuOTk5OEMxOC4zMzI3IDEzLjg0MDggMTYuODQwMyAxNS4zMzMyIDE0Ljk5OTMgMTUuMzMzMkMxMy4xNTg0IDE1LjMzMzIgMTEuNjY2IDEzLjg0MDggMTEuNjY2IDExLjk5OThDMTEuNjY2IDEwLjE1ODkgMTMuMTU4NCA4LjY2NjUgMTQuOTk5MyA4LjY2NjVDMTYuODQwMyA4LjY2NjUgMTguMzMyNyAxMC4xNTg5IDE4LjMzMjcgMTEuOTk5OFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class FigmaBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `figma` icon in the boldDuotone style.
  const FigmaBoldDuotoneIcon({
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
    name: 'figma',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M18.3327 11.9998C18.3327 13.8408 16.8403 15.3332 14.9993 15.3332C13.1584 15.3332 11.666 13.8408 11.666 11.9998C11.666 10.1589 13.1584 8.6665 14.9993 8.6665C16.8403 8.6665 18.3327 10.1589 18.3327 11.9998Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M11.667 18.667C11.6669 20.5079 10.1739 22 8.33301 22C6.49226 21.9998 5.00009 20.5078 5 18.667C5 16.8262 6.49221 15.3342 8.33301 15.334H11.667V18.667Z" fill="currentColor"/>
<path d="M14.999 2C16.8399 2 18.3328 3.49221 18.333 5.33301C18.333 7.17396 16.84 8.66699 14.999 8.66699H11.667V15.334H8.33301C6.49226 15.3338 5.00009 13.8408 5 12C5 10.1592 6.49221 8.66717 8.33301 8.66699C6.49221 8.66682 5 7.17385 5 5.33301C5.00018 3.49232 6.49232 2.00018 8.33301 2H14.999Z" fill="currentColor"/>
</g>''',
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
