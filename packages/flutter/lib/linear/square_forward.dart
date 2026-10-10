// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMiAxMkMyMiAxNi43MTQgMjIgMTkuMDcxMSAyMC41MzU1IDIwLjUzNTVDMTkuMDcxMSAyMiAxNi43MTQgMjIgMTIgMjJDNy4yODU5NSAyMiA0LjkyODkzIDIyIDMuNDY0NDcgMjAuNTM1NUMyIDE5LjA3MTEgMiAxNi43MTQgMiAxMkMyIDcuMjg1OTUgMiA0LjkyODkzIDMuNDY0NDcgMy40NjQ0N0M0LjkyODkzIDIgNy4yODU5NSAyIDEyIDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTYuMTU0OSAzLjQzNDE1TDE4LjUxMjIgNS40NzcxMkMyMC4xMzQ5IDYuODgzNDUgMjAuOTQ2MiA3LjU4NjYyIDIwLjk0NjIgOC40OTk4OEMyMC45NDYyIDkuNDEzMTQgMjAuMTM0OSAxMC4xMTYzIDE4LjUxMjIgMTEuNTIyNkwxNi4xNTQ5IDEzLjU2NTZDMTUuNDQxNCAxNC4xODQgMTUuMDg0NiAxNC40OTMyIDE0Ljc5MjMgMTQuMzU5N0MxNC41IDE0LjIyNjIgMTQuNSAxMy43NTQxIDE0LjUgMTIuODA5OVYxMS4yODU2QzExLjUgMTEuMjg1NiA4LjI1IDEyLjY3ODUgNyAxNC45OTk5QzcgNy41NzEzMSAxMS40NDQ0IDUuNzE0MTYgMTQuNSA1LjcxNDE2VjQuMTg5ODRDMTQuNSAzLjI0NTYyIDE0LjUgMi43NzM1MSAxNC43OTIzIDIuNjQwMDNDMTUuMDg0NiAyLjUwNjU2IDE1LjQ0MTQgMi44MTU3NSAxNi4xNTQ5IDMuNDM0MTVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class SquareForwardLinearIcon extends StatelessWidget {
  /// Creates the `square-forward` icon in the linear style.
  const SquareForwardLinearIcon({
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
    name: 'square-forward',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.1549 3.43415L18.5122 5.47712C20.1349 6.88345 20.9462 7.58662 20.9462 8.49988C20.9462 9.41314 20.1349 10.1163 18.5122 11.5226L16.1549 13.5656C15.4414 14.184 15.0846 14.4932 14.7923 14.3597C14.5 14.2262 14.5 13.7541 14.5 12.8099V11.2856C11.5 11.2856 8.25 12.6785 7 14.9999C7 7.57131 11.4444 5.71416 14.5 5.71416V4.18984C14.5 3.24562 14.5 2.77351 14.7923 2.64003C15.0846 2.50656 15.4414 2.81575 16.1549 3.43415Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
