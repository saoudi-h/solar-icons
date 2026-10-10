// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tag-horizontal` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTkuNzIxMDQgMjBIMTIuMzU4QzE0LjU4NTQgMjAgMTUuNjk5MiAyMCAxNi42Mjg5IDE5LjQ2NzJDMTcuNTU4NiAxOC45MzQ1IDE4LjE0ODggMTcuOTU4IDE5LjMyOTQgMTYuMDA1TDIwLjAxMDIgMTQuODc4N0MyMS4wMDM0IDEzLjIzNTcgMjEuNSAxMi40MTQyIDIxLjUgMTEuNUMyMS41IDEwLjU4NTggMjEuMDAzNCA5Ljc2NDMxIDIwLjAxMDIgOC4xMjEyNkwxOS4zMjk0IDYuOTk1MDFDMTguMTQ4OCA1LjA0MjAzIDE3LjU1ODYgNC4wNjU1NCAxNi42Mjg5IDMuNTMyNzdDMTUuNjk5MiAzIDE0LjU4NTQgMyAxMi4zNTggM0g5LjcyMTA0QzUuODQ1NjEgMyAzLjkwNzg5IDMgMi43MDM5NCA0LjI0NDhDMS41IDUuNDg5NTkgMS41IDcuNDkzMDYgMS41IDExLjVDMS41IDE1LjUwNjkgMS41IDE3LjUxMDQgMi43MDM5NCAxOC43NTUyQzMuOTA3ODkgMjAgNS44NDU2IDIwIDkuNzIxMDQgMjBaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNi41IDYuOTk1MTJWMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class TagHorizontalLineDuotoneIcon extends StatelessWidget {
  /// Creates the `tag-horizontal` icon in the lineDuotone style.
  const TagHorizontalLineDuotoneIcon({
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
    name: 'tag-horizontal',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9.72104 20H12.358C14.5854 20 15.6992 20 16.6289 19.4672C17.5586 18.9345 18.1488 17.958 19.3294 16.005L20.0102 14.8787C21.0034 13.2357 21.5 12.4142 21.5 11.5C21.5 10.5858 21.0034 9.76431 20.0102 8.12126L19.3294 6.99501C18.1488 5.04203 17.5586 4.06554 16.6289 3.53277C15.6992 3 14.5854 3 12.358 3H9.72104C5.84561 3 3.90789 3 2.70394 4.2448C1.5 5.48959 1.5 7.49306 1.5 11.5C1.5 15.5069 1.5 17.5104 2.70394 18.7552C3.90789 20 5.8456 20 9.72104 20Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M6.5 6.99512V16" stroke="currentColor" stroke-linecap="round"/>''',
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
