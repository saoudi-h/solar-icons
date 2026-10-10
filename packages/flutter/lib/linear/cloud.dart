// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cloud` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0LjM4MSA5LjAyNzIxQzE0Ljk3NjcgOC44MTkxMSAxNS42MTc4IDguNzA1ODggMTYuMjg1NyA4LjcwNTg4QzE2Ljk0MDQgOC43MDU4OCAxNy41NjkzIDguODE0NjggMTguMTU1MSA5LjAxNDk4TTguNjY2NjcgMTIuMjQyNkM4LjIwNTI4IDExLjkzNzQgNy42ODA1OSAxMS43MTg0IDcuMTE2MTYgMTEuNjA4OUM2Ljg0NzUgMTEuNTU2NyA2LjU2OTgzIDExLjUyOTQgNi4yODU3MSAxMS41Mjk0QzMuOTE4NzggMTEuNTI5NCAyIDEzLjQyNTYgMiAxNS43NjQ3QzIgMTguMTAzOCAzLjkxODc4IDIwIDYuMjg1NzEgMjBIMTYuMjg1N0MxOS40NDE2IDIwIDIyIDE3LjQ3MTcgMjIgMTQuMzUyOUMyMiAxMS44ODExIDIwLjM5MyA5Ljc4MDI0IDE4LjE1NTEgOS4wMTQ5OE03LjExNjE2IDExLjYwODlDNi44ODcwNiAxMC45OTc4IDYuNzYxOSAxMC4zMzY5IDYuNzYxOSA5LjY0NzA2QzYuNzYxOSA2LjUyODI3IDkuMzIwMjggNCAxMi40NzYyIDRDMTUuNDE1OSA0IDE3LjgzNzEgNi4xOTM3MSAxOC4xNTUxIDkuMDE0OTgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class CloudLinearIcon extends StatelessWidget {
  /// Creates the `cloud` icon in the linear style.
  const CloudLinearIcon({
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
    name: 'cloud',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M14.381 9.02721C14.9767 8.81911 15.6178 8.70588 16.2857 8.70588C16.9404 8.70588 17.5693 8.81468 18.1551 9.01498M8.66667 12.2426C8.20528 11.9374 7.68059 11.7184 7.11616 11.6089C6.8475 11.5567 6.56983 11.5294 6.28571 11.5294C3.91878 11.5294 2 13.4256 2 15.7647C2 18.1038 3.91878 20 6.28571 20H16.2857C19.4416 20 22 17.4717 22 14.3529C22 11.8811 20.393 9.78024 18.1551 9.01498M7.11616 11.6089C6.88706 10.9978 6.7619 10.3369 6.7619 9.64706C6.7619 6.52827 9.32028 4 12.4762 4C15.4159 4 17.8371 6.19371 18.1551 9.01498" stroke="currentColor" stroke-linecap="round"/>''',
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
