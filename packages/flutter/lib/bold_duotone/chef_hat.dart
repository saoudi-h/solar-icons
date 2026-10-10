// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chef-hat` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4Ljk5ODYgMThINS4wMDE5NUM1LjAxMjE0IDE5LjM5NjkgNS4wODM2OSAyMC45MTE5IDUuNTg2MDUgMjEuNDE0MkM2LjE3MTgzIDIyIDcuMTE0NjQgMjIgOS4wMDAyNiAyMkgxNS4wMDAzQzE2Ljg4NTkgMjIgMTcuODI4NyAyMiAxOC40MTQ1IDIxLjQxNDJDMTguOTE2OCAyMC45MTE5IDE4Ljk4ODQgMTkuMzk2OSAxOC45OTg2IDE4WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik03IDVDNC4yMzg1OCA1IDIgNy4yMzg1OCAyIDEwQzIgMTIuMDUwMyAzLjIzNDEgMTMuODEyNCA1IDE0LjU4NFYxOEgxOUwxOSAxNC41ODRDMjAuNzY1OSAxMy44MTI0IDIyIDEyLjA1MDMgMjIgMTBDMjIgNy4yMzg1OCAxOS43NjE0IDUgMTcgNUMxNi43NDk1IDUgMTYuNTAzMyA1LjAxODQyIDE2LjI2MjYgNS4wNTM5OUMxNS42NjA0IDMuMjc4MDYgMTMuOTc5NCAyIDEyIDJDMTAuMDIwNiAyIDguMzM5NjEgMy4yNzgwNiA3LjczNzM2IDUuMDUzOTlDNy40OTY3MyA1LjAxODQyIDcuMjUwNTIgNSA3IDVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ChefHatBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chef-hat` icon in the boldDuotone style.
  const ChefHatBoldDuotoneIcon({
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
    name: 'chef-hat',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M18.9986 18H5.00195C5.01214 19.3969 5.08369 20.9119 5.58605 21.4142C6.17183 22 7.11464 22 9.00026 22H15.0003C16.8859 22 17.8287 22 18.4145 21.4142C18.9168 20.9119 18.9884 19.3969 18.9986 18Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M7 5C4.23858 5 2 7.23858 2 10C2 12.0503 3.2341 13.8124 5 14.584V18H19L19 14.584C20.7659 13.8124 22 12.0503 22 10C22 7.23858 19.7614 5 17 5C16.7495 5 16.5033 5.01842 16.2626 5.05399C15.6604 3.27806 13.9794 2 12 2C10.0206 2 8.33961 3.27806 7.73736 5.05399C7.49673 5.01842 7.25052 5 7 5Z" fill="currentColor"/>''',
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
