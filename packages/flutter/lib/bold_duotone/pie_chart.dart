// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `pie-chart` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTkuMTYzMTIgMy43NzUyOEM5LjI4NzI0IDQuMTcwNDYgOS4wNjc1IDQuNTkxNDQgOC42NzIzMiA0LjcxNTU1QzUuMjM4OTkgNS43OTM5IDIuNzUgOS4wMDE4NSAyLjc1IDEyLjc4OTJDMi43NSAxNy40NjIgNi41MzgwNSAyMS4yNSAxMS4yMTA4IDIxLjI1QzE0Ljk5ODIgMjEuMjUgMTguMjA2MSAxOC43NjEgMTkuMjg0NSAxNS4zMjc3QzE5LjQwODYgMTQuOTMyNSAxOS44Mjk2IDE0LjcxMjggMjAuMjI0NyAxNC44MzY5QzIwLjYxOTkgMTQuOTYxIDIwLjgzOTcgMTUuMzgyIDIwLjcxNTUgMTUuNzc3MkMxOS40NDY1IDE5LjgxNzcgMTUuNjcyMSAyMi43NSAxMS4yMTA4IDIyLjc1QzUuNzA5NjIgMjIuNzUgMS4yNSAxOC4yOTA0IDEuMjUgMTIuNzg5MkMxLjI1IDguMzI3OTQgNC4xODIzMSA0LjU1MzU0IDguMjIyODUgMy4yODQ0OEM4LjYxODAzIDMuMTYwMzYgOS4wMzkgMy4zODAxIDkuMTYzMTIgMy43NzUyOFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIxLjkxMzEgOS45NDcyN0MyMC44NTE1IDYuMTQ0MzggMTcuODU1NiAzLjE0ODQ1IDE0LjA1MjcgMi4wODY5QzEyLjQwOTEgMS42MjgxIDExIDMuMDU0MTkgMTEgNC43NjA2MlYxMS40NTUxQzExIDEyLjMwODMgMTEuNjkxNyAxMyAxMi41NDQ5IDEzSDE5LjIzOTRDMjAuOTQ1OCAxMyAyMi4zNzE5IDExLjU5MDkgMjEuOTEzMSA5Ljk0NzI3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class PieChartBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `pie-chart` icon in the boldDuotone style.
  const PieChartBoldDuotoneIcon({
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
    name: 'pie-chart',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.9131 9.94727C20.8515 6.14438 17.8556 3.14845 14.0527 2.0869C12.4091 1.6281 11 3.05419 11 4.76062V11.4551C11 12.3083 11.6917 13 12.5449 13H19.2394C20.9458 13 22.3719 11.5909 21.9131 9.94727Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M9.16312 3.77528C9.28724 4.17046 9.0675 4.59144 8.67232 4.71555C5.23899 5.7939 2.75 9.00185 2.75 12.7892C2.75 17.462 6.53805 21.25 11.2108 21.25C14.9982 21.25 18.2061 18.761 19.2845 15.3277C19.4086 14.9325 19.8296 14.7128 20.2247 14.8369C20.6199 14.961 20.8397 15.382 20.7155 15.7772C19.4465 19.8177 15.6721 22.75 11.2108 22.75C5.70962 22.75 1.25 18.2904 1.25 12.7892C1.25 8.32794 4.18231 4.55354 8.22285 3.28448C8.61803 3.16036 9.039 3.3801 9.16312 3.77528Z" fill="currentColor"/>''',
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
