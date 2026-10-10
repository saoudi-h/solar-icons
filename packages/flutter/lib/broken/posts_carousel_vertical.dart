// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `posts-carousel-vertical` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4Ljg3NCA5QzE4Ljc4OTcgOC42MTI3NSAxOC42NDkgOC4zMjA1OSAxOC40MTQyIDguMDg1NzlDMTcuODI4NCA3LjUgMTYuODg1NiA3LjUgMTUgNy41SDlDNy4xMTQzOCA3LjUgNi4xNzE1NyA3LjUgNS41ODU3OSA4LjA4NTc5QzUgOC42NzE1NyA1IDkuNjE0MzggNSAxMS41VjEyLjVDNSAxNC4zODU2IDUgMTUuMzI4NCA1LjU4NTc5IDE1LjkxNDJDNi4xNzE1NyAxNi41IDcuMTE0MzggMTYuNSA5IDE2LjVIMTVDMTYuODg1NiAxNi41IDE3LjgyODQgMTYuNSAxOC40MTQyIDE1LjkxNDJDMTguOTQ1OCAxNS4zODI3IDE4Ljk5NSAxNC41NTcyIDE4Ljk5OTUgMTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTkgMlYyLjVDMTkgMy44ODA3MSAxNy44ODA3IDUgMTYuNSA1SDcuNUM2LjExOTI5IDUgNSAzLjg4MDcxIDUgMi41VjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTkgMjJWMjEuNUMxOSAyMC4xMTkzIDE3Ljg4MDcgMTkgMTYuNSAxOUg3LjVDNi4xMTkyOSAxOSA1IDIwLjExOTMgNSAyMS41VjIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PostsCarouselVerticalBrokenIcon extends StatelessWidget {
  /// Creates the `posts-carousel-vertical` icon in the broken style.
  const PostsCarouselVerticalBrokenIcon({
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
    name: 'posts-carousel-vertical',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M18.874 9C18.7897 8.61275 18.649 8.32059 18.4142 8.08579C17.8284 7.5 16.8856 7.5 15 7.5H9C7.11438 7.5 6.17157 7.5 5.58579 8.08579C5 8.67157 5 9.61438 5 11.5V12.5C5 14.3856 5 15.3284 5.58579 15.9142C6.17157 16.5 7.11438 16.5 9 16.5H15C16.8856 16.5 17.8284 16.5 18.4142 15.9142C18.9458 15.3827 18.995 14.5572 18.9995 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 2V2.5C19 3.88071 17.8807 5 16.5 5H7.5C6.11929 5 5 3.88071 5 2.5V2" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 22V21.5C19 20.1193 17.8807 19 16.5 19H7.5C6.11929 19 5 20.1193 5 21.5V22" stroke="currentColor" stroke-linecap="round"/>''',
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
