// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-heart` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTAiIGN5PSI2IiByPSI0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTggMTcuNUMxOCAxOS45ODUzIDE4IDIyIDEwIDIyQzIgMjIgMiAxOS45ODUzIDIgMTcuNUMyIDE1LjAxNDcgNS41ODE3MiAxMyAxMCAxM0MxNC40MTgzIDEzIDE4IDE1LjAxNDcgMTggMTcuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTYgOS42OTk3M0MxNiAxMS4xMTIxIDE3LjIwNTggMTEuODY0OCAxOC4wODg1IDEyLjUzODVDMTguNCAxMi43NzYyIDE4LjcgMTMgMTkgMTNDMTkuMyAxMyAxOS42IDEyLjc3NjIgMTkuOTExNSAxMi41Mzg1QzIwLjc5NDIgMTEuODY0OCAyMiAxMS4xMTIxIDIyIDkuNjk5NzNDMjIgOC4yODczMiAyMC4zNSA3LjI4NTY3IDE5IDguNjQzNTRDMTcuNjUgNy4yODU2NyAxNiA4LjI4NzMyIDE2IDkuNjk5NzNaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class UserHeartLineDuotoneIcon extends StatelessWidget {
  /// Creates the `user-heart` icon in the lineDuotone style.
  const UserHeartLineDuotoneIcon({
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
    name: 'user-heart',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="10" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 9.69973C16 11.1121 17.2058 11.8648 18.0885 12.5385C18.4 12.7762 18.7 13 19 13C19.3 13 19.6 12.7762 19.9115 12.5385C20.7942 11.8648 22 11.1121 22 9.69973C22 8.28732 20.35 7.28567 19 8.64354C17.65 7.28567 16 8.28732 16 9.69973Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M18 17.5C18 19.9853 18 22 10 22C2 22 2 19.9853 2 17.5C2 15.0147 5.58172 13 10 13C14.4183 13 18 15.0147 18 17.5Z" stroke="currentColor" stroke-linecap="round"/>''',
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
