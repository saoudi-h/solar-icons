// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05Ljg0NDY1IDIyLjAzOUM2LjEwNTUxIDIyLjAzOSA1LjQ5OTgxIDE4LjgzMyA1LjQ4NjY0IDE3LjI0MTdDNS40ODY2NCAxNS4wNDc1IDMuOTQ1NDMgMTMuNjY4NCAyLjQ5NTEzIDEyLjc0NzlDMS44NDc2NSAxMi40MTExIDEuODM5NTYgMTEuNjc0MyAyLjQ0NTI1IDExLjI4OTVDMy4zMTg1MiAxMC43MzQ2IDQuMjI0NzUgMTAuMDEzMyA0LjgwNzQzIDkuMDQ3NjEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNNS42NzUwNSA1LjAyODkyQzYuMDkyMTUgMy41NTIwNCA3LjE3MzMzIDIgOS43OTI0OCAyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTE0LjIwNzYgMkMxNy45NDU2IDIgMTguNTUxIDUuMTYxMjIgMTguNTY0MiA2Ljc1MzU3QzE4LjU2NDIgOC45NDkyOSAyMC4xMDQ5IDEwLjMyOTMgMjEuNTU0NyAxMS4yNTA1QzIyLjE2MDQgMTEuNjM1MyAyMi4xNTI0IDEyLjM3MjEgMjEuNTA0OSAxMi43MDg5QzIwLjA1NDYgMTMuNjI5NCAxOC41MTM0IDE1LjAwODUgMTguNTEzNCAxNy4yMDI3QzE4LjUwMDIgMTguNzk0IDE3Ljg5NDUgMjIgMTQuMTU1MyAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class BracesBrokenIcon extends StatelessWidget {
  /// Creates the `braces` icon in the broken style.
  const BracesBrokenIcon({
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
    name: 'braces',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9.84465 22.039C6.10551 22.039 5.49981 18.833 5.48664 17.2417C5.48664 15.0475 3.94543 13.6684 2.49513 12.7479C1.84765 12.4111 1.83956 11.6743 2.44525 11.2895C3.31852 10.7346 4.22475 10.0133 4.80743 9.04761" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.67505 5.02892C6.09215 3.55204 7.17333 2 9.79248 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.2076 2C17.9456 2 18.551 5.16122 18.5642 6.75357C18.5642 8.94929 20.1049 10.3293 21.5547 11.2505C22.1604 11.6353 22.1524 12.3721 21.5049 12.7089C20.0546 13.6294 18.5134 15.0085 18.5134 17.2027C18.5002 18.794 17.8945 22 14.1553 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
