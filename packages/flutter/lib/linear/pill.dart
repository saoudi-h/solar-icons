// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zLjk5MDU3IDEzLjYwMTlDMS4zMzY0OCAxMC45NDc4IDEuMzM2NDggNi42NDQ2NiAzLjk5MDU3IDMuOTkwNTdDNi42NDQ2NiAxLjMzNjQ4IDEwLjk0NzggMS4zMzY0OCAxMy42MDE5IDMuOTkwNTdMMjAuMDA5NCAxMC4zOTgxQzIyLjY2MzUgMTMuMDUyMiAyMi42NjM1IDE3LjM1NTMgMjAuMDA5NCAyMC4wMDk0QzE3LjM1NTMgMjIuNjYzNSAxMy4wNTIyIDIyLjY2MzUgMTAuMzk4MSAyMC4wMDk0TDMuOTkwNTcgMTMuNjAxOVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTYuODA1NyA3LjE5NDM0QzE2LjgwNTcgNy4xOTQzNCAxNi4yNjQ5IDkuOTk5OTkgMTMuMTMyMiAxMy4xMzI3QzkuOTk5NTIgMTYuMjY1MyA3LjE5NDM0IDE2LjgwNTcgNy4xOTQzNCAxNi44MDU3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PillLinearIcon extends StatelessWidget {
  /// Creates the `pill` icon in the linear style.
  const PillLinearIcon({
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
    name: 'pill',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3.99057 13.6019C1.33648 10.9478 1.33648 6.64466 3.99057 3.99057C6.64466 1.33648 10.9478 1.33648 13.6019 3.99057L20.0094 10.3981C22.6635 13.0522 22.6635 17.3553 20.0094 20.0094C17.3553 22.6635 13.0522 22.6635 10.3981 20.0094L3.99057 13.6019Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.8057 7.19434C16.8057 7.19434 16.2649 9.99999 13.1322 13.1327C9.99952 16.2653 7.19434 16.8057 7.19434 16.8057" stroke="currentColor" stroke-linecap="round"/>''',
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
