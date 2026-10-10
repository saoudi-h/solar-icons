// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `posts-carousel-horizontal` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjUgNUMxNC4zODU2IDUgMTUuMzI4NCA1IDE1LjkxNDIgNS41ODU3OUMxNi41IDYuMTcxNTcgMTYuNSA3LjExNDM4IDE2LjUgOVYxNUMxNi41IDE2Ljg4NTYgMTYuNSAxNy44Mjg0IDE1LjkxNDIgMTguNDE0MkMxNS4zMjg0IDE5IDE0LjM4NTYgMTkgMTIuNSAxOUgxMS41QzkuNjE0MzggMTkgOC42NzE1NyAxOSA4LjA4NTc5IDE4LjQxNDJDNy41IDE3LjgyODQgNy41IDE2Ljg4NTYgNy41IDE1TDcuNSA5QzcuNSA3LjExNDM4IDcuNSA2LjE3MTU3IDguMDg1NzkgNS41ODU3OUM4LjY3MTU3IDUgOS42MTQzOCA1IDExLjUgNUwxMi41IDVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjIgMTlIMjEuNUMyMC4xMTkzIDE5IDE5IDE3Ljg4MDcgMTkgMTYuNUwxOSA3LjVDMTkgNi4xMTkyOSAyMC4xMTkzIDUgMjEuNSA1TDIyIDUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0yIDE5SDIuNUMzLjg4MDcxIDE5IDUgMTcuODgwNyA1IDE2LjVMNSA3LjVDNSA2LjExOTI5IDMuODgwNzEgNSAyLjUgNUwyIDUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PostsCarouselHorizontalLineDuotoneIcon extends StatelessWidget {
  /// Creates the `posts-carousel-horizontal` icon in the lineDuotone style.
  const PostsCarouselHorizontalLineDuotoneIcon({
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
    name: 'posts-carousel-horizontal',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12.5 5C14.3856 5 15.3284 5 15.9142 5.58579C16.5 6.17157 16.5 7.11438 16.5 9V15C16.5 16.8856 16.5 17.8284 15.9142 18.4142C15.3284 19 14.3856 19 12.5 19H11.5C9.61438 19 8.67157 19 8.08579 18.4142C7.5 17.8284 7.5 16.8856 7.5 15L7.5 9C7.5 7.11438 7.5 6.17157 8.08579 5.58579C8.67157 5 9.61438 5 11.5 5L12.5 5Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 19H21.5C20.1193 19 19 17.8807 19 16.5L19 7.5C19 6.11929 20.1193 5 21.5 5L22 5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M2 19H2.5C3.88071 19 5 17.8807 5 16.5L5 7.5C5 6.11929 3.88071 5 2.5 5L2 5" stroke="currentColor" stroke-linecap="round"/>''',
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
