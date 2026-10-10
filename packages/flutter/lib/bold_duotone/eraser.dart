// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `eraser` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGcgb3BhY2l0eT0iMC41Ij4KPHBhdGggZD0iTTIxIDE5LjVDMjEuNDE0MiAxOS41IDIxLjc1IDE5LjgzNTggMjEuNzUgMjAuMjVDMjEuNzUgMjAuNjY0MiAyMS40MTQyIDIxIDIxIDIxSDkuMDYyNUM5Ljg1ODg4IDIwLjk5MzggMTAuNTM4NyAyMC40OTM3IDExLjU3MzIgMTkuNUgyMVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE0Ljk1MjEgM0MxNS45ODk4IDMgMTYuODI1MSAzLjgzNDg0IDE4LjQ5NTEgNS41MDQ4OEMyMC4xNjUyIDcuMTc0OTIgMjEgOC4wMTAyMiAyMSA5LjA0Nzg1QzIwLjk5OTkgMTAuMDg1NCAyMC4xNjUxIDEwLjkyMDggMTguNDk1MSAxMi41OTA4TDEzLjU4NSAxNy41TDYuNSAxMC40MTVMMTEuNDA5MiA1LjUwNDg4QzEzLjA3OTIgMy44MzQ4OSAxMy45MTQ2IDMuMDAwMDUgMTQuOTUyMSAzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L2c+CjxwYXRoIGQ9Ik0xMy41ODU0IDE3LjUwMDFMNi41IDEwLjQxNDdMNS41MDUwNiAxMS40MDk2QzMuODM1MDIgMTMuMDc5NiAzIDEzLjkxNDcgMyAxNC45NTIzQzMgMTUuOTg5OSAzLjgzNTAyIDE2LjgyNSA1LjUwNTA2IDE4LjQ5NUM3LjE3NTEgMjAuMTY1IDguMDEwMTMgMjEuMDAwMSA5LjA0Nzc2IDIxLjAwMDFDMTAuMDg1NCAyMS4wMDAxIDEwLjkyMDQgMjAuMTY1IDEyLjU5MDQgMTguNDk1TDEzLjU4NTQgMTcuNTAwMVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class EraserBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `eraser` icon in the boldDuotone style.
  const EraserBoldDuotoneIcon({
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
    name: 'eraser',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.5854 17.5001L6.5 10.4147L5.50506 11.4096C3.83502 13.0796 3 13.9147 3 14.9523C3 15.9899 3.83502 16.825 5.50506 18.495C7.1751 20.165 8.01013 21.0001 9.04776 21.0001C10.0854 21.0001 10.9204 20.165 12.5904 18.495L13.5854 17.5001Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M21 19.5C21.4142 19.5 21.75 19.8358 21.75 20.25C21.75 20.6642 21.4142 21 21 21H9.0625C9.85888 20.9938 10.5387 20.4937 11.5732 19.5H21Z" fill="currentColor"/>
<path d="M14.9521 3C15.9898 3 16.8251 3.83484 18.4951 5.50488C20.1652 7.17492 21 8.01022 21 9.04785C20.9999 10.0854 20.1651 10.9208 18.4951 12.5908L13.585 17.5L6.5 10.415L11.4092 5.50488C13.0792 3.83489 13.9146 3.00005 14.9521 3Z" fill="currentColor"/>
</g>''',
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
