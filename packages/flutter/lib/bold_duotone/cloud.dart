// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cloud` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTIyIDE0LjM1MjlDMjIgMTcuNDcxNyAxOS40NDE2IDIwIDE2LjI4NTcgMjBIMTAuNDk5NUM5LjU1NzkyIDE4Ljc0NjUgOSAxNy4xODg0IDkgMTUuNUM5IDExLjM1NzkgMTIuMzU3OSA4IDE2LjUgOEMxNy4wMDkgOCAxNy41MDYyIDguMDUwNzEgMTcuOTg2OCA4LjE0NzM2QzE4LjA2NDkgOC40Mjg0MSAxOC4xMjE2IDguNzE4MjIgMTguMTU1MSA5LjAxNDk4QzIwLjM5MyA5Ljc4MDI0IDIyIDExLjg4MTEgMjIgMTQuMzUyOVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyLjQ3NjIgNEM5LjMyMDI4IDQgNi43NjE5IDYuNTI4MjcgNi43NjE5IDkuNjQ3MDZDNi43NjE5IDEwLjMzNjkgNi44ODcwNiAxMC45OTc4IDcuMTE2MTYgMTEuNjA4OUM2Ljg0NzUgMTEuNTU2NyA2LjU2OTgzIDExLjUyOTQgNi4yODU3MSAxMS41Mjk0QzMuOTE4NzggMTEuNTI5NCAyIDEzLjQyNTYgMiAxNS43NjQ3QzIgMTguMTAzOCAzLjkxODc4IDIwIDYuMjg1NzEgMjBIMTAuNDk5NUM5LjU1NzkyIDE4Ljc0NjUgOSAxNy4xODg0IDkgMTUuNUM5IDExLjM1NzkgMTIuMzU3OSA4IDE2LjUgOEMxNy4wMDkgOCAxNy41MDYyIDguMDUwNzEgMTcuOTg2OCA4LjE0NzM2QzE3Ljk3MjEgOC4wOTQ0MSAxNy45NTY2IDguMDQxNzggMTcuOTQwMyA3Ljk4OTQ4QzE3LjIyMzcgNS42Nzk1NiAxNS4wNDg0IDQgMTIuNDc2MiA0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class CloudBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `cloud` icon in the boldDuotone style.
  const CloudBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.4762 4C9.32028 4 6.7619 6.52827 6.7619 9.64706C6.7619 10.3369 6.88706 10.9978 7.11616 11.6089C6.8475 11.5567 6.56983 11.5294 6.28571 11.5294C3.91878 11.5294 2 13.4256 2 15.7647C2 18.1038 3.91878 20 6.28571 20H10.4995C9.55792 18.7465 9 17.1884 9 15.5C9 11.3579 12.3579 8 16.5 8C17.009 8 17.5062 8.05071 17.9868 8.14736C17.9721 8.09441 17.9566 8.04178 17.9403 7.98948C17.2237 5.67956 15.0484 4 12.4762 4Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M22 14.3529C22 17.4717 19.4416 20 16.2857 20H10.4995C9.55792 18.7465 9 17.1884 9 15.5C9 11.3579 12.3579 8 16.5 8C17.009 8 17.5062 8.05071 17.9868 8.14736C18.0649 8.42841 18.1216 8.71822 18.1551 9.01498C20.393 9.78024 22 11.8811 22 14.3529Z" fill="currentColor"/>''',
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
