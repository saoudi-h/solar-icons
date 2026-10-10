// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `posts-carousel-vertical` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTUgMTEuNUM1IDkuNjE0MzggNSA4LjY3MTU3IDUuNTg1NzkgOC4wODU3OUM2LjE3MTU3IDcuNSA3LjExNDM4IDcuNSA5IDcuNUgxNUMxNi44ODU2IDcuNSAxNy44Mjg0IDcuNSAxOC40MTQyIDguMDg1NzlDMTkgOC42NzE1NyAxOSA5LjYxNDM4IDE5IDExLjVWMTIuNUMxOSAxNC4zODU2IDE5IDE1LjMyODQgMTguNDE0MiAxNS45MTQyQzE3LjgyODQgMTYuNSAxNi44ODU2IDE2LjUgMTUgMTYuNUg5QzcuMTE0MzggMTYuNSA2LjE3MTU3IDE2LjUgNS41ODU3OSAxNS45MTQyQzUgMTUuMzI4NCA1IDE0LjM4NTYgNSAxMi41VjExLjVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE5IDJWMi41QzE5IDMuODgwNzEgMTcuODgwNyA1IDE2LjUgNUg3LjVDNi4xMTkyOSA1IDUgMy44ODA3MSA1IDIuNVYyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE5IDIyVjIxLjVDMTkgMjAuMTE5MyAxNy44ODA3IDE5IDE2LjUgMTlINy41QzYuMTE5MjkgMTkgNSAyMC4xMTkzIDUgMjEuNVYyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class PostsCarouselVerticalLinearIcon extends StatelessWidget {
  /// Creates the `posts-carousel-vertical` icon in the linear style.
  const PostsCarouselVerticalLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M5 11.5C5 9.61438 5 8.67157 5.58579 8.08579C6.17157 7.5 7.11438 7.5 9 7.5H15C16.8856 7.5 17.8284 7.5 18.4142 8.08579C19 8.67157 19 9.61438 19 11.5V12.5C19 14.3856 19 15.3284 18.4142 15.9142C17.8284 16.5 16.8856 16.5 15 16.5H9C7.11438 16.5 6.17157 16.5 5.58579 15.9142C5 15.3284 5 14.3856 5 12.5V11.5Z" stroke="currentColor" stroke-linecap="round"/>
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
