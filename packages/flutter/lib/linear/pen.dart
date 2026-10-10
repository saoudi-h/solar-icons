// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `pen` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0LjM2MDEgNC4wNzg2NkwxNS4yODY5IDMuMTUxNzhDMTYuODIyNiAxLjYxNjA3IDE5LjMxMjUgMS42MTYwNyAyMC44NDgyIDMuMTUxNzhDMjIuMzgzOSA0LjY4NzQ4IDIyLjM4MzkgNy4xNzczNSAyMC44NDgyIDguNzEzMDZMMTkuOTIxMyA5LjYzOTkzTTE0LjM2MDEgNC4wNzg2NkMxNC4zNjAxIDQuMDc4NjYgMTQuNDc1OSA2LjA0ODI4IDE2LjIxMzggNy43ODYxOEMxNy45NTE3IDkuNTI0MDcgMTkuOTIxMyA5LjYzOTkzIDE5LjkyMTMgOS42Mzk5M00xOS45MjEzIDkuNjM5OTNMMTEuNDAwMSAxOC4xNjEyQzEwLjgyMjkgMTguNzM4MyAxMC41MzQ0IDE5LjAyNjkgMTAuMjE2MiAxOS4yNzUxQzkuODQwODIgMTkuNTY3OSA5LjQzNDY5IDE5LjgxODkgOS4wMDQ5OCAyMC4wMjM3QzguNjQwNyAyMC4xOTczIDguMjUzNTIgMjAuMzI2MyA3LjQ3OTE4IDIwLjU4NDRMNC4xOTc5MiAyMS42NzgyTDMuMzk1ODQgMjEuOTQ1NkMzLjAxNDc4IDIyLjA3MjYgMi41OTQ2NiAyMS45NzM0IDIuMzEwNjMgMjEuNjg5NEMyLjAyNjYgMjEuNDA1MyAxLjkyNzQzIDIwLjk4NTIgMi4wNTQ0NSAyMC42MDQyTDIuMzIxODEgMTkuODAyMUwzLjQxNTU2IDE2LjUyMDhDMy42NzM2OCAxNS43NDY1IDMuODAyNzMgMTUuMzU5MyAzLjk3NjM0IDE0Ljk5NUM0LjE4MTE0IDE0LjU2NTMgNC40MzIxMyAxNC4xNTkyIDQuNzI0OSAxMy43ODM4QzQuOTczMDggMTMuNDY1NiA1LjI2MTY2IDEzLjE3NzEgNS44Mzg4MiAxMi41OTk5TDE0LjM2MDEgNC4wNzg2Nk00LjE5NzkyIDIxLjY3ODJMMi4zMjE4MSAxOS44MDIxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PenLinearIcon extends StatelessWidget {
  /// Creates the `pen` icon in the linear style.
  const PenLinearIcon({
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
    name: 'pen',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M14.3601 4.07866L15.2869 3.15178C16.8226 1.61607 19.3125 1.61607 20.8482 3.15178C22.3839 4.68748 22.3839 7.17735 20.8482 8.71306L19.9213 9.63993M14.3601 4.07866C14.3601 4.07866 14.4759 6.04828 16.2138 7.78618C17.9517 9.52407 19.9213 9.63993 19.9213 9.63993M19.9213 9.63993L11.4001 18.1612C10.8229 18.7383 10.5344 19.0269 10.2162 19.2751C9.84082 19.5679 9.43469 19.8189 9.00498 20.0237C8.6407 20.1973 8.25352 20.3263 7.47918 20.5844L4.19792 21.6782L3.39584 21.9456C3.01478 22.0726 2.59466 21.9734 2.31063 21.6894C2.0266 21.4053 1.92743 20.9852 2.05445 20.6042L2.32181 19.8021L3.41556 16.5208C3.67368 15.7465 3.80273 15.3593 3.97634 14.995C4.18114 14.5653 4.43213 14.1592 4.7249 13.7838C4.97308 13.4656 5.26166 13.1771 5.83882 12.5999L14.3601 4.07866M4.19792 21.6782L2.32181 19.8021" stroke="currentColor" stroke-linecap="round"/>''',
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
