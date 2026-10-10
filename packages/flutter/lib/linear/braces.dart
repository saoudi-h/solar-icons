// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `braces` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTkuNzkyMzcgMkM2LjA1NDQgMiA1LjQ0ODk5IDUuMTYxMjIgNS40MzU4MiA2Ljc1MzU3QzUuNDM1ODIgOC45NDkyOSAzLjg5NTEgMTAuMzI5MyAyLjQ0NTI1IDExLjI1MDVDMS44Mzk1NiAxMS42MzUzIDEuODQ3NjUgMTIuMzcyMSAyLjQ5NTEzIDEyLjcwODlDMy45NDU0MyAxMy42Mjk0IDUuNDg2NjQgMTUuMDA4NSA1LjQ4NjY0IDE3LjIwMjdDNS40OTk4MSAxOC43OTQgNi4xMDU1MSAyMiA5Ljg0NDY1IDIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTE0LjIwNzYgMkMxNy45NDU2IDIgMTguNTUxIDUuMTYxMjIgMTguNTY0MiA2Ljc1MzU3QzE4LjU2NDIgOC45NDkyOSAyMC4xMDQ5IDEwLjMyOTMgMjEuNTU0NyAxMS4yNTA1QzIyLjE2MDQgMTEuNjM1MyAyMi4xNTI0IDEyLjM3MjEgMjEuNTA0OSAxMi43MDg5QzIwLjA1NDYgMTMuNjI5NCAxOC41MTM0IDE1LjAwODUgMTguNTEzNCAxNy4yMDI3QzE4LjUwMDIgMTguNzk0IDE3Ljg5NDUgMjIgMTQuMTU1MyAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class BracesLinearIcon extends StatelessWidget {
  /// Creates the `braces` icon in the linear style.
  const BracesLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9.79237 2C6.0544 2 5.44899 5.16122 5.43582 6.75357C5.43582 8.94929 3.8951 10.3293 2.44525 11.2505C1.83956 11.6353 1.84765 12.3721 2.49513 12.7089C3.94543 13.6294 5.48664 15.0085 5.48664 17.2027C5.49981 18.794 6.10551 22 9.84465 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
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
