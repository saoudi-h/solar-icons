// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `braces` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTkuODQ0NjUgMjIuMDM5QzYuMTA1NTEgMjIuMDM5IDUuNDk5ODEgMTguODMzIDUuNDg2NjQgMTcuMjQxN0M1LjQ4NjY0IDE1LjA0NzUgMy45NDU0MyAxMy42Njg0IDIuNDk1MTMgMTIuNzQ3OUMxLjg0NzY1IDEyLjQxMTEgMS44Mzk1NiAxMS42NzQzIDIuNDQ1MjUgMTEuMjg5NUMzLjMxODUyIDEwLjczNDYgNC4yMjQ3NSAxMC4wMTMzIDQuODA3NDMgOS4wNDc2MSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik01LjY3NTA1IDUuMDI4OTJDNi4wOTIxNSAzLjU1MjA0IDcuMTczMzMgMiA5Ljc5MjQ4IDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTQuMjA3NiAyQzE3Ljk0NTYgMiAxOC41NTEgNS4xNjEyMiAxOC41NjQyIDYuNzUzNTdDMTguNTY0MiA4Ljk0OTI5IDIwLjEwNDkgMTAuMzI5MyAyMS41NTQ3IDExLjI1MDVDMjIuMTYwNCAxMS42MzUzIDIyLjE1MjQgMTIuMzcyMSAyMS41MDQ5IDEyLjcwODlDMjAuMDU0NiAxMy42Mjk0IDE4LjUxMzQgMTUuMDA4NSAxOC41MTM0IDE3LjIwMjdDMTguNTAwMiAxOC43OTQgMTcuODk0NSAyMiAxNC4xNTUzIDIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
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
