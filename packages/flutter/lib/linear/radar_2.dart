// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `radar-2` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDExLjk5OTZMNS4wMDE5NyA2LjMzNTQ2QzQuNTcyODUgNS45ODgxMyAzLjkzODY5IDYuMDUxODIgMy42MzU5OSA2LjUxMzVDMy4wNjY3OCA3LjM4MTYzIDIuNjI0MTMgOC4zNTM4OSAyLjM0MDc4IDkuNDExMzZDMC45MTEzNjQgMTQuNzQ2IDQuMDc3MTkgMjAuMjI5NCA5LjQxMTg1IDIxLjY1ODhDMTQuNzQ2NSAyMy4wODgyIDIwLjIyOTkgMTkuOTIyNCAyMS42NTkzIDE0LjU4NzdDMjMuMDg4NyA5LjI1MzA4IDE5LjkyMjkgMy43Njk3MSAxNC41ODgyIDIuMzQwMjlDMTEuOTU1NiAxLjYzNDg5IDkuMjg2ODQgMi4wNDg1NyA3LjA4NjkgMy4yODk3Mk03LjM2OTE4IDguMTg0MTZDNi41MTM4MyA5LjIyMTE1IDYuMDAwMDQgMTAuNTUwMyA2LjAwMDA0IDExLjk5OTZDNi4wMDAwNCAxNS4zMTMzIDguNjg2MzMgMTcuOTk5NiAxMiAxNy45OTk2QzE1LjMxMzcgMTcuOTk5NiAxOCAxNS4zMTMzIDE4IDExLjk5OTZDMTggOC42ODU4NCAxNS4zMTM3IDUuOTk5NTUgMTIgNS45OTk1NUMxMS4zMzcgNS45OTk1NSAxMC42OTkxIDYuMTA3MDkgMTAuMTAyOSA2LjMwNTY4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Radar2LinearIcon extends StatelessWidget {
  /// Creates the `radar-2` icon in the linear style.
  const Radar2LinearIcon({
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
    name: 'radar-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 11.9996L5.00197 6.33546C4.57285 5.98813 3.93869 6.05182 3.63599 6.5135C3.06678 7.38163 2.62413 8.35389 2.34078 9.41136C0.911364 14.746 4.07719 20.2294 9.41185 21.6588C14.7465 23.0882 20.2299 19.9224 21.6593 14.5877C23.0887 9.25308 19.9229 3.76971 14.5882 2.34029C11.9556 1.63489 9.28684 2.04857 7.0869 3.28972M7.36918 8.18416C6.51383 9.22115 6.00004 10.5503 6.00004 11.9996C6.00004 15.3133 8.68633 17.9996 12 17.9996C15.3137 17.9996 18 15.3133 18 11.9996C18 8.68584 15.3137 5.99955 12 5.99955C11.337 5.99955 10.6991 6.10709 10.1029 6.30568" stroke="currentColor" stroke-linecap="round"/>''',
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
