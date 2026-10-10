// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `archive-up` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDIxTDEyIDEyTTkgMTUuMzMzM0wxMiAxMkwxNSAxNS4zMzMzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTIwLjUgN1YxM0MyMC41IDE2Ljc3MTIgMjAuNSAxOC42NTY5IDE5LjMyODQgMTkuODI4NEMxOC4xNTY5IDIxIDE2LjI3MTIgMjEgMTIuNSAyMUgxMS41TTMuNSA3VjEzQzMuNSAxNi43NzEyIDMuNSAxOC42NTY5IDQuNjcxNTcgMTkuODI4NEM1LjM3NjM0IDIwLjUzMzIgNi4zMzk1IDIwLjgxNCA3LjgxNjA4IDIwLjkyNTkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgM0g0QzMuMDU3MTkgMyAyLjU4NTc5IDMgMi4yOTI4OSAzLjI5Mjg5QzIgMy41ODU3OSAyIDQuMDU3MTkgMiA1QzIgNS45NDI4MSAyIDYuNDE0MjEgMi4yOTI4OSA2LjcwNzExQzIuNTg1NzkgNyAzLjA1NzE5IDcgNCA3SDIwQzIwLjk0MjggNyAyMS40MTQyIDcgMjEuNzA3MSA2LjcwNzExQzIyIDYuNDE0MjEgMjIgNS45NDI4MSAyMiA1QzIyIDQuMDU3MTkgMjIgMy41ODU3OSAyMS43MDcxIDMuMjkyODlDMjEuNDE0MiAzIDIwLjk0MjggMyAyMCAzSDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class ArchiveUpBrokenIcon extends StatelessWidget {
  /// Creates the `archive-up` icon in the broken style.
  const ArchiveUpBrokenIcon({
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
    name: 'archive-up',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 21L12 12M9 15.3333L12 12L15 15.3333" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.5 7V13C20.5 16.7712 20.5 18.6569 19.3284 19.8284C18.1569 21 16.2712 21 12.5 21H11.5M3.5 7V13C3.5 16.7712 3.5 18.6569 4.67157 19.8284C5.37634 20.5332 6.3395 20.814 7.81608 20.9259" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 3H4C3.05719 3 2.58579 3 2.29289 3.29289C2 3.58579 2 4.05719 2 5C2 5.94281 2 6.41421 2.29289 6.70711C2.58579 7 3.05719 7 4 7H20C20.9428 7 21.4142 7 21.7071 6.70711C22 6.41421 22 5.94281 22 5C22 4.05719 22 3.58579 21.7071 3.29289C21.4142 3 20.9428 3 20 3H16" stroke="currentColor" stroke-linecap="round"/>''',
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
