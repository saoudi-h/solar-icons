// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTExLjYxMTUgMjJIMTIuMzg4NUMxNy4xNDQ1IDIyIDIxIDE4LjA1NjkgMjEgMTMuMTkyOFYxMi45MjgxQzIxIDguMzE2NTEgMTguMjcxNSA0LjE2MzQ3IDE0LjA5NjcgMi40MjA3N0MxMi43NTI3IDEuODU5NzQgMTEuMjQ3MyAxLjg1OTc0IDkuOTAzMjkgMi40MjA3N0M1LjcyODU0IDQuMTYzNDcgMyA4LjMxNjUxIDMgMTIuOTI4MVYxMy4xOTI4QzMgMTguMDU2OSA2Ljg1NTQ5IDIyIDExLjYxMTUgMjJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMi4wNjYzIDUuOTYxMjZDMTIuMjQwMSA2LjMzNzIyIDEyLjA3NjMgNi43ODI5MyAxMS43MDAzIDYuOTU2NzlDMTAuMTU0OCA3LjY3MTUgOC45MDcwMSA5LjEyNTE0IDguMzI5NSAxMC45NDk3QzguMjA0NTEgMTEuMzQ0NyA3Ljc4MzA1IDExLjU2MzUgNy4zODgxNCAxMS40Mzg1QzYuOTkzMjQgMTEuMzEzNSA2Ljc3NDQzIDEwLjg5MiA2Ljg5OTQyIDEwLjQ5NzFDNy41OTE0MiA4LjMxMDc3IDkuMTA1ODIgNi41MDM5OSAxMS4wNzA3IDUuNTk1MzNDMTEuNDQ2NyA1LjQyMTQ2IDExLjg5MjQgNS41ODUzIDEyLjA2NjMgNS45NjEyNloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class WaterdropBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `waterdrop` icon in the boldDuotone style.
  const WaterdropBoldDuotoneIcon({
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
    name: 'waterdrop',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.0663 5.96126C12.2401 6.33722 12.0763 6.78293 11.7003 6.95679C10.1548 7.6715 8.90701 9.12514 8.3295 10.9497C8.20451 11.3447 7.78305 11.5635 7.38814 11.4385C6.99324 11.3135 6.77443 10.892 6.89942 10.4971C7.59142 8.31077 9.10582 6.50399 11.0707 5.59533C11.4467 5.42146 11.8924 5.5853 12.0663 5.96126Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.6115 22H12.3885C17.1445 22 21 18.0569 21 13.1928V12.9281C21 8.31651 18.2715 4.16347 14.0967 2.42077C12.7527 1.85974 11.2473 1.85974 9.90329 2.42077C5.72854 4.16347 3 8.31651 3 12.9281V13.1928C3 18.0569 6.85549 22 11.6115 22Z" fill="currentColor"/>''',
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
